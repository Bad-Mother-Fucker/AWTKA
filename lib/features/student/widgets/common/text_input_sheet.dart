import 'package:awtka/common/app_bar_custom.dart';
import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sheet/sheet.dart';

class TextInputSheet extends ConsumerWidget {
  const TextInputSheet({
    super.key,
    required this.id,
    required this.title,
    required this.label,
    required this.actionText,
  });

  final String id;
  final String title;
  final String label;
  final String actionText;

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    onSubmit() {
      Navigator.of(context).pop(ref.read(appTextFieldProvider(id)));
    }

    return Material(
      color: Colors.transparent,
      child: SheetMediaQuery(
        child: Container(
          color: const Color(0xff1C1C23),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 40 * fem, horizontal: 30 * fem),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  AppBarCustom(
                    title: title,
                    onClickBack: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(
                    height: 45 * fem,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(label),
                  ),
                  SizedBox(
                    height: 12 * fem,
                  ),
                  SizedBox(
                    height: 48 * fem,
                    child: AppTextField(
                      id: id,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ),
                  SizedBox(
                    height: 32 * fem,
                  ),
                  Bounceable(
                    onTap: () {
                      onSubmit();
                    },
                    child: Container(
                      // button7zi (1:48)
                      margin: EdgeInsets.fromLTRB(
                          2 * fem, 0 * fem, 1 * fem, 0 * fem),
                      width: double.infinity,
                      height: 48 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xffff7966),
                        borderRadius: BorderRadius.circular(999 * fem),
                        border: const Border(),
                      ),
                      child: Center(
                        child: Text(
                          actionText,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
