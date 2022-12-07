import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/check_box.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/router/routes.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:awtka/utils.dart';
import 'package:go_router/go_router.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  _onClickLogin(BuildContext context) {
    // TODO: logic
    context.push(HomeRoute.path);
  }

  _onClickForgot(BuildContext context) {
    // TODO: logic
    context.push(ResetPasswordRoute.path);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // loginqPg (1:28)
        padding: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 29 * fem, 53 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff1c1c23),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              // effettuailloginWEv (3:471)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 116 * fem, 40 * fem),
              constraints: BoxConstraints(
                maxWidth: 200 * fem,
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
                      text: 'Effettua il\n',
                    ),
                    TextSpan(
                      text: 'Login',
                      style: SafeGoogleFont(
                        'DM Sans',
                        fontSize: 40 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 0.9469999313 * ffem / fem,
                        color: const Color(0xffef233c),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // inputlogin89p (1:42)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // login2W6 (1:43)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                    child: Text(
                      'Login',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.3333333333 * ffem / fem,
                        letterSpacing: 0.200000003 * fem,
                        color: const Color(0xff666680),
                      ),
                    ),
                  ),
                  const AppTextField(id: 'login_username'),
                ],
              ),
            ),
            Container(
              // inputpasswordz5Y (1:45)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 24 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // passwordVnz (1:46)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                    child: Text(
                      'Password',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.3333333333 * ffem / fem,
                        letterSpacing: 0.200000003 * fem,
                        color: const Color(0xff666680),
                      ),
                    ),
                  ),
                  const AppTextField(
                    id: 'login_password',
                    isPassword: true,
                  )
                ],
              ),
            ),
            Container(
              // autogroupxyewEtz (GF8rfqprDdyZ7x546AXYeW)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 24 * fem),
              width: double.infinity,
              height: 24 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autolayouthorizontalLBL (1:39)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 65.5 * fem, 0 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AppCheckBox(id: 'login_remember_me'),
                        Text(
                          // rememberme75c (1:41)
                          'Remember me',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.4285714286 * ffem / fem,
                            letterSpacing: 0.200000003 * fem,
                            color: const Color(0xff666680),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Bounceable(
                    onTap: () {
                      _onClickForgot(context);
                    },
                    child: Text(
                      // forgotpassowordDPY (1:38)
                      'Forgot passoword',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.4285714286 * ffem / fem,
                        letterSpacing: 0.200000003 * fem,
                        color: const Color(0xff666680),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Bounceable(
              onTap: () {
                _onClickLogin(context);
              },
              child: Container(
                // button7zi (1:48)
                margin:
                    EdgeInsets.fromLTRB(2 * fem, 0 * fem, 1 * fem, 80 * fem),
                width: double.infinity,
                height: 48 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffff7966),
                  borderRadius: BorderRadius.circular(999 * fem),
                  border: const Border(),
                ),
                child: Center(
                  child: Text(
                    'Sign In',
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
            Container(
              // senonhaiancoraunaccountcontatt (1:29)
              margin: EdgeInsets.fromLTRB(9 * fem, 0 * fem, 0 * fem, 0 * fem),
              constraints: BoxConstraints(
                maxWidth: 250 * fem,
              ),
              child: Text(
                'Se non hai ancora un account, contatta l’amministrazione per ottenere un account.',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 12 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.3333333333 * ffem / fem,
                  letterSpacing: 0.200000003 * fem,
                  color: const Color(0xff666680),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
