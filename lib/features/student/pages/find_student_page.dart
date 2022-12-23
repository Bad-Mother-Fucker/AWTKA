import 'package:awtka/features/student/widgets/find_student_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FindStudentPage extends ConsumerWidget {
  const FindStudentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      backgroundColor: Color(0xff1c1c23),
      body: FindStudentBodyWidget(),
    );
  }
}
