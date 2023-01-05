import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/features/student/widgets/common/upload_widget.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class StudentEditProfileBody extends ConsumerWidget {
  const StudentEditProfileBody({super.key});

  _onClickBack(BuildContext context) {
    context.pop();
  }

  _onClickUpload(BuildContext context, String id) {
    // TODO(thien): logic for upload file and update student info
    context.push(StudentEditSuccessRoute.path, extra: {'id': id});
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
              // uploadfilemedialcertificateorc (6:38)
              padding:
                  EdgeInsets.fromLTRB(20 * fem, 36 * fem, 20 * fem, 31 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff1c1c23),
                borderRadius: BorderRadius.circular(30 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SafeArea(child: SizedBox(height: 30 * fem)),
                  Container(
                    // avatarAne (6:201)
                    margin: EdgeInsets.fromLTRB(
                        132 * fem, 0 * fem, 131 * fem, 8 * fem),
                    width: double.infinity,
                    height: 72 * fem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(999 * fem),
                    ),
                    child: Center(
                      // image5ei (6:202)
                      child: CircleAvatar(
                        radius: 137 * fem,
                        child: ClipOval(
                          child: SizedBox(
                            width: 137 * fem,
                            height: 173 * fem,
                            child: Image.asset(
                              'assets/images/image-tTc.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // johndoePfQ (6:200)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 46 * fem),
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
                  Container(
                    // addfilefcv (6:59)
                    alignment: Alignment.centerLeft,
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                    child: Text(
                      'Add file',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    // loremipsumdocetundeomnisistena (6:60)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 18 * fem),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Lorem ipsum docet unde omnis iste natus error sit',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffb3b3b3),
                      ),
                    ),
                  ),
                  const UploadWidget(id: 'student_edit_profile-upload'),
                  Container(
                    // information4S6 (6:46)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 15 * fem, 0 * fem, 28 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // information9TY (6:48)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 13 * fem),
                          child: Text(
                            'Information',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // autolayoutvertical33g (1:2406)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 8 * fem),
                          padding: EdgeInsets.fromLTRB(
                              20 * fem, 0 * fem, 21 * fem, 0 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xff31313c),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: TextField(
                            onChanged: (val) {
                              ref
                                  .read(
                                      appTextFieldProvider('edit_student_note')
                                          .notifier)
                                  .state = val;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  'Excepteur sint occaecat cupidatat non proident',
                              hintStyle: TextStyle(
                                fontSize: 13 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xffa9a5b8),
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
                      ],
                    ),
                  ),
                  Bounceable(
                    onTap: () {
                      _onClickUpload(context, '');
                    },
                    child: Container(
                      // buttonUgA (15:636)
                      margin: EdgeInsets.fromLTRB(
                          10 * fem, 0 * fem, 10 * fem, 0 * fem),
                      width: double.infinity,
                      height: 60 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xffff8869),
                        borderRadius: BorderRadius.circular(99 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Carica file',
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
        Align(
          alignment: Alignment.topLeft,
          child: SafeArea(
            child: Container(
              // color: const Color(0xff1c1c23),
              padding:
                  EdgeInsets.fromLTRB(24 * fem, 20 * fem, 24 * fem, 0 * fem),
              child: Row(
                children: [
                  Bounceable(
                    onTap: () {
                      _onClickBack(context);
                    },
                    child: SizedBox(
                      width: 32 * fem,
                      height: 32 * fem,
                      child: Image.asset(
                        'assets/images/back-navs-1kN.png',
                        width: 32 * fem,
                        height: 32 * fem,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
