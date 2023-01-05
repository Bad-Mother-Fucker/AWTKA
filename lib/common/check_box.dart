import 'package:awtka/common/bounceable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appCheckBoxProvider =
    StateProvider.autoDispose.family<bool, String>((ref, id) {
  return false;
});

class AppCheckBox extends ConsumerWidget {
  const AppCheckBox({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    final value = ref.watch(appCheckBoxProvider(id));

    return Bounceable(
      onTap: () {
        ref.read(appCheckBoxProvider(id).notifier).update((state) => !state);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 7.5 * fem, 0 * fem),
        width: 24 * fem,
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: value ? const Color(0xff5EAE76) : const Color(0xff353542),
          ),
          color: value ? const Color(0xff5EAE76) : Colors.transparent,
          borderRadius: BorderRadius.circular(8 * fem),
        ),
        child: value
            ? const Icon(
                Icons.check,
                size: 16,
                color: Colors.white,
              )
            : const SizedBox(),
      ),
    );
  }
}
