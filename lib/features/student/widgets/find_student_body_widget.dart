import 'dart:ui';

import 'package:awtka/common/bounceable.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FindStudentBodyWidget extends ConsumerWidget {
  const FindStudentBodyWidget({super.key});

  _onClickBack(BuildContext context) {
    context.pop();
  }

  _onClickStudent(BuildContext context, String id) {
    context.push(StudentInfoRoute.path, extra: {'id': id});
  }

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // search62E (3:221)
        padding: EdgeInsets.fromLTRB(19 * fem, 32 * fem, 23 * fem, 0 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff1c1c23),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Bounceable(
              onTap: () {
                _onClickBack(context);
              },
              child: Container(
                // backnavsYup (14:518)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 26 * fem),
                width: 32 * fem,
                height: 32 * fem,
                child: Image.asset(
                  'assets/images/back-navs-Lyp.png',
                  width: 32 * fem,
                  height: 32 * fem,
                ),
              ),
            ),
            Container(
              // cercaallievodgN (3:222)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 50 * fem),
              constraints: const BoxConstraints(
                  // maxWidth: 123 * fem,
                  ),
              child: RichText(
                text: TextSpan(
                  style: SafeGoogleFont(
                    'DM Sans',
                    fontSize: 40 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 0.9469999313 * ffem / fem,
                    color: const Color(0xffffffff),
                  ),
                  children: [
                    const TextSpan(
                      text: 'Cerca\n',
                    ),
                    TextSpan(
                      text: 'allievo',
                      style: SafeGoogleFont(
                        'DM Sans',
                        fontSize: 40 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 0.9469999313 * ffem / fem,
                        color: const Color(0xffef243d),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // searchSnE (3:273)
              margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 45 * fem),
              padding: EdgeInsets.fromLTRB(
                  17.57 * fem, 8 * fem, 5.86 * fem, 8 * fem),
              decoration: BoxDecoration(
                color: const Color(0xff3d3c48),
                borderRadius: BorderRadius.circular(10 * fem),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x2d99aac5),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 31 * fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // iconsearchUU2 (3:275)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 16 * fem, 0 * fem),
                    width: 23.43 * fem,
                    height: 24 * fem,
                    child: Image.asset(
                      'assets/images/icon-search-Ad8.png',
                      width: 23.43 * fem,
                      height: 24 * fem,
                    ),
                  ),
                  const Expanded(
                    child: Text(''),
                  ),
                  SizedBox(
                    // removefaS (5:413)
                    width: 28.11 * fem,
                    height: 24 * fem,
                    child: Image.asset(
                      'assets/images/remove.png',
                      width: 28.11 * fem,
                      height: 24 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group34NDx (7:580)
              margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 0 * fem),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Bounceable(
                    onTap: () {
                      _onClickStudent(context, 'id');
                    },
                    child: Text(
                      // mariobasic3zJ (7:581)
                      'Mario - Basic',
                      style: SafeGoogleFont(
                        'DM Sans',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3025 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30 * fem,
                  ),
                  Bounceable(
                    onTap: () {
                      _onClickStudent(context, 'id');
                    },
                    child: Text(
                      // marianoleaders9XY (7:582)
                      'Mariano - Leaders',
                      style: SafeGoogleFont(
                        'DM Sans',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3025 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30 * fem,
                  ),
                  Text(
                    // mariorossibasicT2S (7:583)
                    'Mario Rossi - Basic',
                    style: SafeGoogleFont(
                      'DM Sans',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.3025 * ffem / fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
