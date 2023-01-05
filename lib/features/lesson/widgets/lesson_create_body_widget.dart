import 'package:awtka/common/app_switch.dart';
import 'package:awtka/common/avatar_group.dart';
import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/calender_icon.dart';
import 'package:awtka/common/configm_alert.dart';
import 'package:awtka/common/expand_widget.dart';
import 'package:awtka/common/material_sheet.dart';
import 'package:awtka/common/next_icon.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/features/lesson/model/lesson_model.dart';
import 'package:awtka/features/lesson/repositories/lesson_by_id.dart';
import 'package:awtka/features/lesson/repositories/lessons.dart';
import 'package:awtka/features/lesson/widgets/sheet/choose_instructor_sheet.dart';
import 'package:awtka/features/lesson/widgets/sheet/choose_student_sheet.dart';
import 'package:awtka/features/student/models/student_level_model.dart';
import 'package:awtka/features/student/models/student_model.dart';
import 'package:awtka/features/student/repositories/student_level.dart';
import 'package:awtka/features/student/widgets/common/choose_input_sheet.dart';
import 'package:awtka/features/student/widgets/common/text_input_sheet.dart';
import 'package:awtka/globals.dart';
import 'package:awtka/utils.dart';
import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:sheet/sheet.dart';
import 'package:table_calendar/table_calendar.dart';

final createLessonLoadingProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final deleteLessonLoadingProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final createLessonDateProvider = StateProvider.autoDispose<DateTime>((ref) {
  return DateTime.now();
});

final createLessonTimeProvider = StateProvider.autoDispose<DateTime>((ref) {
  return DateTime.now();
});

final createLessonNameProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

final createLessonLevelProvider =
    StateProvider.autoDispose<ChooseInputSheetOption?>((ref) {
  return null;
});

final createLessonInstructorsProvider =
    StateProvider.autoDispose<List<StudentModel>>((ref) {
  return [];
});

final createLessonStudentsProvider =
    StateProvider.autoDispose<List<StudentModel>>((ref) {
  return [];
});

final createLessonPrivateProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final createLessonNoteProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

class LessonCreateBodyWidget extends ConsumerWidget {
  const LessonCreateBodyWidget({
    super.key,
    required this.isEdit,
  });

  final bool isEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    final headerStyle = SafeGoogleFont(
      'Inter',
      fontSize: 14 * ffem,
      fontWeight: FontWeight.w500,
      // height: 1.4285714286 * ffem / fem,
      color: const Color(0xffffffff),
    );

    final labelStyle = SafeGoogleFont(
      'Inter',
      fontSize: 14 * ffem,
      fontWeight: FontWeight.w500,
      height: 1.4285714286 * ffem / fem,
      color: const Color(0xffffffff),
    );

    final valueStyle = SafeGoogleFont(
      'Inter',
      fontSize: 12 * ffem,
      fontWeight: FontWeight.w500,
      height: 1.3333333333 * ffem / fem,
      letterSpacing: 0.200000003 * fem,
      color: const Color(0xffa2a2b5),
    );

    final studentLevelValue = ref.watch(studentLevelProvider);

    ref.watch(appTextFieldControllerProvider('create_lesson_name'));
    ref.watch(createLessonDateProvider);
    ref.watch(createLessonTimeProvider);
    ref.watch(createLessonNoteProvider);
    final lessonName = ref.watch(createLessonNameProvider);
    final lessonLevel = ref.watch(createLessonLevelProvider);

    final instructorsList = ref.watch(createLessonInstructorsProvider);
    final studentsList = ref.watch(createLessonStudentsProvider);

    pushSuccess() {
      ref.invalidate(lessonRepositoryProvider);

      if (isEdit) {
        context.pop();
      } else {
        context.pop();
      }
    }

    onTapEditStudents() async {
      final students = await Navigator.of(context).push<List<StudentModel>?>(
        MaterialSheetRoute<List<StudentModel>?>(
          fit: SheetFit.loose,
          backgroundColor: Colors.transparent,
          builder: (BuildContext context) => ChooseStudentsSheet(
            title: 'Choose Students',
            label: 'Select the students for the lesson',
            actionText: 'Save',
            initValue: ref.read(createLessonStudentsProvider),
          ),
        ),
      );
      if (students != null && students.isNotEmpty) {
        ref.read(createLessonStudentsProvider.notifier).state = students;
      }
    }

    onTapEditInstructors() async {
      final instructors = await Navigator.of(context).push<List<StudentModel>?>(
        MaterialSheetRoute<List<StudentModel>?>(
          fit: SheetFit.loose,
          backgroundColor: Colors.transparent,
          builder: (BuildContext context) => ChooseInstructorsSheet(
            title: 'Choose Instructors',
            label: 'Select the instructors for the lesson',
            actionText: 'Save',
            initValue: ref.read(createLessonInstructorsProvider),
          ),
        ),
      );
      if (instructors != null && instructors.isNotEmpty) {
        ref.read(createLessonInstructorsProvider.notifier).state = instructors;
      }
    }

    onTapEditName() async {
      final initAddress = ref.read(createLessonNameProvider);
      ref.read(appTextFieldControllerProvider('create_lesson_name')).text =
          initAddress;

      final name = await Navigator.of(context).push<String?>(
        MaterialSheetRoute<String?>(
          fit: SheetFit.loose,
          builder: (BuildContext context) => const TextInputSheet(
            id: 'create_lesson_name',
            title: 'Insert name',
            label: 'Name',
            actionText: 'Save',
          ),
        ),
      );
      if (name != null && name.isNotEmpty) {
        ref.read(createLessonNameProvider.notifier).state = name;
      }
    }

    onTapEditLevel(List<ChooseInputSheetOption> options) async {
      final lessonLevel =
          await Navigator.of(context).push<ChooseInputSheetOption?>(
        MaterialSheetRoute<ChooseInputSheetOption?>(
          fit: SheetFit.loose,
          builder: (BuildContext context) => ChooseInputSheet(
            id: 'create_lesson_lesson_level',
            title: 'Choose lesson level',
            label: 'Level',
            actionText: 'Save',
            initValue: ref.read(createLessonLevelProvider),
            options: options,
          ),
        ),
      );
      if (lessonLevel != null) {
        ref.read(createLessonLevelProvider.notifier).state = lessonLevel;
      }
    }

    Future<void> onClickDelete() async {
      if (ref.read(deleteLessonLoadingProvider)) return;

      try {
        ref.read(deleteLessonLoadingProvider.notifier).state = true;

        final x = await showAlertDialog(context);
        if (!x) {
          ref.read(deleteLessonLoadingProvider.notifier).state = false;
          return;
        }

        final id = ref.read(currectLessonIdProvider);
        if (id == null) return;
        await ref.read(lessonRepositoryProvider.notifier).delete(id);

        pushSuccess();
      } catch (e, s) {
        showSnackBar(contentText: e.toString());
        debugPrint('$e $s');
      } finally {
        ref.read(deleteLessonLoadingProvider.notifier).state = false;
      }
    }

    Future<void> onClickCreate() async {
      if (ref.read(createLessonLoadingProvider)) return;

      final date = ref.read(createLessonDateProvider);
      final time = ref.read(createLessonTimeProvider);
      final lessonName = ref.read(createLessonNameProvider);
      final lessonLevel = ref.read(createLessonLevelProvider);
      final private =
          ref.read(appSwitchProvider('create_lesson_private_lesson'));
      final note = ref.read(createLessonNoteProvider);
      final instructors = ref.read(createLessonInstructorsProvider);
      final students = ref.read(createLessonStudentsProvider);

      if (lessonName.isEmpty) {
        showTopSnackBarInfo(
          context: context,
          message: 'Please input name!',
        );
        return;
      }

      if (lessonLevel?.id == null) {
        showTopSnackBarInfo(
          context: context,
          message: 'Please choose level!',
        );
        return;
      }

      if (instructors.isEmpty) {
        showTopSnackBarInfo(
          context: context,
          message: 'Please choose instructors!',
        );
        return;
      }

      if (students.isEmpty) {
        showTopSnackBarInfo(
          context: context,
          message: 'Please choose students!',
        );
        return;
      }

      if (note.isEmpty) {
        showTopSnackBarInfo(
          context: context,
          message: 'Please input notes!',
        );
        return;
      }

      final model = LessonModel(
        collectionId: null,
        collectionName: null,
        created: null,
        updated: null,
        id: null,
        date: DateTime(
          date.year,
          date.month,
          date.day,
          time.hour,
          time.minute,
          time.second,
          time.millisecond,
          time.microsecond,
        ),
        instructors: instructors.map((e) => studentRelationToModel(e)).toList(),
        level: StudentLevelModel(
          id: lessonLevel?.id,
        ),
        name: lessonName,
        note: note,
        private: private,
        students: students.map((e) => studentRelationToModel(e)).toList(),
      );

      ref.read(createLessonLoadingProvider.notifier).state = true;

      try {
        AsyncValue res;
        if (!isEdit) {
          res = await ref.read(lessonRepositoryProvider.notifier).create(
                model.copyWith(id: null),
              );
        } else {
          var updateModel = model.copyWith(
            id: ref.read(currectLessonIdProvider),
          );
          res = await ref.read(lessonRepositoryProvider.notifier).update(
                updateModel,
              );
        }

        if (!res.hasError) {
          pushSuccess();
        } else {
          debugPrint('$res');
          showSnackBar(contentText: res.error.toString());
        }
      } catch (e, s) {
        showSnackBar(contentText: e.toString());
        debugPrint('$e $s');
      } finally {
        ref.read(createLessonLoadingProvider.notifier).state = false;
      }
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(bottom: false, child: Row()),
          SizedBox(height: 60 * fem),
          SizedBox(height: 35 * fem),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30 * fem),
            child: Text(
              'Quando',
              style: headerStyle,
            ),
          ),
          SizedBox(height: 18 * fem),
          const _LessonDateCreateCalender(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30 * fem),
            child: const _LessonCreateCalender(),
          ),
          SizedBox(height: 18 * fem),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30 * fem),
            child: Text(
              'A che ora',
              style: headerStyle,
            ),
          ),
          SizedBox(
            height: 140 * fem,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.time,
              initialDateTime: DateTime.now(),
              use24hFormat: false,
              onDateTimeChanged: (val) {
                ref.read(createLessonTimeProvider.notifier).state = val;
                // setState(() => duration = newDuration);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30 * fem),
            child: Text(
              'Informazioni',
              style: headerStyle,
            ),
          ),
          SizedBox(height: 12 * fem),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28 * fem),
            child: Column(
              children: [
                _DataBlock(
                  child: Bounceable(
                    onTap: () {
                      onTapEditName();
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Nome & Cognome',
                          style: labelStyle,
                        ),
                        Expanded(
                          child: Builder(builder: (context) {
                            return Text(
                              // placeholdernameZra (1:2413)
                              lessonName.isEmpty
                                  ? 'Name of lessons'
                                  : lessonName,
                              textAlign: TextAlign.right,
                              style: valueStyle,
                            );
                          }),
                        ),
                        SizedBox(width: 8 * fem),
                        const NextIcon(),
                      ],
                    ),
                  ),
                ),
                _DataBlock(
                  child: Bounceable(
                    onTap: () {
                      final val = studentLevelValue.value;
                      if (studentLevelValue.isLoading || val == null) {
                        return;
                      }

                      onTapEditLevel(
                        val
                            .map(
                              (e) => ChooseInputSheetOption(
                                id: e.id ?? '',
                                text: e.name ?? '',
                              ),
                            )
                            .toList(),
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Class of participants',
                          style: labelStyle,
                        ),
                        Expanded(
                          child: studentLevelValue.when(
                              error: (e, s) => Text('$e,$s'),
                              loading: () => const Align(
                                    alignment: Alignment.centerRight,
                                    child: CupertinoActivityIndicator(
                                      radius: 8,
                                    ),
                                  ),
                              data: (data) {
                                return Text(
                                  // placeholdernameZra (1:2413)
                                  (lessonLevel?.text.isEmpty ?? true)
                                      ? 'Choose level'
                                      : lessonLevel!.text,
                                  textAlign: TextAlign.right,
                                  style: valueStyle,
                                );
                              }),
                        ),
                        SizedBox(width: 8 * fem),
                        const NextIcon(),
                      ],
                    ),
                  ),
                ),
                _DataBlock(
                  child: Bounceable(
                    onTap: () {
                      onTapEditInstructors();
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Instructors',
                          style: labelStyle,
                        ),
                        const Spacer(),
                        if (instructorsList.isEmpty) ...[
                          Text(
                            'Choose instructors',
                            textAlign: TextAlign.right,
                            style: valueStyle,
                          ),
                          SizedBox(width: 8 * fem),
                          const NextIcon(),
                        ],
                        if (instructorsList.isNotEmpty)
                          _InstructorsListAvatar(
                            instructorsList: instructorsList,
                          ),
                      ],
                    ),
                  ),
                ),
                _DataBlock(
                  child: Bounceable(
                    onTap: () {
                      onTapEditStudents();
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Students',
                          style: labelStyle,
                        ),
                        const Spacer(),
                        if (studentsList.isEmpty) ...[
                          Text(
                            'Choose students',
                            textAlign: TextAlign.right,
                            style: valueStyle,
                          ),
                          SizedBox(width: 8 * fem),
                          const NextIcon(),
                        ],
                        if (studentsList.isNotEmpty)
                          _StudentsListAvatar(studentsList: studentsList),
                      ],
                    ),
                  ),
                ),
                _DataBlock(
                  padding:
                      EdgeInsets.fromLTRB(22 * fem, 8 * fem, 22 * fem, 8 * fem),
                  child: Bounceable(
                    onTap: () {
                      // onTapEditName();
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Private lesson',
                          style: labelStyle,
                        ),
                        const Spacer(),
                        const AppSwitch(id: 'create_lesson_private_lesson'),
                      ],
                    ),
                  ),
                ),
                Container(
                  // autolayoutvertical33g (1:2406)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
                  padding:
                      EdgeInsets.fromLTRB(20 * fem, 0 * fem, 20 * fem, 0 * fem),
                  decoration: BoxDecoration(
                    color: const Color(0x334e4e61),
                    borderRadius: BorderRadius.circular(16 * fem),
                    border: const Border(),
                  ),
                  child: TextField(
                    onChanged: (val) {
                      ref.read(createLessonNoteProvider.notifier).state = val;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      // labelText: 'Notes',
                      hintText: 'Notes on the lesson',
                      hintStyle: labelStyle,
                    ),
                    style: TextStyle(
                      fontSize: 18 * ffem,
                      color: Colors.white,
                    ),
                    minLines: 5,
                    maxLines: 100,
                  ),
                ),
              ],
            ),
          ),
          Bounceable(
            onTap: () {
              onClickCreate();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(
                30 * fem,
                0 * fem,
                30 * fem,
                0 * fem,
              ),
              width: double.infinity,
              height: 60 * fem,
              decoration: BoxDecoration(
                color: const Color(0xffff8869),
                borderRadius: BorderRadius.circular(99 * fem),
              ),
              child: Center(
                child: ref.watch(createLessonLoadingProvider)
                    ? const CupertinoActivityIndicator(
                        radius: 8,
                      )
                    : Text(
                        isEdit ? 'Edit' : 'Salva',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
              ),
            ),
          ),
          SizedBox(height: 16 * fem),
          if (isEdit)
            Bounceable(
              onTap: () {
                onClickDelete();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(
                  30 * fem,
                  0 * fem,
                  30 * fem,
                  0 * fem,
                ),
                width: double.infinity,
                height: 60 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xFFE31C00),
                  borderRadius: BorderRadius.circular(99 * fem),
                ),
                child: Center(
                  child: ref.watch(deleteLessonLoadingProvider)
                      ? const CupertinoActivityIndicator(
                          radius: 8,
                        )
                      : Text(
                          'Delete',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                ),
              ),
            ),
          SizedBox(height: 60 * fem),
        ],
      ),
    );
  }
}

class _StudentsListAvatar extends StatelessWidget {
  const _StudentsListAvatar({
    Key? key,
    required this.studentsList,
  }) : super(key: key);

  final List<StudentModel> studentsList;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return AvatarGroup(
      widthFactor: 0.9,
      radius: fem * (10),
      outerRadius: fem * (10),
      imagesList: List<ImageProvider>.generate(
        studentsList.length,
        (index) => studentsList[index].avatar != null
            ? NetworkImage(
                getAvatarUrl(studentsList[index]),
              )
            : const AssetImage(
                'assets/images/profile-icon-png-image-free-download-searchpng-profile-removebg-preview-1.png',
              ) as ImageProvider,
      ),
      itemBuilder: (context, index, image) => ClipOval(
        child: SizedBox(
          height: fem * (20),
          width: fem * (20),
          child: Image(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class _InstructorsListAvatar extends StatelessWidget {
  const _InstructorsListAvatar({
    Key? key,
    required this.instructorsList,
  }) : super(key: key);

  final List<StudentModel> instructorsList;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return AvatarGroup(
      widthFactor: 0.9,
      radius: fem * (10),
      outerRadius: fem * (10),
      imagesList: List.generate(
        instructorsList.length,
        (index) => instructorsList[index].avatar != null
            ? NetworkImage(
                getAvatarUrl(instructorsList[index]),
              )
            : const AssetImage(
                'assets/images/profile-icon-png-image-free-download-searchpng-profile-removebg-preview-1.png',
              ) as ImageProvider,
      ),
      itemBuilder: (context, index, image) => ClipOval(
        child: SizedBox(
          height: fem * (20),
          width: fem * (20),
          child: Image(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

final showLessonCreateCalenderProvider = StateProvider<bool>((ref) {
  return false;
});

final correctBorderLessonCreateCalenderProvider = StateProvider<bool>((ref) {
  return false;
});

class _LessonDateCreateCalender extends ConsumerWidget {
  const _LessonDateCreateCalender();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(createLessonDateProvider);

    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    final show = ref.watch(correctBorderLessonCreateCalenderProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30 * fem),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff2A2A2E),
          borderRadius: BorderRadius.circular(16 * fem).copyWith(
            bottomRight: Radius.circular(show ? 0 : 16),
            bottomLeft: Radius.circular(show ? 0 : 16),
          ),
        ),
        padding: EdgeInsets.all(14 * fem).copyWith(top: 12 * fem),
        child: Bounceable(
          quickResponse: true,
          onTap: () async {
            ref
                .read(showLessonCreateCalenderProvider.notifier)
                .update((state) => !state);
            if (!ref.read(showLessonCreateCalenderProvider)) {
              await Future.delayed(const Duration(milliseconds: 380));
            }

            ref.read(correctBorderLessonCreateCalenderProvider.notifier).state =
                ref.read(showLessonCreateCalenderProvider);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalenderIcon(
                size: 20 * ffem,
                color: const Color(0xffADA4A5),
                active: true,
              ),
              SizedBox(width: 10 * fem),
              Padding(
                padding: EdgeInsets.only(top: 4.0 * fem),
                child: Text(
                  '${DateFormat('EEE').format(date)}, ',
                  style: SafeGoogleFont(
                    'DM Sans',
                    fontSize: 14 * ffem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 4.0 * fem),
                  child: Text(
                    '${date.day} ${DateFormat('MMM').format(date)} ${date.year}',
                    style: SafeGoogleFont(
                      'DM Sans',
                      fontSize: 14 * ffem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: const Color(0xffADA4A5),
                size: 18 * ffem,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _LessonCreateCalender extends ConsumerWidget {
  const _LessonCreateCalender();

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    final chooseDay = ref.watch(createLessonDateProvider);
    return ExpandedSection(
      expand: ref.watch(showLessonCreateCalenderProvider),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff2A2A2E),
          borderRadius: BorderRadius.circular(16 * fem).copyWith(
            topRight: const Radius.circular(0),
            topLeft: const Radius.circular(0),
          ),
        ),
        padding: EdgeInsets.all(8 * fem),
        child: TableCalendar(
          key: ValueKey('Lesson_TableCalendar_$chooseDay'),
          focusedDay: chooseDay.add(const Duration(days: 1)),
          firstDay: DateTime.now(),
          lastDay: DateTime.now().add(const Duration(days: 365 * 10)),
          selectedDayPredicate: (day) => day.isAtSameMomentAs(chooseDay),
          pageAnimationEnabled: true,
          onDaySelected: (selectedDay, focusedDay) async {
            ref.read(createLessonDateProvider.notifier).state = selectedDay;
            ref.read(showLessonCreateCalenderProvider.notifier).state = false;
            if (!ref.read(showLessonCreateCalenderProvider)) {
              await Future.delayed(const Duration(milliseconds: 380));
            }

            ref.read(correctBorderLessonCreateCalenderProvider.notifier).state =
                ref.read(showLessonCreateCalenderProvider);
          },
          locale: 'en_US',
          startingDayOfWeek: StartingDayOfWeek.sunday,
          availableGestures: AvailableGestures.none,
          availableCalendarFormats: const {
            CalendarFormat.month: 'Month',
          },
          headerStyle: HeaderStyle(
            titleCentered: true,
            headerPadding: EdgeInsets.zero.copyWith(bottom: 8 * fem),
            leftChevronIcon:
                const Icon(Icons.chevron_left, color: Colors.white),
            rightChevronIcon:
                const Icon(Icons.chevron_right, color: Colors.white),
          ),
          calendarStyle: const CalendarStyle(
            selectedDecoration:
                BoxDecoration(color: Color(0xFFFF7966), shape: BoxShape.circle),
          ),
          daysOfWeekStyle: const DaysOfWeekStyle(
            weekdayStyle: TextStyle(color: Colors.grey),
            weekendStyle: TextStyle(color: Colors.grey),
          ),
          headerVisible: true,
        ),
      ),
    );
  }
}

class _DataBlock extends StatelessWidget {
  const _DataBlock({
    required this.child,
    this.padding,
  });
  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Container(
      // autolayoutvertical33g (1:2406)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 12 * fem),
      padding: padding ??
          EdgeInsets.fromLTRB(22 * fem, 16 * fem, 22 * fem, 16 * fem),
      decoration: BoxDecoration(
        color: const Color(0x334e4e61),
        borderRadius: BorderRadius.circular(16 * fem),
        border: const Border(),
      ),
      child: child,
    );
  }
}

class UserAvatar extends ConsumerWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(faker.image.image(random: true)),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        // color: Colors.white,
      ),
    );
  }
}
