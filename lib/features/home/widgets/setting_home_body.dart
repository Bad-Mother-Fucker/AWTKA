import 'package:awtka/common/bounceable.dart';
import 'package:awtka/main_controller/local_config_controller.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

class SettingHomeBody extends ConsumerWidget {
  const SettingHomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    onClickLogout() async {
      final prefs = ref.watch(sharedPreferencesProvider);
      await prefs.clear();
      ref.read(authProvider.notifier).logout();
    }

    return Center(
      child: Bounceable(
        onTap: () {
          onClickLogout();
        },
        child: Container(
          // button7zi (1:48)
          margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 1 * fem, 80 * fem),
          width: 100 * fem,
          height: 48 * fem,
          decoration: BoxDecoration(
            color: const Color(0xff4E4E60),
            borderRadius: BorderRadius.circular(999 * fem),
            border: const Border(),
          ),
          child: Center(
            child: Text(
              'Sign Out',
              style: SafeGoogleFont(
                'Inter',
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.4285714286 * ffem / fem,
                color: const Color(0xffffffff),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
