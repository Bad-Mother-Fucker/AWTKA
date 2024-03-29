import 'dart:io';

import 'package:awtka/common/back_gesture_width_theme.dart';
import 'package:awtka/globals.dart';
import 'package:awtka/main_controller/local_config_controller.dart';
import 'package:awtka/router/router.dart';
import 'package:awtka/utils.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/welcome/pages/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  const pbProtocol =
      bool.fromEnvironment('SSL', defaultValue: false) ? 'https' : 'http';
  const pbHost = String.fromEnvironment(
    'PB_HOST',

    /// --- Local config ---
    // defaultValue: 'localhost',

    /// --- Staging config ---
    defaultValue: 'ec2-13-39-48-184.eu-west-3.compute.amazonaws.com',
  );
  const pbPort = String.fromEnvironment(
    'PB_PORT',

    /// --- Local config ---
    // defaultValue: ':8090',

    /// --- Staging config ---
    defaultValue: '',
  );
  final pocketBase = PocketBase('$pbProtocol://$pbHost$pbPort');

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => ProviderScope(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(sharedPreferences),
          pocketBaseProvider.overrideWithValue(pocketBase),
        ],
        observers: const [
          StateLogger(),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    if (Platform.isAndroid || Platform.isIOS) {
      FlutterStatusbarcolor.setStatusBarColor(const Color(0xff1c1c23));
      FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    }

    final firstTimeAppValue = ref.watch(getLocalConfigProvider('first_time'));
    final router = ref.watch(routerProvider);

    return BackGestureWidthTheme(
      backGestureWidth: BackGestureWidth.fraction(1),
      child: MaterialApp.router(
        title: 'AWTKA',
        scaffoldMessengerKey: snackbarKey,
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        themeMode: ThemeMode.dark,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark().copyWith(
          snackBarTheme: ThemeData.light().snackBarTheme.copyWith(
                backgroundColor: const Color(0xff333333),
                contentTextStyle: const TextStyle(color: Colors.white),
              ),
        ),
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
        builder: (context, child) {
          final childx = firstTimeAppValue.when(
            data: (data) {
              if (data == 'false') {
                return GestureDetector(
                  onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                  child: child ?? const SizedBox(),
                );
              }
              return const WelcomePage();
            },
            error: ((error, stackTrace) => Text('$error, $stackTrace')),
            loading: () => const SizedBox(),
          );
          return DevicePreview.appBuilder(context, childx);
        },
      ),
    );
  }
}
