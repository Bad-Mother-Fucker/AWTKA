import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appTextFieldProvider =
    StateProvider.autoDispose.family<String, String>((ref, id) {
  return '';
});

class AppTextField extends ConsumerWidget {
  const AppTextField({
    super.key,
    required this.id,
    this.isPassword = false,
  });

  final String id;
  final bool isPassword;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    ref.watch(appTextFieldProvider(id));

    return Container(
      height: 48 * fem,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff353542)),
        borderRadius: BorderRadius.circular(16 * fem),
      ),
      child: Center(
        child: TextField(
          obscureText: isPassword,
          enableSuggestions: false,
          autocorrect: false,
          onChanged: (val) {
            ref.read(appTextFieldProvider(id).notifier).state = val;
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(
              12 * ffem,
              6 * ffem,
              12 * ffem,
              8 * ffem,
            ),
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