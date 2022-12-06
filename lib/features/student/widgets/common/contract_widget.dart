import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContractWidget extends ConsumerWidget {
  const ContractWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      padding: EdgeInsets.fromLTRB(15 * fem, 15 * fem, 20 * fem, 15 * fem),
      // width: 335 * fem,
      height: 120 * fem,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff24242d)),
        color: const Color(0xff26262f),
        borderRadius: BorderRadius.circular(20 * fem),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // autogroupa9kePb8 (GF8z7xkASKj7HpBhX2a9ke)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
            height: 44 * fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  // pdf6VY (5:383)
                  width: 44 * fem,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle64E5x (5:385)
                        left: 5.50390625 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 33 * fem,
                            height: 44 * fem,
                            child: Image.asset(
                              'assets/images/rectangle-64.png',
                              width: 33 * fem,
                              height: 44 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // vector38X54 (5:386)
                        left: 26 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 12.5 * fem,
                            height: 13 * fem,
                            child: Image.asset(
                              'assets/images/vector-38-Dwx.png',
                              width: 12.5 * fem,
                              height: 13 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // pdfcsC (5:387)
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
                    // autogroupyuwrHiS (GF8zqri2B9BUjUfJsiYuWr)
                    padding: EdgeInsets.fromLTRB(
                        15 * fem, 4 * fem, 0 * fem, 3 * fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            // autogroupxsuroRt (GF8zJTSgC9F83qHoqaxSUr)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 191 * fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // mariorossimedicalcertificate7S (5:399)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                  child: Text(
                                    'Mario Rossi - Medical certificate',
                                    style: SafeGoogleFont(
                                      'Open Sans',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3625 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupu8mgaqx (GF8zV2yPERNpQGLk5gu8Mg)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 16 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        // mbfsQ (5:400)
                                        '1 Mb',
                                        style: SafeGoogleFont(
                                          'DM Sans',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3025 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                      Container(
                                        // autogroupb4flQ4J (GF8zbhSww8bRsHxqwDb4FL)
                                        padding: EdgeInsets.fromLTRB(
                                            5 * fem, 0 * fem, 0 * fem, 0 * fem),
                                        height: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // ellipse67jQ (5:378)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  4 * fem,
                                                  8 * fem,
                                                  0 * fem),
                                              width: 2 * fem,
                                              height: 2 * fem,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1 * fem),
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                            Text(
                                              // feb2022QTc (5:377)
                                              '14 Feb 2022 ',
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
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          // optionvgr (5:379)
                          width: 3 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/images/option-VPY.png',
                            width: 3 * fem,
                            height: 15 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // autogroupjc8aESe (GF91MLrtday8mdHogLJC8a)
            margin: EdgeInsets.fromLTRB(6 * fem, 0 * fem, 0 * fem, 0 * fem),
            width: double.infinity,
            height: 24 * fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  // iconremovew6A (5:388)
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // iconsEi (5:389)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 10 * fem, 0 * fem),
                        width: 24 * fem,
                        height: 24 * fem,
                        child: Image.asset(
                          'assets/images/icon.png',
                          width: 24 * fem,
                          height: 24 * fem,
                        ),
                      ),
                      Container(
                        // cancellaxGA (5:396)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 1 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          'Cancella',
                          style: SafeGoogleFont(
                            'Open Sans',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3625 * ffem / fem,
                            color: const Color(0xfffb4646),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroupn7mlrcS (GF91URVRkbGACie39an7mL)
                  padding:
                      EdgeInsets.fromLTRB(42 * fem, 4 * fem, 0 * fem, 1 * fem),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // edit1Z14 (5:401)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 1 * fem, 8 * fem, 0 * fem),
                        width: 18 * fem,
                        height: 18 * fem,
                        child: Image.asset(
                          'assets/images/edit-1-9aS.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // aggiornaTML (5:398)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 2 * fem),
                        child: Text(
                          'Aggiorna',
                          style: SafeGoogleFont(
                            'Open Sans',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3625 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
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
    );
  }
}
