import 'package:awtka/features/lesson/widgets/lesson_create_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LessonCreatePage extends ConsumerWidget {
  const LessonCreatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      backgroundColor: Color(0xff1C1C23),
      body: LessonCreateBodyWidget(
        isEdit: false,
      ),
    );
  }
}
