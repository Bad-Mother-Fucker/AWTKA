import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appSwitchProvider =
    StateProvider.autoDispose.family<bool, String>((ref, id) {
  return false;
});

class AppSwitch extends ConsumerWidget {
  const AppSwitch({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(appSwitchProvider(id));

    return SizedBox(
      // width: 32.04 * fem,
      // height: 21 * fem,
      child: CupertinoSwitch(
        value: value,
        onChanged: (value) {
          ref.read(appSwitchProvider(id).notifier).state = value;
        },
        activeColor: const Color(0xffF65A38),
        // thumbColor: Color(0xffF65A38),
      ),
    );
  }
}
