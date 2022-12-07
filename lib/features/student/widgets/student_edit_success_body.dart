import 'package:awtka/common/bounceable.dart';
import 'package:awtka/features/student/widgets/common/contract_widget.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class StudentEditSuccessBody extends ConsumerWidget {
  const StudentEditSuccessBody({super.key});

  // TODO(thien): ask if auto go back or user manual click go back

  _onClickBack(BuildContext context) {
    context.pop();
    context.pop();
  }

  _onClickEditFile(BuildContext context, String id) {
    context.pop();
  }

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // successuploadpdf5Ht (6:78)
        padding: EdgeInsets.fromLTRB(20 * fem, 25 * fem, 15 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff1c1c23),
          borderRadius: BorderRadius.circular(30 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Bounceable(
                onTap: () {
                  _onClickBack(context);
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  // autogroupf7najdL (GF96MCXvAVvjYLsCKrF7Na)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 50 * fem),
                  width: 48 * fem,
                  height: 39 * fem,
                  child: Image.asset(
                    'assets/images/auto-group-f7na.png',
                    width: 48 * fem,
                    height: 39 * fem,
                  ),
                ),
              ),
            ),
            Container(
              // illustrationDHc (6:88)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 11.84 * fem, 32 * fem),
              width: 152.16 * fem,
              height: 151.64 * fem,
              child: Image.asset(
                'assets/images/illustration.png',
                width: 152.16 * fem,
                height: 151.64 * fem,
              ),
            ),
            Container(
              // yeaaah54v (6:106)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 19 * fem, 13 * fem),
              child: Text(
                'Yeaaah!',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * ffem / fem,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // congratulazionihaicaricatocons (6:107)
              margin:
                  EdgeInsets.fromLTRB(17 * fem, 0 * fem, 0 * fem, 41.36 * fem),
              child: Text(
                'Congratulazioni! Hai caricato con successo il file.',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 12 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: const Color(0xffcecece),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 16 * fem),
              child: const ContractWidget(),
            ),
            Bounceable(
              onTap: () {
                _onClickEditFile(context, '');
              },
              child: Container(
                // modificailfile6EE (6:87)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 14 * fem, 0 * fem),
                child: Text(
                  'MODIFICA IL FILE',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                    letterSpacing: 0.84 * fem,
                    color: const Color(0x66ffffff),
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
