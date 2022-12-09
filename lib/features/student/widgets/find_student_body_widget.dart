import 'package:awtka/common/app_bar_custom.dart';
import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FindStudentBodyWidget extends ConsumerWidget {
  const FindStudentBodyWidget({super.key});

  _onClickBack(BuildContext context) {
    context.pop();
  }

  _onClickStudent(BuildContext context, String id) {
    context.push(StudentInfoRoute.path, extra: {'id': id});
  }

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // search62E (3:221)
        padding: EdgeInsets.fromLTRB(24 * fem, 20 * fem, 24 * fem, 0),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff1c1c23),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: AppBarCustom(
                title: '',
                onClickBack: () {
                  _onClickBack(context);
                },
              ),
            ),
            Container(
              // cercaallievodgN (3:222)
              margin: EdgeInsets.fromLTRB(4 * fem, 25 * fem, 0 * fem, 15 * fem),
              constraints: const BoxConstraints(
                  // maxWidth: 123 * fem,
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
                      text: 'Cerca\n',
                    ),
                    TextSpan(
                      text: 'allievo',
                      style: SafeGoogleFont(
                        'DM Sans',
                        fontSize: 40 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 0.9469999313 * ffem / fem,
                        color: const Color(0xffef243d),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // searchSnE (3:273)
              margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 30 * fem),
              padding: EdgeInsets.fromLTRB(
                  17.57 * fem, 0 * fem, 5.86 * fem, 0 * fem),
              decoration: BoxDecoration(
                color: const Color(0xff3d3c48),
                borderRadius: BorderRadius.circular(10 * fem),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x2d99aac5),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 31 * fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // iconsearchUU2 (3:275)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 10 * fem, 0 * fem),
                    width: 23.43 * fem,
                    height: 24 * fem,
                    child: Image.asset(
                      'assets/images/icon-search-Ad8.png',
                      width: 23.43 * fem,
                      height: 24 * fem,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      textInputAction: TextInputAction.done,
                      controller: ref.watch(appTextFieldControllerProvider(
                          'search_student_input')),
                      onChanged: (val) {
                        ref
                            .read(appTextFieldProvider('search_student_input')
                                .notifier)
                            .state = val;
                      },
                      onSubmitted: (value) {
                        // TODO: call API search
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                        hintText: '',
                        hintStyle: TextStyle(
                          color: Color(0xffa2a2b5),
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Bounceable(
                    onTap: () {
                      // clear text:
                      ref
                          .read(appTextFieldProvider('search_student_input')
                              .notifier)
                          .state = '';
                      ref
                          .read(appTextFieldControllerProvider(
                              'search_student_input'))
                          .text = '';
                    },
                    child: SizedBox(
                      // removefaS (5:413)
                      width: 28.11 * fem,
                      height: 24 * fem,
                      child: Image.asset(
                        'assets/images/remove.png',
                        width: 28.11 * fem,
                        height: 24 * fem,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  // group34NDx (7:580)
                  margin:
                      EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 30 * fem),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...[1, 2, 3, 4, 5, 6, 7, 8]
                          .map(
                            (data) => Padding(
                              padding: EdgeInsets.only(
                                bottom: 30 * fem,
                              ),
                              child: Bounceable(
                                onTap: () {
                                  _onClickStudent(context, 'id');
                                },
                                child: Text(
                                  // mariobasic3zJ (7:581)
                                  'Mario - Basic',
                                  style: SafeGoogleFont(
                                    'DM Sans',
                                    fontSize: 18 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3025 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ],
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
