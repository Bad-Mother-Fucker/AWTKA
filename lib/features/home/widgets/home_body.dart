import 'package:awtka/common/calender_icon.dart';
import 'package:awtka/common/home_icon.dart';
import 'package:awtka/features/home/controllers/home_controller.dart';
import 'package:awtka/features/home/widgets/calender_home_body.dart';
import 'package:awtka/features/home/widgets/student_home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeBodyWidget extends ConsumerWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    final bottomHomeNavIndexValue = ref.watch(homeTabIndexProvider);

    return Stack(
      children: [
        Visibility(
          visible: bottomHomeNavIndexValue == HomeTabEnum.home,
          child: const StudentHomeBody(),
        ),
        Visibility(
          visible: bottomHomeNavIndexValue == HomeTabEnum.calender,
          child: const CalenderHomeBody(),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SafeArea(
            child: Container(
              height: 87.93 * fem,
              decoration: BoxDecoration(
                color: const Color(0xff4E4E60),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              margin: EdgeInsets.fromLTRB(12 * fem, 0, 12 * fem, 8 * fem),
              child: const HomeBottomNav(),
            ),
          ),
        )
      ],
    );
  }
}

class HomeBottomNav extends ConsumerWidget {
  const HomeBottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final bottomHomeNavIndexValue = ref.watch(homeTabIndexProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Transform.scale(
            scale: 1.2,
            child: HomeIcon(
              active: bottomHomeNavIndexValue == HomeTabEnum.home,
            ),
          ),
          onPressed: () {
            if (ref.read(homeTabIndexProvider) == HomeTabEnum.home) return;
            ref.read(homeTabIndexProvider.notifier).state = HomeTabEnum.home;
          },
        ),
        IconButton(
          style: IconButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.padded,
          ),
          icon: Transform.scale(
            scale: 1.2,
            child: CalenderIcon(
              active: bottomHomeNavIndexValue == HomeTabEnum.calender,
            ),
          ),
          onPressed: () {
            if (ref.read(homeTabIndexProvider) == HomeTabEnum.calender) return;
            ref.read(homeTabIndexProvider.notifier).state =
                HomeTabEnum.calender;
          },
        ),
      ],
    );
  }
}
