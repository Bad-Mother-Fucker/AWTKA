import 'package:awtka/common/app_bar_custom.dart';
import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sheet/sheet.dart';

class TextInput2DataSheet extends ConsumerWidget {
  const TextInput2DataSheet({
    super.key,
    required this.idA,
    required this.idB,
    required this.title,
    required this.labelA,
    required this.labelB,
    required this.actionText,
    this.helpText = '',
  });

  final String idA;
  final String idB;
  final String title;
  final String labelA;
  final String labelB;
  final String actionText;
  final String helpText;

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    onSubmit() {
      var valueA = ref.read(appTextFieldProvider(idA));
      if (valueA.isEmpty) {
        valueA = ref.read(appTextFieldControllerProvider(idA)).text;
      }
      var valueB = ref.read(appTextFieldProvider(idB));
      if (valueB.isEmpty) {
        valueB = ref.read(appTextFieldControllerProvider(idB)).text;
      }

      FocusManager.instance.primaryFocus?.unfocus();
      Navigator.of(context).pop(
        {
          'A': valueA,
          'B': valueB,
        },
      );
    }

    final valueStyle = SafeGoogleFont(
      'Inter',
      fontSize: 12 * ffem,
      fontWeight: FontWeight.w500,
      height: 1.3333333333 * ffem / fem,
      letterSpacing: 0.200000003 * fem,
      color: const Color(0xffa2a2b5),
    );

    ref.watch(appTextFieldProvider(idA));
    ref.watch(appTextFieldProvider(idB));

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
                      FocusManager.instance.primaryFocus?.unfocus();
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(
                    height: 45 * fem,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(labelA),
                  ),
                  SizedBox(
                    height: 12 * fem,
                  ),
                  SizedBox(
                    height: 48 * fem,
                    child: AppTextField(
                      id: idA,
                      autofocus: true,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    height: 12 * fem,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(labelB),
                  ),
                  SizedBox(
                    height: 12 * fem,
                  ),
                  SizedBox(
                    height: 48 * fem,
                    child: AppTextField(
                      id: idB,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      maxLines: 1,
                    ),
                  ),
                  if (helpText.isNotEmpty) ...[
                    SizedBox(
                      height: 12 * fem,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        helpText,
                        style: valueStyle,
                      ),
                    ),
                    SizedBox(
                      height: 20 * fem,
                    ),
                  ] else
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
                  SafeArea(
                    top: false,
                    child: SizedBox(
                      height: MediaQuery.of(context).viewInsets.bottom,
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
