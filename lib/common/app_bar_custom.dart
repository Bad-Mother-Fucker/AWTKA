import 'package:awtka/common/bounceable.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppBarCustom extends ConsumerWidget {
  const AppBarCustom({
    super.key,
    required this.onClickBack,
    required this.title,
  });

  final Function? onClickBack;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      // autogrouppuduJnv (GFA74bY1Fw7cdheuJwpuDU)
      margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 0 * fem),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Bounceable(
            onTap: () {
              onClickBack?.call();
            },
            child: Container(
              // backnavspFU (1:2432)
              margin: EdgeInsets.fromLTRB(
                0 * fem,
                0 * fem,
                0 * fem,
                0 * fem,
              ),
              width: 32 * fem,
              height: 32 * fem,
              child: Image.asset(
                'assets/images/back-navs-HMU.png',
                width: 32 * fem,
                height: 32 * fem,
              ),
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 16 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.5 * ffem / fem,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 32 * fem,
            height: 32 * fem,
          )
        ],
      ),
    );
  }
}
