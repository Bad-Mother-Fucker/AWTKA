import 'package:awtka/common/app_bar_custom.dart';
import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/globals.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sheet/sheet.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class TextInputSheet extends ConsumerWidget {
  const TextInputSheet({
    super.key,
    required this.id,
    required this.title,
    required this.label,
    required this.actionText,
    this.validateRegex,
    this.helpText = '',
    this.isRichText = false,
  });

  final String id;
  final String title;
  final String label;
  final String actionText;
  final RegExp? validateRegex;
  final bool isRichText;
  final String helpText;

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    onSubmit() {
      var value = ref.read(appTextFieldProvider(id));
      if (value.isEmpty) {
        value = ref.read(appTextFieldControllerProvider(id)).text;
      }
      if (validateRegex != null) {
        if (!validateRegex!.hasMatch(value) && Overlay.of(context) != null) {
          showTopSnackBar(
            Overlay.of(context)!,
            const CustomSnackBar.info(
              message: 'Please enter a valid value',
            ),
          );

          return;
        }
      }

      FocusManager.instance.primaryFocus?.unfocus();
      Navigator.of(context).pop(value);
    }

    final valueStyle = SafeGoogleFont(
      'Inter',
      fontSize: 12 * ffem,
      fontWeight: FontWeight.w500,
      height: 1.3333333333 * ffem / fem,
      letterSpacing: 0.200000003 * fem,
      color: const Color(0xffa2a2b5),
    );

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
                    child: Text(label),
                  ),
                  SizedBox(
                    height: 12 * fem,
                  ),
                  SizedBox(
                    height: isRichText ? null : 48 * fem,
                    child: AppTextField(
                      id: id,
                      autofocus: true,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: isRichText ? 12 : 0,
                      ),
                      maxLines: isRichText ? 5 : 1,
                      minLines: isRichText ? 5 : null,
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
