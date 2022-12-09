import 'package:awtka/common/bounceable.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
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
        SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.fromLTRB(17 * fem, 200 * fem, 0 * fem, 150 * fem),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                StudentCardInfo(),
                StudentCardInfo(),
                StudentCardInfo(),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(17 * fem, 50 * fem, 0 * fem, 15 * fem),
          width: double.infinity,
          color: const Color(0xff1c1c23),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              StudentHomeAppBar(),
              StudentTierFilter(),
            ],
          ),
        ),
      ],
    );
  }
}

class StudentHomeAppBar extends ConsumerWidget {
  const StudentHomeAppBar({super.key});

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
      margin: EdgeInsets.fromLTRB(6 * fem, 0 * fem, 17 * fem, 30 * fem),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // allievigqQ (3:134)
            margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
            child: Text(
              'Allievi',
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
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 15 * fem, 2 * fem),
              width: 48 * fem,
              height: 48 * fem,
              child: Image.asset(
                'assets/images/auto-group-jaae.png',
                width: 48 * fem,
                height: 48 * fem,
              ),
            ),
          ),
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

final studentTierFilterProvider = StateProvider<String>((ref) {
  return 'All';
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

    final listClass = [
      'All',
      'Masterclass',
      'Basic',
      'Leadership',
    ];

    return Container(
      // autogroupdfgnXUe (GF8mxPr9b8DSEZiSJqdFgn)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
      width: 388 * fem,
      height: 40 * fem,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...listClass.map(
              (val) {
                final tierValue = ref.watch(studentTierFilterProvider);
                return Bounceable(
                  onTap: () {
                    ref.read(studentTierFilterProvider.notifier).state = val;
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
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3fb7bfc6),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 75 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        val,
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
  }
}

class StudentCardInfo extends ConsumerWidget {
  const StudentCardInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
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
            height: 72 * fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupfv7grci (GF8nssK3mjBh9catzAFV7G)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 122 * fem, 0 * fem),
                  width: 72 * fem,
                  height: double.infinity,
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
                                  borderRadius: BorderRadius.circular(48 * fem),
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
                                  child: Image.asset(
                                    'assets/images/image-FWa.png',
                                    fit: BoxFit.cover,
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
                Container(
                  // ellipse369GN (14:527)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 11 * fem, 0 * fem),
                  width: 21 * fem,
                  height: 20 * fem,
                  child: Image.asset(
                    'assets/images/ellipse-36.png',
                    width: 21 * fem,
                    height: 20 * fem,
                  ),
                ),
                Container(
                  // gradoeD8 (14:528)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
                  child: Text(
                    '3° Grado',
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
            margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 136 * fem, 16 * fem),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // mariorossidKx (3:78)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 0 * fem),
                  child: Text(
                    'Mario Rossi',
                    style: SafeGoogleFont(
                      'DM Sans',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.3025 * ffem / fem,
                      color: const Color(0xffffffff),
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
                          text: 'Masterclass',
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
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 16 * fem, 0 * fem),
                  width: 138 * fem,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff44aa8b),
                    borderRadius: BorderRadius.circular(8 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Certificato Medico ✅',
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
                    color: const Color(0xff43aa8b),
                    borderRadius: BorderRadius.circular(8 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Contratto ✅',
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
    );
  }
}
