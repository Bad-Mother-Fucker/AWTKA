import 'dart:ui';

import 'package:awtka/common/bounceable.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class StudentCreatePageBodyWidget extends ConsumerWidget {
  const StudentCreatePageBodyWidget({super.key});

  _onClickBack(BuildContext context) {
    context.pop();
  }

  _onClickCreate(BuildContext context) {
    context.push(StudentCreateSuccessRoute.path, extra: {'id': 'id'});
  }

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          // studentinfoeyG (1:2404)
          padding: EdgeInsets.fromLTRB(19 * fem, 32 * fem, 20 * fem, 38 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff1c1c23),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogrouppuduJnv (GFA74bY1Fw7cdheuJwpuDU)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 25 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Bounceable(
                      onTap: () {
                        _onClickBack(context);
                      },
                      child: Container(
                        // backnavspFU (1:2432)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 68 * fem, 0 * fem),
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
                      // aggiungiallievoJRY (1:2437)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 2 * fem),
                      child: Text(
                        'Aggiungi allievo',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupjzkiadx (GFA7ERaxk5iAeRCQF9jzki)
                margin:
                    EdgeInsets.fromLTRB(132 * fem, 0 * fem, 130 * fem, 6 * fem),
                padding:
                    EdgeInsets.fromLTRB(3 * fem, 11 * fem, 3 * fem, 10 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffd9d9d9),
                  borderRadius: BorderRadius.circular(37 * fem),
                ),
                child: Center(
                  // profileiconpngimagefreedownloa (1:2439)
                  child: SizedBox(
                    width: 68 * fem,
                    height: 53 * fem,
                    child: Image.asset(
                      'assets/images/profile-icon-png-image-free-download-searchpng-profile-removebg-preview-1-TCv.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                // cliccasullafotopercaricarelimm (1:2463)
                margin:
                    EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 35 * fem),
                constraints: BoxConstraints(
                  maxWidth: 157 * fem,
                ),
                child: Text(
                  'Clicca sulla foto per caricare l’immagine dell’allievo',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 10 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.6 * ffem / fem,
                    letterSpacing: 0.200000003 * fem,
                    color: const Color(0xffa2a2b5),
                  ),
                ),
              ),
              Container(
                // studentinformationxY2 (1:2405)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 190 * fem, 8 * fem),
                child: Text(
                  'Student information',
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.4285714286 * ffem / fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // autolayoutvertical33g (1:2406)
                margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 3 * fem, 8 * fem),
                padding:
                    EdgeInsets.fromLTRB(20 * fem, 22 * fem, 21 * fem, 22 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x334e4e61),
                  borderRadius: BorderRadius.circular(16 * fem),
                  border: const Border(),
                ),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5 * fem,
                      sigmaY: 5 * fem,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autolayoutverticalTNJ (1:2407)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 22 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // securityAXc (1:2408)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 28 * fem),
                                width: double.infinity,
                                height: 20 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogrouptzplGKk (GFA7ZqCHs14DtcSvLvtzPL)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 44 * fem, 0 * fem),
                                      width: 117 * fem,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // namesurnameBBp (1:2409)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 117 * fem,
                                                height: 20 * fem,
                                                child: Text(
                                                  'Name & Surname',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.4285714286 *
                                                        ffem /
                                                        fem,
                                                    color:
                                                        const Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // iconsfaceid1wY (1:2410)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: SizedBox(
                                              width: 20 * fem,
                                              height: 20 * fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autolayouthorizontalKxE (1:2411)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 2 * fem, 0 * fem, 2 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // iconsarrowmediumEpJ (1:2412)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                2 * fem, 8 * fem, 2 * fem),
                                            width: 12 * fem,
                                            height: double.infinity,
                                          ),
                                          Text(
                                            // placeholdernameZra (1:2413)
                                            'Placeholder name',
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // framescN (1:2414)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0.32 * fem, 0 * fem),
                                width: double.infinity,
                                height: 20 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // datadiscrizioneamg (1:2415)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 99 * fem, 0 * fem),
                                      child: Text(
                                        'Data d’iscrizione',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.4285714286 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // group103GPc (1:2416)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 2 * fem, 0 * fem, 2 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            // Kcn (1:2417)
                                            '24/07/2019',
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
                                          Container(
                                            // vectornmG (1:2418)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 0 * fem),
                                            width: 5.68 * fem,
                                            height: 12 * fem,
                                            child: Image.asset(
                                              'assets/images/vector-e8r.png',
                                              width: 5.68 * fem,
                                              height: 12 * fem,
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
                        SizedBox(
                          // autolayoutverticalzsL (1:2419)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // securityh14 (1:2420)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 28 * fem),
                                width: double.infinity,
                                height: 20 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupymywK2S (GFA7vevvoirtDpmV8xYmYW)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 219 * fem, 0 * fem),
                                      width: 36 * fem,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // levelwJi (1:2421)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 36 * fem,
                                                height: 20 * fem,
                                                child: Text(
                                                  'Level',
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.4285714286 *
                                                        ffem /
                                                        fem,
                                                    color:
                                                        const Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // iconsfaceidSPt (1:2422)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: SizedBox(
                                              width: 20 * fem,
                                              height: 20 * fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      // basicfnS (1:2424)
                                      'Basic',
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
                                  ],
                                ),
                              ),
                              Container(
                                // framejGW (1:2425)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0.32 * fem, 0 * fem),
                                width: double.infinity,
                                height: 20 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // gradoBuC (1:2426)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 187 * fem, 0 * fem),
                                      child: Text(
                                        'Grado',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.4285714286 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // group103gzN (1:2427)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 2 * fem, 0 * fem, 2 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            // gradobbY (1:2428)
                                            '1° Grado',
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
                                          Container(
                                            // vectorJVx (1:2429)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 0 * fem),
                                            width: 5.68 * fem,
                                            height: 12 * fem,
                                            child: Image.asset(
                                              'assets/images/vector-zmQ.png',
                                              width: 5.68 * fem,
                                              height: 12 * fem,
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
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // repetitionscardCLS (1:2467)
                margin:
                    EdgeInsets.fromLTRB(11 * fem, 0 * fem, 10 * fem, 9 * fem),
                width: double.infinity,
                height: 50 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16 * fem),
                ),
                child: Container(
                  // bgJPU (1:2468)
                  padding: EdgeInsets.fromLTRB(
                      15 * fem, 16 * fem, 29.46 * fem, 13 * fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff26262f),
                    borderRadius: BorderRadius.circular(16 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // instructorn3k (1:2471)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 1 * fem, 180.5 * fem, 0 * fem),
                        child: Text(
                          'Instructor',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xfffffdfd),
                          ),
                        ),
                      ),
                      SizedBox(
                        // buttononUBU (1:2472)
                        width: 32.04 * fem,
                        height: 21 * fem,
                        child: Image.asset(
                          'assets/images/button-on-zAN.png',
                          width: 32.04 * fem,
                          height: 21 * fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // repetitionscardaEW (1:2458)
                margin:
                    EdgeInsets.fromLTRB(11 * fem, 0 * fem, 10 * fem, 31 * fem),
                width: double.infinity,
                height: 130 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16 * fem),
                ),
                child: Container(
                  // bggYS (1:2459)
                  padding: EdgeInsets.fromLTRB(
                      15 * fem, 16 * fem, 15 * fem, 16 * fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff26262f),
                    borderRadius: BorderRadius.circular(16 * fem),
                  ),
                  child: Text(
                    'Notes',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xfffffdfd),
                    ),
                  ),
                ),
              ),
              Container(
                // contractLst (1:2430)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 256 * fem, 15 * fem),
                child: Text(
                  'Contract',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // uploadcvresumeqpe (1:2440)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 26 * fem, 0 * fem, 25 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff9d97b5)),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // iconhbx (1:2443)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 15 * fem, 0 * fem),
                      width: 24 * fem,
                      height: 24 * fem,
                      child: Image.asset(
                        'assets/images/icon-xgA.png',
                        width: 24 * fem,
                        height: 24 * fem,
                      ),
                    ),
                    Container(
                      // selectfileafk (1:2442)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 15 * fem, 0 * fem),
                      child: Text(
                        'Select file',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // medicalcertificateUFL (1:2431)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 187 * fem, 19 * fem),
                child: Text(
                  'Medical certificate',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // uploadcvresumeN5p (1:2449)
                margin:
                    EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 46 * fem),
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 26 * fem, 0 * fem, 25 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff9d97b5)),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // iconR46 (1:2452)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 15 * fem, 0 * fem),
                      width: 24 * fem,
                      height: 24 * fem,
                      child: Image.asset(
                        'assets/images/icon-xka.png',
                        width: 24 * fem,
                        height: 24 * fem,
                      ),
                    ),
                    Container(
                      // selectfileJdg (1:2451)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 2 * fem, 15 * fem, 0 * fem),
                      child: Text(
                        'Select file',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Bounceable(
                onTap: () {
                  _onClickCreate(context);
                },
                child: Container(
                  // buttonQRp (1:2464)
                  margin:
                      EdgeInsets.fromLTRB(11 * fem, 0 * fem, 10 * fem, 0 * fem),
                  width: double.infinity,
                  height: 60 * fem,
                  decoration: BoxDecoration(
                    color: const Color(0xffff8869),
                    borderRadius: BorderRadius.circular(99 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Salva',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
