import 'package:awtka/common/app_switch.dart';
import 'package:awtka/features/lesson/repositories/lesson_by_id.dart';
import 'package:awtka/features/lesson/widgets/lesson_create_body_widget.dart';
import 'package:awtka/features/student/models/student_model.dart';
import 'package:awtka/features/student/widgets/common/choose_input_sheet.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class LessonEditBodyWidget extends ConsumerStatefulWidget {
  const LessonEditBodyWidget({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LessonEditBodyWidgetState();
}

class _LessonEditBodyWidgetState extends ConsumerState<LessonEditBodyWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final lessonByIdValue = ref.watch(lessonByIdProvider);
    return lessonByIdValue.when(
      data: (data) {
        return const WrapLessonEditPage();
      },
      error: (e, s) => Center(child: Text('$e$s')),
      loading: () => const Center(child: CupertinoActivityIndicator()),
    );
  }
}

class WrapLessonEditPage extends ConsumerStatefulWidget {
  const WrapLessonEditPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _WrapLessonEditPageState();
}

class _WrapLessonEditPageState extends ConsumerState<WrapLessonEditPage>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    final value = ref.read(lessonByIdProvider);
    if (value.hasValue && value.asData != null) {
      final data = value.asData!.value;
      ref.read(createLessonDateProvider.notifier).state = data.date;
      ref.read(createLessonTimeProvider.notifier).state = data.date;
      ref.read(createLessonNameProvider.notifier).state = data.name;
      ref.read(createLessonLevelProvider.notifier).state =
          ChooseInputSheetOption(
        id: data.level.id ?? '',
        text: data.level.name ?? '',
      );
      ref
          .read(appSwitchProvider('create_lesson_private_lesson').notifier)
          .state = data.private ?? false;
      ref.read(createLessonNoteProvider.notifier).state = data.note ?? '';
      ref.read(createLessonInstructorsProvider.notifier).state =
          data.instructors?.map((e) => studentToModelRelation(e)).toList() ??
              <StudentModel>[];
      ref.read(createLessonStudentsProvider.notifier).state =
          data.students?.map((e) => studentToModelRelation(e)).toList() ??
              <StudentModel>[];
    }
  }

  @override
  Widget build(BuildContext context) {
    return const LessonCreateBodyWidget(
      isEdit: true,
    );
  }
}
