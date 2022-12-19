import 'package:awtka/features/student/repositories/student_by_id.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/home_body.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(currectStudentIdProvider);
    return const Scaffold(
      backgroundColor: Color(0xff1c1c23),
      body: HomeBodyWidget(),
    );
  }
}
