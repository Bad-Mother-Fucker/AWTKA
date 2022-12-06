import 'package:awtka/features/student/widgets/student_edit_success_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentEditSuccessPage extends ConsumerWidget {
  const StudentEditSuccessPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      backgroundColor: Color(0xff1C1C23),
      body: StudentEditSuccessBody(),
    );
  }
}
