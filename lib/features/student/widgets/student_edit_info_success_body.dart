import 'package:awtka/common/bounceable.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class StudentEditInfoSuccessBody extends ConsumerWidget {
  const StudentEditInfoSuccessBody({super.key});

  _onClickBack(BuildContext context) {
    context.pop();
    context.pop();
  }

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      bottom: false,
      child: SizedBox(
        width: double.infinity,
        child: Container(
          // successuploadpdf5Ht (6:78)
          padding: EdgeInsets.fromLTRB(20 * fem, 20 * fem, 15 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xff1c1c23),
            borderRadius: BorderRadius.circular(30 * fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Bounceable(
                  onTap: () {
                    _onClickBack(context);
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    // autogroupf7najdL (GF96MCXvAVvjYLsCKrF7Na)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 50 * fem),
                    width: 48 * fem,
                    height: 39 * fem,
                    child: Image.asset(
                      'assets/images/auto-group-f7na.png',
                      width: 48 * fem,
                      height: 39 * fem,
                    ),
                  ),
                ),
              ),
              Container(
                // illustrationDHc (6:88)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                width: 300 * fem,
                height: 300 * fem,
                child: Lottie.asset(
                  'assets/lotties/success.json',
                  width: 300 * fem,
                  height: 300 * fem,
                ),
              ),
              Container(
                // yeaaah54v (6:106)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 13 * fem),
                child: Text(
                  'Studente modificare\ncorrettamente!',
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
              Container(
                // congratulazionihaicaricatocons (6:107)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 41.36 * fem),
                child: Text(
                  'Congratulazioni, hai modificare correttamente\nil profilo di un nuovo studente dell’accademia.',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xffcecece),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
