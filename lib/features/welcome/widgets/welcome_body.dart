import 'package:awtka/common/bounceable.dart';
import 'package:awtka/globals.dart';
import 'package:awtka/main_controller/local_config_controller.dart';
import 'package:flutter/material.dart';
import 'package:awtka/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WelcomeBodyWidget extends ConsumerWidget {
  const WelcomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    onClickLogin() async {
      try {
        await ref.read(
          setLocalConfigProvider(
            key: 'first_time',
            data: 'false',
          ).future,
        );
      } catch (e) {
        showSnackBar(contentText: e.toString());
      }
    }

    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // welcomescreenJ4r (1:49)
        padding: EdgeInsets.fromLTRB(25 * fem, 0 * fem, 26 * fem, 53 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff1c1c23),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 3),
            Container(
              // benvenutnellatuaaccademiaMYv (1:52)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 108 * fem, 15 * fem),
              constraints: BoxConstraints(
                maxWidth: 216 * fem,
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
                      text: 'Benvenut* \nnella tua\n',
                    ),
                    TextSpan(
                      text: 'accademia',
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
              // effettuailloginperiniziare8bc (1:53)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 152 * fem, 92 * fem),
              child: Text(
                'Effettua il login per iniziare',
                style: SafeGoogleFont(
                  'DM Sans',
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3025 * ffem / fem,
                  color: const Color(0xff909090),
                ),
              ),
            ),
            Bounceable(
              onTap: () {
                onClickLogin();
              },
              child: Container(
                // buttonQp2 (1:51)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 80 * fem),
                width: double.infinity,
                height: 48 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffff7966),
                  borderRadius: BorderRadius.circular(999 * fem),
                  border: const Border(),
                ),
                child: Center(
                  child: Text(
                    'Login',
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
            const Spacer(flex: 2),
            Container(
              // senonhaiancoraunaccountcontatt (1:54)
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
