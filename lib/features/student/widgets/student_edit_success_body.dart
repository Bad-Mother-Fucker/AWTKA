import 'package:awtka/common/bounceable.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class StudentEditSuccessBody extends ConsumerWidget {
  const StudentEditSuccessBody({super.key});

  // TODO(thien): ask if auto go back or user manual click go back

  _onClickBack(BuildContext context) {
    context.pop();
    context.pop();
  }

  _onClickEditFile(BuildContext context, String id) {
    context.pop();
  }

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // successuploadpdf5Ht (6:78)
        padding: EdgeInsets.fromLTRB(20 * fem, 25 * fem, 15 * fem, 0 * fem),
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
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 50 * fem),
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
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 11.84 * fem, 32 * fem),
              width: 152.16 * fem,
              height: 151.64 * fem,
              child: Image.asset(
                'assets/images/illustration.png',
                width: 152.16 * fem,
                height: 151.64 * fem,
              ),
            ),
            Container(
              // yeaaah54v (6:106)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 19 * fem, 13 * fem),
              child: Text(
                'Yeaaah!',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * ffem / fem,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // congratulazionihaicaricatocons (6:107)
              margin:
                  EdgeInsets.fromLTRB(17 * fem, 0 * fem, 0 * fem, 41.36 * fem),
              child: Text(
                'Congratulazioni! Hai caricato con successo il file.',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 12 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: const Color(0xffcecece),
                ),
              ),
            ),
            Container(
              // jametkudasicvuiuxdesigner1Mt (6:108)
              margin: EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 16 * fem),
              padding:
                  EdgeInsets.fromLTRB(16 * fem, 15 * fem, 16 * fem, 16 * fem),
              width: double.infinity,
              height: 90 * fem,
              decoration: BoxDecoration(
                color: const Color(0xff26262f),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // pdfSi6 (6:110)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 8 * fem, 15 * fem, 0 * fem),
                    width: 44 * fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle64MaA (6:112)
                          left: 5.50390625 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 33 * fem,
                              height: 44 * fem,
                              child: Image.asset(
                                'assets/images/rectangle-64-FWa.png',
                                width: 33 * fem,
                                height: 44 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // vector38Edx (6:113)
                          left: 26 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 12.5 * fem,
                              height: 13 * fem,
                              child: Image.asset(
                                'assets/images/vector-38.png',
                                width: 12.5 * fem,
                                height: 13 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pdfjKp (6:114)
                          left: 12 * fem,
                          top: 23 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 19 * fem,
                              height: 14 * fem,
                              child: Text(
                                'PDF',
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.3625 * ffem / fem,
                                  letterSpacing: -0.2 * fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // autogrouprsfgnJ6 (GF96k73RCh7ThspRCUrsFG)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 4 * fem, 0 * fem, 3 * fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // mariorossicertificatomedicoHke (6:115)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 4 * fem),
                            child: Text(
                              'Mario Rossi - Certificato MedicoCertificato MedicoCertificato Medico',
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            // autogroup1zktmQv (GF96sSAYB5FXvD18SN1zKt)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: double.infinity,
                            height: 16 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  // kbrhG (6:116)
                                  '867 Kb',
                                  style: SafeGoogleFont(
                                    'DM Sans',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3025 * ffem / fem,
                                    color: const Color(0xffa9a5b8),
                                  ),
                                ),
                                Container(
                                  // autogroupgknan58 (GF96zBUJAF5pyea4DSGKNA)
                                  padding: EdgeInsets.fromLTRB(
                                      5 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // ellipse6tdx (6:118)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 4 * fem, 5 * fem, 0 * fem),
                                        width: 2 * fem,
                                        height: 2 * fem,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1 * fem),
                                          color: const Color(0xffa9a5b8),
                                        ),
                                      ),
                                      Text(
                                        // feb2022bHU (6:117)
                                        '14 Feb 2022 ',
                                        style: SafeGoogleFont(
                                          'DM Sans',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3025 * ffem / fem,
                                          color: const Color(0xffa9a5b8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Bounceable(
              onTap: () {
                _onClickEditFile(context, '');
              },
              child: Container(
                // modificailfile6EE (6:87)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 14 * fem, 0 * fem),
                child: Text(
                  'MODIFICA IL FILE',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                    letterSpacing: 0.84 * fem,
                    color: const Color(0x66ffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
