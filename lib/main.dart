import 'package:awtka/main_controller/local_config_controller.dart';
import 'package:awtka/router/router.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  const pbProtocol =
      bool.fromEnvironment('SSL', defaultValue: false) ? 'https' : 'http';
  const pbHost = String.fromEnvironment('PB_HOST', defaultValue: 'localhost');
  const pbPort = String.fromEnvironment('PB_PORT', defaultValue: '8090');
  final pocketBase = PocketBase('$pbProtocol://$pbHost:$pbPort');

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        pocketBaseProvider.overrideWithValue(pocketBase),
      ],
      observers: const [
        StateLogger(),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    final router = ref.watch(routerProvider);
    final firstTimeAppValue = ref.watch(getLocalConfigProvider('first_time'));
    FlutterStatusbarcolor.setStatusBarColor(const Color(0xff1c1c23));
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);

    return firstTimeAppValue.when(
      data: (data) => MaterialApp.router(
        title: 'AWTKA',
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        routerConfig: router,
      ),
      error: ((error, stackTrace) => Text('$error, $stackTrace')),
      loading: () => const SizedBox(),
    );
  }
}
