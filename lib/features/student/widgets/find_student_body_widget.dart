import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/features/home/widgets/student_home_body.dart';
import 'package:awtka/features/student/models/student_level_model.dart';
import 'package:awtka/features/student/repositories/search_student.dart';
import 'package:awtka/features/student/repositories/student_by_id.dart';
import 'package:awtka/features/student/repositories/student_level.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FindStudentBodyWidget extends ConsumerWidget {
  const FindStudentBodyWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    // _onClickBack(BuildContext context) {
    //   context.pop();
    // }

    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Container(
            // search62E (3:221)
            padding: EdgeInsets.fromLTRB(12 * fem, 20 * fem, 12 * fem, 0),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff1c1c23),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  bottom: false,
                  child: SizedBox(
                    height: 140 * fem,
                  ),
                ),

                // SearchStudentFilter(),
                // Container(
                //   // cercaallievodgN (3:222)
                //   margin:
                //       EdgeInsets.fromLTRB(4 * fem, 25 * fem, 0 * fem, 15 * fem),
                //   constraints: const BoxConstraints(
                //       // maxWidth: 123 * fem,
                //       ),
                //   child: RichText(
                //     text: TextSpan(
                //       style: SafeGoogleFont(
                //         'DM Sans',
                //         fontSize: 40 * ffem,
                //         fontWeight: FontWeight.w700,
                //         height: 0.9469999313 * ffem / fem,
                //         color: const Color(0xffffffff),
                //       ),
                //       children: [
                //         const TextSpan(
                //           text: 'Cerca\n',
                //         ),
                //         TextSpan(
                //           text: 'allievo',
                //           style: SafeGoogleFont(
                //             'DM Sans',
                //             fontSize: 40 * ffem,
                //             fontWeight: FontWeight.w700,
                //             height: 0.9469999313 * ffem / fem,
                //             color: const Color(0xffef243d),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Container(
                  // searchSnE (3:273)
                  margin:
                      EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 30 * fem),
                  padding: EdgeInsets.fromLTRB(
                      17.57 * fem, 0 * fem, 5.86 * fem, 0 * fem),
                  decoration: BoxDecoration(
                    color: const Color(0xff3d3c48),
                    borderRadius: BorderRadius.circular(10 * fem),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: const Color(0x2d99aac5),
                    //     offset: Offset(0 * fem, 4 * fem),
                    //     blurRadius: 31 * fem,
                    //   ),
                    // ],
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
                          controller: ref.watch(
                            appTextFieldControllerProvider(
                                'search_student_input'),
                          ),
                          onChanged: (val) {
                            ref
                                .read(
                                    appTextFieldProvider('search_student_input')
                                        .notifier)
                                .state = val;
                          },
                          onSubmitted: (value) {
                            ref
                                .read(searchStudentRepositoryProvider.notifier)
                                .getAll();
                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 0),
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
                      margin: EdgeInsets.fromLTRB(
                          15 * fem, 0 * fem, 0 * fem, 30 * fem),
                      child: const ListSearchResult(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: const Color(0xff1c1c23),
          child: SafeArea(
            bottom: false,
            child: Container(
              padding:
                  EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 15 * fem),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17 * fem),
                    child: const StudentHomeAppBar(
                      showSearch: false,
                    ),
                  ),
                  const SearchStudentFilter(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ListSearchResult extends ConsumerWidget {
  const ListSearchResult({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    final value = ref.watch(searchStudentProvider);

    onClickStudent(String? id) {
      FocusManager.instance.primaryFocus?.unfocus();
      if (id == null) return;
      ref.read(currectStudentIdProvider.notifier).state = id;
      ref.invalidate(studentByIdProvider);
      ref.invalidate(studentByIdRepositoryProvider);
      context.push(StudentInfoRoute.path, extra: {'id': id});
    }

    return value.when(
      data: (data) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...data
                .map(
                  (student) => Padding(
                    padding: EdgeInsets.only(
                      bottom: 30 * fem,
                    ),
                    child: Bounceable(
                      onTap: () {
                        onClickStudent(student.id);
                      },
                      child: Text(
                        // mariobasic3zJ (7:581)
                        '${student.name} ${student.last_name} - ${student.student_level.name}',
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
        );
      },
      error: (e, s) => Center(child: Text('$e$s')),
      loading: () => const Center(child: CupertinoActivityIndicator()),
    );
  }
}

class SearchStudentFilter extends ConsumerWidget {
  const SearchStudentFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    final studentLevelValue = ref.watch(studentLevelProvider);

    return studentLevelValue.when(
      data: (data) {
        return Container(
          // autogroupdfgnXUe (GF8mxPr9b8DSEZiSJqdFgn)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
          // width: 388 * fem,
          height: 40 * fem,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 17 * fem),
                ...[studentAllFilter, ...data].map(
                  (val) {
                    final tierValue = ref.watch(searchStudentFilterProvider);
                    return Bounceable(
                      onTap: () {
                        ref.read(searchStudentFilterProvider.notifier).state =
                            val;
                        ref
                            .read(searchStudentRepositoryProvider.notifier)
                            .getAll();
                      },
                      child: Container(
                        // filtercW6 (3:61)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 12 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 20 * fem, 0 * fem),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: tierValue == val
                              ? const Color(0xffff8975)
                              : const Color(0x33c2badd),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Center(
                          child: Text(
                            val.name ?? 'Nan',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const LinearProgressIndicator(),
    );
  }
}
