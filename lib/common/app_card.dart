import 'package:awtka/common/next_icon.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppCardSettingType {
  final String title;
  final String data;
  final bool showAction;
  final Widget? customAction;

  AppCardSettingType({
    required this.title,
    required this.data,
    this.showAction = false,
    this.customAction,
  });
}

class AppCardSetting extends ConsumerWidget {
  const AppCardSetting({
    super.key,
    required this.actions,
  });

  final List<AppCardSettingType> actions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      padding: EdgeInsets.fromLTRB(
        20 * fem,
        8 * fem,
        20 * fem,
        8 * fem,
      ),
      decoration: BoxDecoration(
        color: const Color(0x334e4e61),
        borderRadius: BorderRadius.circular(16 * fem),
        border: Border.all(color: const Color(0xff353542)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...actions.map((actionData) {
            return Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 12 * fem, 0 * fem, 12 * fem),
              height: 20 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    actionData.title,
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.4285714286 * ffem / fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      // placeholdernameZra (1:2413)
                      actionData.data,
                      textAlign: TextAlign.right,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.3333333333 * ffem / fem,
                        letterSpacing: 0.200000003 * fem,
                        color: const Color(0xffa2a2b5),
                      ),
                    ),
                  ),
                  if (actionData.showAction) SizedBox(width: 8 * fem),
                  if (actionData.showAction)
                    actionData.customAction ?? const NextIcon(),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
