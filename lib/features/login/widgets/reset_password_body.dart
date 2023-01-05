import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/globals.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordBodyWidget extends ConsumerWidget {
  const ResetPasswordBodyWidget({super.key});

  _onClickReturn(BuildContext context) {
    context.pop();
  }

  _onClickReset(BuildContext context, WidgetRef ref) {
    final email = ref.read(appTextFieldProvider('reset_password_email'));

    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);

    if (!emailValid) {
      showSnackBar(contentText: 'Email invalid format!');
      return;
    }

    showSnackBar(contentText: 'Send request success please check email!');
    context.pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            // resetpasswordnBk (1:18)
            padding: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 21 * fem, 53 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff1c1c23),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SafeArea(child: SizedBox()),
                Bounceable(
                  onTap: () {
                    _onClickReturn(context);
                  },
                  child: Container(
                    // backnavshbY (14:522)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 20 * fem, 0 * fem, 40 * fem),
                    width: 32 * fem,
                    height: 32 * fem,
                    child: Image.asset(
                      'assets/images/back-navs-HMU.png',
                      width: 32 * fem,
                      height: 32 * fem,
                    ),
                  ),
                ),
                Container(
                  // resetpasswordkpi (1:24)
                  margin:
                      EdgeInsets.fromLTRB(8 * fem, 0 * fem, 0 * fem, 49 * fem),
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
                          text: 'Reset\n',
                        ),
                        TextSpan(
                          text: 'password',
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
                  // toresetyourpasswordenteryourem (1:25)
                  margin:
                      EdgeInsets.fromLTRB(8 * fem, 0 * fem, 0 * fem, 46 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 310 * fem,
                  ),
                  child: Text(
                    'To reset your password, enter your email here.\nIf you are properly registered, you will receive an email where you can reset your password. \nDon\'t forget it!',
                    style: SafeGoogleFont(
                      'DM Sans',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.3025 * ffem / fem,
                      color: const Color(0xff909090),
                    ),
                  ),
                ),
                Container(
                  // inputpassword9nJ (1:21)
                  margin:
                      EdgeInsets.fromLTRB(8 * fem, 0 * fem, 0 * fem, 28 * fem),
                  width: 327 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // emailaddress3Mt (1:22)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 4 * fem),
                        child: Text(
                          'Email address',
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
                        id: 'reset_password_email',
                      )
                    ],
                  ),
                ),
                Bounceable(
                  onTap: () {
                    _onClickReset(context, ref);
                  },
                  child: Container(
                    // buttonZUe (1:20)
                    margin: EdgeInsets.fromLTRB(
                        5 * fem, 50 * fem, 6 * fem, 30 * fem),
                    width: double.infinity,
                    height: 48 * fem,
                    decoration: BoxDecoration(
                      color: const Color(0xffff7966),
                      borderRadius: BorderRadius.circular(999 * fem),
                      border: const Border(),
                    ),
                    child: Center(
                      child: Text(
                        'Reset password',
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
                const SizedBox(
                  height: 20,
                ),
                SafeArea(
                  child: Center(
                    child: Container(
                      // senonhaiancoraunaccountcontatt (1:19)
                      width: double.infinity,
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
