import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/hex_color.dart';
import 'package:awtka/features/student/models/student_level_model.dart';
import 'package:awtka/features/student/models/student_model.dart';
import 'package:awtka/features/student/repositories/student.dart';
import 'package:awtka/features/student/repositories/student_by_id.dart';
import 'package:awtka/features/student/repositories/student_level.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class StudentHomeBody extends ConsumerWidget {
  const StudentHomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Stack(
      children: [
        RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(studentRepositoryProvider);
            ref.invalidate(studentProvider);
          },
          child: SingleChildScrollView(
            child: SafeArea(
              bottom: false,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    17 * fem, 160 * fem, 0 * fem, 150 * fem),
                width: double.infinity,
                child: const _StudentList(),
              ),
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
                    child: StudentHomeAppBar(),
                  ),
                  StudentTierFilter(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// final studentValueFilterByIdProvider =
//     StateProvider.family<List<StudentModel>, List<StudentModel>>(
//         (ref, students) {
//   final newStudents = [...students];
//   final filter = ref.watch(studentTierFilterProvider);
//   if (filter == studentAllFilter) return students;
//   return newStudents
//       .where(
//         (element) =>
//             filter.id != null &&
//             element.student_level.id != null &&
//             element.student_level.id == filter.id,
//       )
//       .toList();
// });

class _StudentList extends ConsumerWidget {
  const _StudentList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final studentValue = ref.watch(studentProvider);

    return studentValue.when(
      data: (data) {
        final dataFilter = data;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...dataFilter.map((student) {
              return StudentCardInfo(
                data: student,
              );
            }).toList(),
          ],
        );
      },
      error: (e, s) => Text('$e$s'),
      loading: () => const CupertinoActivityIndicator(),
    );
  }
}

class StudentHomeAppBar extends ConsumerWidget {
  const StudentHomeAppBar({
    super.key,
    this.showSearch = true,
  });

  final bool showSearch;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    onTapSearch() {
      context.push(FindStudentRoute.path);
    }

    onTapCreate() {
      context.push(StudentCreateRoute.path);
    }

    return Container(
      // autogroupt6fuzSn (GF8mZQWTGUR2UcpPWfT6fU)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 17 * fem, 30 * fem),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // allievigqQ (3:134)
            margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
            child: Text(
              'Students',
              style: SafeGoogleFont(
                'DM Sans',
                fontSize: 40 * ffem,
                fontWeight: FontWeight.w700,
                height: 0.9469999313 * ffem / fem,
                color: const Color(0xffffffff),
              ),
            ),
          ),
          const Spacer(),
          Bounceable(
            onTap: () {
              onTapCreate();
            },
            child: Container(
              // autogroupjaaex2E (GF8mkZrXHxrVywV7DaJaae)
              margin: EdgeInsets.fromLTRB(
                  0 * fem, 0 * fem, showSearch ? 15 * fem : 0, 2 * fem),
              width: 48 * fem,
              height: 48 * fem,
              child: Image.asset(
                'assets/images/auto-group-jaae.png',
                width: 48 * fem,
                height: 48 * fem,
              ),
            ),
          ),
          if (showSearch)
            Bounceable(
              onTap: () {
                onTapSearch();
              },
              child: Container(
                // inputdPG (1:23)
                margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                width: 55 * fem,
                height: 48 * fem,
                child: Image.asset(
                  'assets/images/input.png',
                  width: 55 * fem,
                  height: 48 * fem,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

final studentTierFilterProvider = StateProvider<StudentLevelModel>((ref) {
  return studentAllFilter;
});

class StudentTierFilter extends ConsumerWidget {
  const StudentTierFilter({
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
                    final tierValue = ref.watch(studentTierFilterProvider);
                    return Bounceable(
                      onTap: () {
                        ref.read(studentTierFilterProvider.notifier).state =
                            val;
                        ref
                            .read(studentRepositoryProvider.notifier)
                            .getAll(loading: true);
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

class StudentCardInfo extends ConsumerWidget {
  const StudentCardInfo({super.key, required this.data});
  final StudentModel data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    onTap(String id) {
      ref.read(currectStudentIdProvider.notifier).state = id;
      ref.invalidate(studentByIdProvider);
      ref.invalidate(studentByIdRepositoryProvider);
      context.push(StudentInfoRoute.path, extra: {'id': id});
    }

    return Bounceable(
      onTap: () {
        if (data.id != null) onTap(data.id!);
      },
      child: Container(
        // googleincx82 (3:74)
        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 17 * fem, 30 * fem),
        padding: EdgeInsets.fromLTRB(16 * fem, 12 * fem, 22 * fem, 17 * fem),
        // width: 335 * fem,
        decoration: BoxDecoration(
          color: const Color(0xe5343440),
          borderRadius: BorderRadius.circular(20 * fem),
          boxShadow: [
            BoxShadow(
              color: const Color(0x2d99aac5),
              offset: Offset(0 * fem, 4 * fem),
              blurRadius: 0 * fem,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogrouprmsaAUz (GF8nkCs9fWatZdct46rmSA)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 6 * fem),
              width: double.infinity,
              // height: 72 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupfv7grci (GF8nssK3mjBh9catzAFV7G)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 72 * fem,
                    height: 72 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // logogooglekbc (3:76)
                          left: 4 * fem,
                          top: 8 * fem,
                          child: Container(
                            width: 56 * fem,
                            height: 56 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48 * fem),
                            ),
                            child: Center(
                              // rectangle15F2a (3:77)
                              child: SizedBox(
                                width: double.infinity,
                                height: 56 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(48 * fem),
                                    color: const Color(0xfff5f5f5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // avatarjCe (14:531)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Container(
                            width: 72 * fem,
                            height: 72 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(999 * fem),
                            ),
                            child: Center(
                              // image3DL (14:532)
                              child: CircleAvatar(
                                radius: 100 * fem,
                                child: ClipOval(
                                  child: SizedBox(
                                    width: 137 * fem,
                                    height: 173 * fem,
                                    child: Image.network(
                                      getAvatarUrl(data),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    // ellipse369GN (14:527)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 11 * fem, 0 * fem),
                    width: 20 * fem,
                    height: 20 * fem,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: HexColor(data.student_shirt_color.color ?? ''),
                    ),
                  ),
                  Container(
                    // gradoeD8 (14:528)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
                    child: Text(
                      data.student_shirt_color.name ?? '',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16 * ffem,
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
              // autogroupokotvAe (GF8o62dTCj1MmtbXmbokot)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 16 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      // mariorossidKx (3:78)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 4 * fem, 0 * fem),
                      child: Text(
                        '${data.name} ${data.last_name}',
                        style: SafeGoogleFont(
                          'DM Sans',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.3025 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // masterclass81p (3:79)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont(
                          'DM Sans',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3025 * ffem / fem,
                          color: const Color(0xffebebeb),
                        ),
                        children: [
                          const TextSpan(
                            text: '- ',
                          ),
                          TextSpan(
                            text: data.student_level.name,
                            style: SafeGoogleFont(
                              'DM Sans',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3025 * ffem / fem,
                              color: const Color(0xccebebeb),
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
              // designaY2 (3:80)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 39 * fem, 0 * fem),
              width: double.infinity,
              height: 26 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8 * fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupcxyaHBY (GF8ojRiocmEsBG2XGucxYa)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 16 * fem, 0 * fem),
                    width: 138 * fem,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: data.certificates == null ||
                              data.certificates!.isEmpty
                          ? const Color(0xffFFB237)
                          : const Color(0xff44aa8b),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Certificato Medico ${data.certificates == null || data.certificates!.isEmpty ? ' ⚠️' : ' ✅'}',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroup8uwvine (GF8osFq6Hu52x4tC448UWv)
                    width: 100 * fem,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: data.contracts == null || data.contracts!.isEmpty
                          ? const Color(0xffFFB237)
                          : const Color(0xff44aa8b),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Contratto ${data.contracts == null || data.contracts!.isEmpty ? ' ⚠️' : ' ✅'}',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xffffffff),
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
    );
  }
}
