import 'package:awtka/common/app_bar_custom.dart';
import 'package:awtka/common/app_switch.dart';
import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/next_icon.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/features/student/widgets/common/upload_widget.dart';
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

    return Stack(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              padding:
                  EdgeInsets.fromLTRB(16 * fem, 32 * fem, 16 * fem, 38 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff1c1c23),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SafeArea(child: SizedBox(height: 60 * fem)),
                  Container(
                    width: 74 * fem,
                    height: 74 * fem,
                    margin: EdgeInsets.fromLTRB(
                        132 * fem, 0 * fem, 130 * fem, 10 * fem),
                    padding: EdgeInsets.fromLTRB(
                        3 * fem, 11 * fem, 3 * fem, 10 * fem),
                    decoration: BoxDecoration(
                      color: const Color(0xffd9d9d9),
                      borderRadius: BorderRadius.circular(37 * fem),
                    ),
                    child: Center(
                      // profileiconpngimagefreedownloa (1:2439)
                      child: SizedBox(
                        child: Image.asset(
                          'assets/images/profile-icon-png-image-free-download-searchpng-profile-removebg-preview-1-TCv.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // cliccasullafotopercaricarelimm (1:2463)
                    margin: EdgeInsets.fromLTRB(
                        2 * fem, 0 * fem, 0 * fem, 30 * fem),
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
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 190 * fem, 8 * fem),
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
                    margin:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 8 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 22 * fem, 21 * fem, 0 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0x334e4e61),
                      borderRadius: BorderRadius.circular(16 * fem),
                      border: const Border(),
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
                                    Text(
                                      'Name & Surname',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        // placeholdernameZra (1:2413)
                                        'Write name',
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
                                    SizedBox(width: 8 * fem),
                                    const NextIcon(),
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
                                    Text(
                                      'Entry date',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        // placeholdernameZra (1:2413)
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
                  Container(
                    // autolayoutvertical33g (1:2406)
                    margin:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 8 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 22 * fem, 21 * fem, 0 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0x334e4e61),
                      borderRadius: BorderRadius.circular(16 * fem),
                      border: const Border(),
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
                                    Text(
                                      'Level',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        // placeholdernameZra (1:2413)
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
                                    ),
                                    SizedBox(width: 8 * fem),
                                    const NextIcon(),
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
                                    Text(
                                      'Grade',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        // placeholdernameZra (1:2413)
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
                  Container(
                    // autolayoutvertical33g (1:2406)
                    margin:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 8 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 0 * fem, 21 * fem, 0 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0x334e4e61),
                      borderRadius: BorderRadius.circular(16 * fem),
                      border: const Border(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // securityAXc (1:2408)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 18 * fem, 0 * fem, 18 * fem),
                          width: double.infinity,
                          height: 20 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Instructor',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.4285714286 * ffem / fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                              const Spacer(),
                              const AppSwitch(id: 'create_student_instructor'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autolayoutvertical33g (1:2406)
                    margin:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 8 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 0 * fem, 21 * fem, 0 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0x334e4e61),
                      borderRadius: BorderRadius.circular(16 * fem),
                      border: const Border(),
                    ),
                    child: TextField(
                      onChanged: (val) {
                        ref
                            .read(appTextFieldProvider('create_student_note')
                                .notifier)
                            .state = val;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        // labelText: 'Notes',
                        hintText: 'Notes',
                        hintStyle: TextStyle(
                          fontSize: 14 * ffem,
                          color: Color(0xffa2a2b5),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18 * ffem,
                        color: Colors.white,
                      ),
                      minLines: 5,
                      maxLines: 5,
                    ),
                  ),
                  Container(
                    // contractLst (1:2430)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 20 * fem, 256 * fem, 15 * fem),
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
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 0 * fem),
                    child: const UploadWidget(
                      id: 'student_create-upload_contract',
                    ),
                  ),
                  Container(
                    // medicalcertificateUFL (1:2431)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 12 * fem, 187 * fem, 19 * fem),
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
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 0 * fem),
                    child: const UploadWidget(
                      id: 'student_create-upload_certificate',
                    ),
                  ),
                  Bounceable(
                    onTap: () {
                      _onClickCreate(context);
                    },
                    child: Container(
                      // buttonQRp (1:2464)
                      margin: EdgeInsets.fromLTRB(
                          4 * fem, 27 * fem, 4 * fem, 0 * fem),
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
        ),
        SafeArea(
          child: Container(
            color: const Color(0xff1c1c23),
            padding: EdgeInsets.fromLTRB(24 * fem, 20 * fem, 24 * fem, 12 * fem),
            child: AppBarCustom(
              title: 'Aggiungi allievo',
              onClickBack: () {
                _onClickBack(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
