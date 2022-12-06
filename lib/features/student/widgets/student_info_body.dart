import 'dart:ui';

import 'package:awtka/common/bounceable.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'common/contract_widget.dart';

class StudentInfoBodyWidget extends ConsumerWidget {
  const StudentInfoBodyWidget({super.key});

  _onClickBack(BuildContext context) {
    context.pop();
  }

  _onClickEditProfile(BuildContext context) {
    context.push(StudentEditProfileRoute.path, extra: {'id': 'id'});
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
          // studentinfoivW (5:138)
          width: double.infinity,
          height: 1338 * fem,
          decoration: const BoxDecoration(
            color: Color(0xff1c1c23),
          ),
          child: Stack(
            children: [
              Positioned(
                // autogroup4scecW6 (GF8sm9LhtPYN3iV1hh4scE)
                left: 19 * fem,
                top: 32 * fem,
                child: SizedBox(
                  width: 313 * fem,
                  height: 32 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Bounceable(
                        onTap: () {
                          _onClickBack(context);
                        },
                        child: Container(
                          // backnavsfzA (14:506)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 118 * fem, 0 * fem),
                          width: 32 * fem,
                          height: 32 * fem,
                          child: Image.asset(
                            'assets/images/back-navs-h3x.png',
                            width: 32 * fem,
                            height: 32 * fem,
                          ),
                        ),
                      ),
                      Center(
                        // userAAE (5:145)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 77 * fem, 0 * fem),
                          child: Text(
                            'User',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              letterSpacing: 0.200000003 * fem,
                              color: const Color(0xffa2a2b5),
                            ),
                          ),
                        ),
                      ),
                      Bounceable(
                        onTap: () {
                          _onClickEditProfile(context);
                        },
                        child: Text(
                          // editprofile1wY (5:140)
                          'Edit profile',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 9 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.7777777778 * ffem / fem,
                            color: const Color(0xffffa489),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // autogrouptlevLD8 (GF8szPTe1MMuPMnPVCtLEv)
                left: 108.5 * fem,
                top: 236 * fem,
                child: SizedBox(
                  width: 156.5 * fem,
                  height: 32 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // buttonsmallp8J (5:235)
                        width: 56 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xffc3e3f2),
                          borderRadius: BorderRadius.circular(16 * fem),
                          border: const Border(),
                        ),
                        child: Center(
                          child: Text(
                            'Basic',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3333333333 * ffem / fem,
                              color: const Color(0xff2c2c2c),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupgvyped8 (GF8tKJ5oRX1s55Mx3igvyp)
                        padding: EdgeInsets.fromLTRB(
                            19.5 * fem, 7 * fem, 0 * fem, 5 * fem),
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse369Jz (14:530)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 1 * fem),
                              width: 15 * fem,
                              height: 15 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.5 * fem),
                                color: const Color(0xffb9b9b9),
                              ),
                            ),
                            Text(
                              // gradodzr (14:529)
                              '3° Grado',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 13 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // jdoegmailcomkpa (5:141)
                left: 137 * fem,
                top: 208 * fem,
                child: Align(
                  child: SizedBox(
                    width: 102 * fem,
                    height: 16 * fem,
                    child: Text(
                      'j.doe@gmail.com',
                      textAlign: TextAlign.center,
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
                ),
              ),
              Positioned(
                // johndoeBez (5:142)
                left: 141.5 * fem,
                top: 176 * fem,
                child: Align(
                  child: SizedBox(
                    width: 93 * fem,
                    height: 32 * fem,
                    child: Text(
                      'John Doe',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.6 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // avatar3BQ (5:143)
                left: 152 * fem,
                top: 96 * fem,
                child: Container(
                  width: 72 * fem,
                  height: 72 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999 * fem),
                  ),
                  child: Center(
                    // image8ie (5:144)
                    child: SizedBox(
                      width: 137 * fem,
                      height: 173 * fem,
                      child: Image.asset(
                        'assets/images/image-Bm4.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // studentinformationFHU (5:149)
                left: 24 * fem,
                top: 296 * fem,
                child: Align(
                  child: SizedBox(
                    width: 136 * fem,
                    height: 20 * fem,
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
                ),
              ),
              Positioned(
                // autolayoutverticalKHL (5:150)
                left: 24 * fem,
                top: 324 * fem,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5 * fem,
                      sigmaY: 5 * fem,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          20 * fem, 22 * fem, 21 * fem, 22 * fem),
                      width: 328 * fem,
                      height: 112 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0x334e4e61),
                        borderRadius: BorderRadius.circular(16 * fem),
                        border: const Border(),
                      ),
                      child: SizedBox(
                        // autolayoutverticalwJi (5:151)
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // securityU3k (5:152)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 28 * fem),
                              width: double.infinity,
                              height: 20 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroup143kBD4 (GF8viJvW3PpCL82ypr143k)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 74 * fem, 0 * fem),
                                    width: 117 * fem,
                                    height: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // namesurnamegvW (5:153)
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
                                                  height:
                                                      1.4285714286 * ffem / fem,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // iconsfaceidMWr (5:154)
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
                                    // autolayouthorizontal4w4 (5:164)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 2 * fem, 0 * fem, 2 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 3.41 * fem, 0 * fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // iconsarrowmediumLta (5:166)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              2 * fem, 8 * fem, 2 * fem),
                                          width: 12 * fem,
                                          height: double.infinity,
                                        ),
                                        Container(
                                          // johndoeGGS (5:237)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 10.91 * fem, 0 * fem),
                                          child: Text(
                                            'John Doe',
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
                                        Container(
                                          // iconsarrowmediumwNa (5:238)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 0 * fem),
                                          width: 5.68 * fem,
                                          height: 12 * fem,
                                          child: Image.asset(
                                            'assets/images/icons-arrow-medium.png',
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
                            Container(
                              // frame298 (5:168)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0.32 * fem, 0 * fem),
                              width: double.infinity,
                              height: 20 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // entrydateX5t (5:169)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 141 * fem, 0 * fem),
                                    child: Text(
                                      'Entry date',
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
                                    // group103QfU (5:240)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 2 * fem, 0 * fem, 2 * fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          // vdp (5:165)
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
                                          // vectorScA (5:167)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 0 * fem),
                                          width: 5.68 * fem,
                                          height: 12 * fem,
                                          child: Image.asset(
                                            'assets/images/vector-kki.png',
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
                    ),
                  ),
                ),
              ),
              Positioned(
                // autogroup8ql6w38 (GF8tUTVCdzgxLVLqba8qL6)
                left: 27 * fem,
                top: 451 * fem,
                child: SizedBox(
                  width: 303 * fem,
                  height: 23 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // examspassedDWS (5:258)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 2 * fem, 157 * fem, 0 * fem),
                        child: Text(
                          'Exams passed',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Text(
                        // viewall7bp (6:35)
                        'View All',
                        style: SafeGoogleFont(
                          'Open Sans',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3625 * ffem / fem,
                          color: const Color(0xff919191),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // autogroup7m9cdq4 (GF8uZgAs2He5fqoyHZ7m9C)
                left: 27 * fem,
                top: 592 * fem,
                child: SizedBox(
                  width: 304 * fem,
                  height: 22 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // attendancehistoryjdC (5:271)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 1 * fem, 124 * fem, 0 * fem),
                        child: Text(
                          'Attendance history',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Text(
                        // viewallE4A (6:27)
                        'View All',
                        style: SafeGoogleFont(
                          'Open Sans',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3625 * ffem / fem,
                          color: const Color(0xff919191),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // autogroupweinkHQ (GF8uk63BVeYQqSyFgZwein)
                left: 27 * fem,
                top: 752 * fem,
                child: SizedBox(
                  width: 305 * fem,
                  height: 23 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // contractqZk (5:315)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 2 * fem, 219 * fem, 0 * fem),
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
                      Text(
                        // editw6z (6:29)
                        'Edit',
                        style: SafeGoogleFont(
                          'Open Sans',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3625 * ffem / fem,
                          color: const Color(0xff919191),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // autogroupjecj4SW (GF8v55VYCGp47aVeAdJecJ)
                left: 28 * fem,
                top: 1102 * fem,
                child: SizedBox(
                  width: 304 * fem,
                  height: 21 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // participationlistZPG (6:25)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 166 * fem, 0 * fem),
                        child: Text(
                          'Participation list',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Text(
                        // editfBQ (6:33)
                        'Edit',
                        style: SafeGoogleFont(
                          'Open Sans',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3625 * ffem / fem,
                          color: const Color(0xff919191),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // autogroupckwanmp (GF8tfCgJFC41skHRgmCKWA)
                left: 24 * fem,
                top: 490.3944091797 * fem,
                child: SizedBox(
                  width: 444 * fem,
                  height: 74.79 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // jametkudasicvuiuxdesignerg6W (5:259)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 10 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            13 * fem, 10.11 * fem, 28 * fem, 10.11 * fem),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xe5ff9228),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // shaoliniYz (5:264)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 7 * fem, 0 * fem),
                              width: 54 * fem,
                              height: 54.58 * fem,
                              child: Image.asset(
                                'assets/images/shaolin.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // autogroupblgaceN (GF8tx7MnrLwbKZBA6DbLgA)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 3.03 * fem, 0 * fem, 4.17 * fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // gradetitleKHt (5:261)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 3.47 * fem),
                                    child: Text(
                                      'Grade title',
                                      style: SafeGoogleFont(
                                        'DM Sans',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3025 * ffem / fem,
                                        color: const Color(0xff150b3d),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // namesurnameofexaminator1Ai (5:262)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 4.91 * fem),
                                    child: Text(
                                      'Name Surname of examinator',
                                      style: SafeGoogleFont(
                                        'DM Sans',
                                        fontSize: 8 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3025 * ffem / fem,
                                        color: const Color(0xff150b3d),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // place12012022syc (5:263)
                                    'Place - 12/01/2022',
                                    style: SafeGoogleFont(
                                      'DM Sans',
                                      fontSize: 9 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3025 * ffem / fem,
                                      color: const Color(0xff191919),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // jametkudasicvuiuxdesignernan (5:265)
                        padding: EdgeInsets.fromLTRB(
                            14 * fem, 13.14 * fem, 66 * fem, 13.14 * fem),
                        width: 217 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xe5514a6b),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // kungfu3eN6 (5:270)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1.01 * fem, 13 * fem, 0 * fem),
                              width: 47 * fem,
                              height: 47.5 * fem,
                              child: Image.asset(
                                'assets/images/kung-fu-3.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // autogroupyvug9Zk (GF8uHrHu76kNwQCytAyvuG)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 1.14 * fem),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // gradetitleeFc (5:267)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 3.2 * fem),
                                    child: Text(
                                      'Grade title',
                                      style: SafeGoogleFont(
                                        'DM Sans',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3025 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // namesurname8wU (5:268)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 5.17 * fem),
                                    child: Text(
                                      'Name Surname',
                                      style: SafeGoogleFont(
                                        'DM Sans',
                                        fontSize: 8 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3025 * ffem / fem,
                                        color: const Color(0xfffbfaff),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // place12012022Dxv (5:269)
                                    'Place - 12/01/2022',
                                    style: SafeGoogleFont(
                                      'DM Sans',
                                      fontSize: 9 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3025 * ffem / fem,
                                      color: const Color(0xfffff5f5),
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
              Positioned(
                // jametkudasicvuiuxdesigner95t (5:318)
                left: 18 * fem,
                right: 18 * fem,
                top: 789 * fem,
                child: ContractWidget(),
              ),
              Positioned(
                // autogroup4kwv418 (GF8uuVwAZW4Yt6nd144kWv)
                left: 27 * fem,
                top: 923 * fem,
                child: SizedBox(
                  width: 305 * fem,
                  height: 22 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // medicalcertificateYgz (5:373)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 1 * fem, 150 * fem, 0 * fem),
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
                      Text(
                        // editEJv (6:31)
                        'Edit',
                        style: SafeGoogleFont(
                          'Open Sans',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3625 * ffem / fem,
                          color: const Color(0xff919191),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // jametkudasicvuiuxdesignerZ6J (5:375)
                left: 18 * fem,
                right: 18 * fem,
                top: 959 * fem,
                child: ContractWidget(),
              ),
              Positioned(
                // group104kLS (6:24)
                left: 25 * fem,
                top: 1136 * fem,
                child: Container(
                  width: 328 * fem,
                  height: 68 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // activesubsSDG (6:12)
                        padding: EdgeInsets.fromLTRB(
                            42 * fem, 16 * fem, 41 * fem, 4 * fem),
                        width: 104 * fem,
                        height: double.infinity,
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
                                  // citEQ2 (6:13)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 6 * fem),
                                  child: Text(
                                    'CIT',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3333333333 * ffem / fem,
                                      color: const Color(0xff83839c),
                                    ),
                                  ),
                                ),
                                Text(
                                  '12',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.4285714286 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8 * fem,
                      ),
                      Container(
                        // highestsubsNuY (6:16)
                        padding: EdgeInsets.fromLTRB(
                            26 * fem, 10 * fem, 26 * fem, 4 * fem),
                        width: 104 * fem,
                        height: double.infinity,
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
                                  // summmercampCta (6:17)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                  constraints: BoxConstraints(
                                    maxWidth: 52 * fem,
                                  ),
                                  child: Text(
                                    'Summmer\nCamp',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.6 * ffem / fem,
                                      color: const Color(0xff83839c),
                                    ),
                                  ),
                                ),
                                Container(
                                  // fnA (6:18)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 1 * fem, 0 * fem),
                                  child: Text(
                                    '2',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.4285714286 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8 * fem,
                      ),
                      Container(
                        // lowestsubsLNW (6:20)
                        padding: EdgeInsets.fromLTRB(
                            35 * fem, 16 * fem, 35 * fem, 14 * fem),
                        width: 104 * fem,
                        height: double.infinity,
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
                                  // stageAsL (6:21)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                  child: Text(
                                    'Stage',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3333333333 * ffem / fem,
                                      color: const Color(0xff83839c),
                                    ),
                                  ),
                                ),
                                Container(
                                  // U7L (6:22)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 1 * fem, 0 * fem),
                                  child: Text(
                                    '5',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.4285714286 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
