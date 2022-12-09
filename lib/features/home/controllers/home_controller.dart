import 'package:flutter_riverpod/flutter_riverpod.dart';

enum HomeTabEnum {
  home,
  calender,
  setting,
}

final homeTabIndexProvider = StateProvider<HomeTabEnum>((ref) {
  return HomeTabEnum.home;
});
