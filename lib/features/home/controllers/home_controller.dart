import 'package:flutter_riverpod/flutter_riverpod.dart';

enum HomeTabEnum {
  home,
  calender,
}

final homeTabIndexProvider = StateProvider<HomeTabEnum>((ref) {
  return HomeTabEnum.home;
});
