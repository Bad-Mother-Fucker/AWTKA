import 'package:awtka/features/student/widgets/student_create_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentCreatePage extends ConsumerWidget {
  const StudentCreatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      backgroundColor: Color(0xff1C1C23),
      body: StudentCreatePageBodyWidget(),
    );
  }
}
