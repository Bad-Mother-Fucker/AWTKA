import 'package:awtka/features/student/widgets/student_edit_profile_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentEditProfilePage extends ConsumerWidget {
  const StudentEditProfilePage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      backgroundColor: Color(0xff1C1C23),
      body: StudentEditProfileBody(),
    );
  }
}
