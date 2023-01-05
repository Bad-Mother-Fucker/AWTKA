import 'package:awtka/common/app_bar_custom.dart';
import 'package:awtka/features/lesson/widgets/lesson_edit_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LessonEditPage extends ConsumerWidget {
  const LessonEditPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Scaffold(
      backgroundColor: const Color(0xff1C1C23),
      body: Stack(
        children: [
          const LessonEditBodyWidget(),
          Container(
            color: const Color(0xff1c1c23),
            padding:
                EdgeInsets.fromLTRB(24 * fem, 20 * fem, 24 * fem, 12 * fem),
            child: SafeArea(
              bottom: false,
              child: AppBarCustom(
                title: 'Edit lesson',
                onClickBack: () {
                  context.pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
