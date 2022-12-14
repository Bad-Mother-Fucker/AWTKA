import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final appTextFieldProvider =
    StateProvider.autoDispose.family<String, String>((ref, id) {
  return '';
});

final appTextFieldControllerProvider =
    StateProvider.autoDispose.family<TextEditingController, String>((ref, id) {
  return TextEditingController(text: '');
});

class AppTextField extends ConsumerWidget {
  const AppTextField({
    super.key,
    required this.id,
    this.isPassword = false,
    this.suffixIcon,
    this.padding,
    this.maxLines = 1,
    this.minLines,
  });

  final String id;
  final bool isPassword;
  final Widget? suffixIcon;
  final EdgeInsets? padding;
  final int? maxLines;
  final int? minLines;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    ref.watch(appTextFieldProvider(id));

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff353542)),
        borderRadius: BorderRadius.circular(16 * fem),
      ),
      child: Center(
        child: TextField(
          obscureText: isPassword,
          controller: ref.watch(appTextFieldControllerProvider(id)),
          enableSuggestions: false,
          autocorrect: false,
          onChanged: (val) {
            ref.read(appTextFieldProvider(id).notifier).state = val;
          },
          maxLines: maxLines,
          minLines: minLines,
          decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
            contentPadding: padding ??
                EdgeInsets.fromLTRB(
                  12 * ffem,
                  12 * ffem,
                  12 * ffem,
                  12 * ffem,
                ),
            suffixIcon: suffixIcon,
          ),
          style: TextStyle(
            fontSize: 18 * ffem,
            // height: 1.3333333333 * ffem / fem,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
