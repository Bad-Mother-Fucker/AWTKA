import 'package:awtka/common/bounceable.dart';
import 'package:awtka/features/student/repositories/student_by_id.dart';
import 'package:awtka/features/student/widgets/student_info_body.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class StudentInfoPage extends ConsumerWidget {
  const StudentInfoPage({
    super.key,
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(studentByIdProvider);
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    onClickBack() {
      context.pop();
    }

    onClickEditProfile() {
      context.push(StudentCreateRoute.path, extra: {'id': 'id'});
    }

    return Scaffold(
      backgroundColor: const Color(0xff1C1C23),
      body: Stack(
        children: [
          value.when(
            data: (data) => StudentInfoBodyWidget(data: data),
            error: (e, s) => Center(child: Text('$e, $s')),
            loading: () => const Center(child: CupertinoActivityIndicator()),
          ),
          Container(
            color: const Color(0xff1c1c23),
            child: SafeArea(
              bottom: false,
              child: Container(
                color: const Color(0xff1c1c23),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      24 * fem, 20 * fem, 24 * fem, 12 * fem),
                  child: SizedBox(
                    // width: 313 * fem,
                    height: 32 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Bounceable(
                          onTap: () {
                            onClickBack();
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
                        if (!value.isLoading && !value.hasError)
                          Bounceable(
                            onTap: () {
                              onClickEditProfile();
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
          ),
        ],
      ),
    );
  }
}
