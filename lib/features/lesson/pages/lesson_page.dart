import 'package:awtka/features/lesson/widgets/lesson_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LessonPage extends ConsumerWidget {
  const LessonPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const LessonBodyWidget();
  }
}
