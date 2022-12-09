import 'package:awtka/common/app_card.dart';
import 'package:awtka/common/bounceable.dart';
import 'package:awtka/features/student/widgets/common/contract_widget.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class StudentInfoBodyWidget extends ConsumerWidget {
  const StudentInfoBodyWidget({super.key});

  _onClickBack(BuildContext context) {
    context.pop();
  }

  _onClickEditProfile(BuildContext context) {
    context.push(StudentCreateRoute.path, extra: {'id': 'id'});
  }

  _onClickEditFile(BuildContext context) {
    context.push(StudentEditProfileRoute.path, extra: {'id': 'id'});
  }

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Stack(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              // studentinfoivW (5:138)
              width: double.infinity,
              height: 1338 * fem,
              color: const Color(0xff1c1c23),
              child: Column(
                children: [
                  SafeArea(child: SizedBox(height: 80 * fem)),
                  Container(
                    width: 72 * fem,
                    height: 72 * fem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(999 * fem),
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 137 * fem,
                        child: ClipOval(
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
                  ),
                  SizedBox(height: 8 * fem),
                  SizedBox(
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
                  SizedBox(
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
                  SizedBox(height: 12 * fem),
                  SizedBox(
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
                                  borderRadius:
                                      BorderRadius.circular(7.5 * fem),
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24 * fem, 30 * fem, 0, 0),
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
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(24 * fem, 12 * fem, 24 * fem, 0),
                    child: AppCardSetting(
                      actions: [
                        AppCardSettingType(
                          title: 'Name & Surname',
                          data: 'John Doe',
                          showAction: true,
                        ),
                        AppCardSettingType(
                          title: 'Entry date',
                          data: '24/07/2019',
                          showAction: false,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.fromLTRB(24 * fem, 30 * fem, 24 * fem, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Exams passed',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4285714286 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                          Bounceable(
                            onTap: () {},
                            child: Text(
                              'View All',
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625 * ffem / fem,
                                color: const Color(0xff919191),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(24 * fem, 12 * fem, 24 * fem, 0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 106 * fem,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF7966),
                              borderRadius: BorderRadius.circular(16 * fem),
                              border: const Border(),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 76,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          20 * fem, 0 * fem, 20 * fem, 0 * fem),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Notes of the student',
                                              style: SafeGoogleFont(
                                                'Inter',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff000000),
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                          const Icon(
                                              Icons.keyboard_arrow_down_rounded)
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 76 * fem,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            color: const Color(0xFF26262F),
                            borderRadius: BorderRadius.circular(16 * fem),
                            border: const Border(),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      20 * fem, 4 * fem, 20 * fem, 0 * fem),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          '12/11/2022 - Napoli12/11/2022 - Napoli',
                                          style: SafeGoogleFont(
                                            'Inter',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xffE0E0E0),
                                          ),
                                          textAlign: TextAlign.left,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    20 * fem, 0 * fem, 20 * fem, 10 * fem),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        '12/11/2022 - Napoli',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xffBEBEBE),
                                        ),
                                        maxLines: 1,
                                      ),
                                    ),
                                    Text(
                                      'Examinator',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12 * fem,
                                    ),
                                    CircleAvatar(
                                      radius: 12 * fem,
                                      child: ClipOval(
                                        child: SizedBox(
                                          width: 100 * fem,
                                          height: 100 * fem,
                                          child: Image.asset(
                                            'assets/images/image-Bm4.png',
                                            fit: BoxFit.cover,
                                          ),
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
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.fromLTRB(24 * fem, 60 * fem, 24 * fem, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Attendance history',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4285714286 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                          Bounceable(
                            onTap: () {},
                            child: Text(
                              'View All',
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625 * ffem / fem,
                                color: const Color(0xff919191),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12 * fem,
                  ),
                  SizedBox(
                    height: 103 * fem,
                    child: ListView.separated(
                      itemCount: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20 * fem),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (data, index) {
                        return Container(
                          width: 48 * fem,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? const Color(0xFF4E4E60)
                                : const Color(0XFF26262F),
                            borderRadius: BorderRadius.circular(16 * fem),
                            border: Border.all(color: const Color(0xFF5D5D71)),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 8 * fem,
                                  ),
                                  Center(
                                    child: Text(
                                      (index + 1 < 10 ? '0' : '') +
                                          (index + 1).toString(),
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6 * fem,
                                  ),
                                  Text(
                                    'Mo',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFFA2A2B5),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: (index == 0 ? 21 : 15) * fem,
                                child: Center(
                                  child: index == 0
                                      ? Container(
                                          height: 6 * fem,
                                          width: 6 * fem,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFF7966),
                                            borderRadius:
                                                BorderRadius.circular(50 * fem),
                                          ),
                                        )
                                      : const Text(' ❌'), //or ✅
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 8 * fem,
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          24 * fem, 30 * fem, 24 * fem, 15 * fem),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Contract',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4285714286 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                          Bounceable(
                            onTap: () {
                              _onClickEditFile(context);
                            },
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625 * ffem / fem,
                                color: const Color(0xff919191),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20 * fem),
                    child: ContractWidget(
                      onEdit: () {
                        _onClickEditFile(context);
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          24 * fem, 30 * fem, 24 * fem, 15 * fem),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Medical certificate',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4285714286 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                          Bounceable(
                            onTap: () {
                              _onClickEditFile(context);
                            },
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625 * ffem / fem,
                                color: const Color(0xff919191),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20 * fem),
                    child: ContractWidget(
                      onEdit: () {
                        _onClickEditFile(context);
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        24 * fem,
                        30 * fem,
                        24 * fem,
                        15 * fem,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Participation list',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4285714286 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                          Bounceable(
                            onTap: () {},
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625 * ffem / fem,
                                color: const Color(0xff919191),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20 * fem),
                    child: Row(
                      children: [
                        ...[1, 2, 3].map((e) {
                          return Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 4 * fem),
                              height: 68 * fem,
                              decoration: BoxDecoration(
                                color: const Color(0XFF4E4E61).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(16 * fem),
                                border: Border.all(
                                  color:
                                      const Color(0xFFCFCFFC).withOpacity(0.15),
                                ),
                              ),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        (e == 1)
                                            ? 'CIT'
                                            : (e == 2)
                                                ? 'Summmer\nCamp'
                                                : (e == 3)
                                                    ? 'Stage'
                                                    :
                                                    //
                                                    '',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.3625 * ffem / fem,
                                          color: const Color(0xff83839C),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6 * fem,
                                      ),
                                      Text(
                                        '5',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2 * fem,
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 1 * fem,
                                      width: 46 * fem,
                                      color: e == 0
                                          ? const Color(0xFFFFA699)
                                          : e == 1
                                              ? const Color(0xFFAD7BFF)
                                              : e == 2
                                                  ? const Color(0xFF7DFFEE)
                                                  : Colors.amber,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            color: const Color(0xff1c1c23),
            child: Padding(
              padding:
                  EdgeInsets.fromLTRB(24 * fem, 20 * fem, 24 * fem, 12 * fem),
              child: SizedBox(
                // width: 313 * fem,
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
                          fontSize: 12 * ffem,
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
          ),
        ),
      ],
    );
  }
}
