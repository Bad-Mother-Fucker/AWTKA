import 'package:awtka/common/app_bar_custom.dart';
import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/check_icon.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sheet/sheet.dart';

final choosePickerProvider = StateProvider.autoDispose
    .family<ChooseInputSheetOption?, String>((ref, id) {
  return null;
});

class ChooseInputSheetOption {
  ChooseInputSheetOption({
    required this.text,
    required this.id,
  });
  final String text;
  final String id;
}

class ChooseInputSheet extends ConsumerWidget {
  const ChooseInputSheet({
    super.key,
    required this.id,
    required this.title,
    required this.label,
    required this.actionText,
    required this.options,
    required this.initValue,
  });

  final String id;
  final String title;
  final String label;
  final String actionText;
  final List<ChooseInputSheetOption> options;
  final ChooseInputSheetOption? initValue;

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    onSubmit() {
      Navigator.of(context).pop(
        ref.read(choosePickerProvider(id)) ?? initValue,
      );
    }

    final val = ref.watch(choosePickerProvider(id)) ?? initValue;

    return Material(
      color: Colors.transparent,
      child: SheetMediaQuery(
        child: Container(
          color: const Color(0xff1C1C23),
          child: SafeArea(
            top: false,
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
                    height: 300 * fem,
                    child: ListView(
                      children: [
                        ...options.map(
                          (e) {
                            return Container(
                              height: 50 * fem,
                              decoration: BoxDecoration(
                                color: const Color(0xFF26262F),
                                borderRadius: BorderRadius.circular(16 * fem),
                                border: const Border(),
                              ),
                              margin: EdgeInsets.only(
                                bottom: 8 * fem,
                              ),
                              child: Bounceable(
                                onTap: () {
                                  ref
                                      .read(choosePickerProvider(id).notifier)
                                      .state = e;
                                },
                                disabled: true,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 13 * fem,
                                    horizontal: 21 * fem,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(e.text),
                                      ),
                                      if (val?.id == e.id)
                                        Image.asset(
                                          'assets/images/icon_check.png',
                                          height: 24,
                                        )
                                      else
                                        const CheckIcon(
                                          size: 24,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: (32 - 8) * fem,
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
