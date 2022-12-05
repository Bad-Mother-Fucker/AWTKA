import 'package:awtka/features/student/widgets/student_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentPage extends ConsumerWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const StudentBodyWidget();
  }
}
