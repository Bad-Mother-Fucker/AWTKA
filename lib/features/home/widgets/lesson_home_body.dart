import 'package:awtka/common/arrow_right_icon.dart';
import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/expand_widget.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/features/lesson/model/lesson_model.dart';
import 'package:awtka/features/lesson/repositories/lesson_by_id.dart';
import 'package:awtka/features/lesson/repositories/lessons.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class LessonHomeBody extends ConsumerWidget {
  const LessonHomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97; // * font

    ref.watch(lessonCalenderControlProvider);
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(lessonRepositoryProvider);
        ref.invalidate(lessonProvider);
      },
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            const SafeArea(bottom: false, child: SizedBox()),
            SizedBox(height: 10 * fem),
            Padding(
              padding: EdgeInsets.only(left: 18 * fem),
              child: const LessonHomeAppBar(),
            ),
            SizedBox(height: 16 * fem),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18 * fem),
              child: const LessonCalenderControlWidget(),
            ),
            SizedBox(height: 16 * fem),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18 * fem),
              child: const LessonCalender(),
            ),
            SizedBox(height: 22 * fem),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12 * fem)
                  .copyWith(right: 22 * fem),
              child: const LessonSearchWidget(),
            ),
            SizedBox(height: 20 * fem),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18 * fem),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: LessonStatusSummaryWidget(),
              ),
            ),
            SizedBox(height: 20 * fem),
            const LessonList(),
            SizedBox(height: 120 * fem),
          ],
        ),
      ),
    );
  }
}

class LessonHomeAppBar extends ConsumerWidget {
  const LessonHomeAppBar({
    super.key,
    this.showSearch = true,
  });

  final bool showSearch;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    onTapCreate() {
      context.push(LessonCreateRoute.path);
    }

    return Container(
      // autogroupt6fuzSn (GF8mZQWTGUR2UcpPWfT6fU)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 17 * fem, 30 * fem),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // allievigqQ (3:134)
            margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
            child: Text(
              'Lessons',
              style: SafeGoogleFont(
                'DM Sans',
                fontSize: 40 * ffem,
                fontWeight: FontWeight.w700,
                height: 0.9469999313 * ffem / fem,
                color: const Color(0xffffffff),
              ),
            ),
          ),
          const Spacer(),
          Bounceable(
            onTap: () {
              onTapCreate();
            },
            child: Container(
              // autogroupjaaex2E (GF8mkZrXHxrVywV7DaJaae)
              margin: EdgeInsets.fromLTRB(
                  0 * fem, 0 * fem, showSearch ? 15 * fem : 0, 2 * fem),
              width: 48 * fem,
              height: 48 * fem,
              child: Image.asset(
                'assets/images/auto-group-jaae.png',
                width: 48 * fem,
                height: 48 * fem,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final lessonCalenderControlProvider = StateProvider<DateTime>((ref) {
  return DateTime.now();
});

class LessonCalenderControlWidget extends ConsumerWidget {
  const LessonCalenderControlWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(lessonCalenderControlProvider);
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${DateFormat('EEE').format(date)}, ',
          style: SafeGoogleFont(
            'DM Sans',
            fontSize: 18 * ffem,
            fontWeight: FontWeight.w700,
            color: const Color(0xffffffff),
          ),
        ),
        Expanded(
          child: Text(
            '${date.day} ${DateFormat('MMM').format(date)} ${date.year}',
            style: SafeGoogleFont(
              'DM Sans',
              fontSize: 18 * ffem,
              fontWeight: FontWeight.w700,
              color: const Color(0xffF65A38),
            ),
          ),
        ),
        Bounceable(
          onTap: () {
            ref
                .read(showLessonCalenderProvider.notifier)
                .update((state) => !state);
          },
          child: Row(
            children: [
              Text(
                'cambia',
                style: SafeGoogleFont(
                  'DM Sans',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffADA4A5),
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
      ],
    );
  }
}

final showLessonCalenderProvider = StateProvider<bool>((ref) {
  return false;
});

class LessonCalender extends ConsumerWidget {
  const LessonCalender({super.key});

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    final chooseDay = ref.watch(lessonCalenderControlProvider);
    return ExpandedSection(
      expand: ref.watch(showLessonCalenderProvider),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff2A2A2E),
          borderRadius: BorderRadius.circular(16 * fem).copyWith(
            topRight: const Radius.circular(0),
          ),
        ),
        padding: EdgeInsets.all(8 * fem),
        child: TableCalendar(
          key: ValueKey('Lesson_TableCalendar_$chooseDay'),
          firstDay: DateTime.now().subtract(const Duration(days: 365 * 10)),
          focusedDay: chooseDay,
          lastDay: DateTime.now().add(const Duration(days: 365 * 10)),
          selectedDayPredicate: (day) => day.isAtSameMomentAs(chooseDay),
          pageAnimationEnabled: true,
          onDaySelected: (selectedDay, focusedDay) {
            ref.read(lessonCalenderControlProvider.notifier).state =
                selectedDay;
            ref.read(showLessonCalenderProvider.notifier).state = false;
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

class LessonSearchWidget extends ConsumerWidget {
  const LessonSearchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97; // * font

    return Container(
      // searchSnE (3:273)
      margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 0 * fem),
      padding: EdgeInsets.fromLTRB(17.57 * fem, 0 * fem, 5.86 * fem, 0 * fem),
      decoration: BoxDecoration(
        color: const Color(0xff3d3c48),
        borderRadius: BorderRadius.circular(10 * fem),
        // boxShadow: [
        //   BoxShadow(
        //     color: const Color(0x2d99aac5),
        //     offset: Offset(0 * fem, 4 * fem),
        //     blurRadius: 31 * fem,
        //   ),
        // ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // iconsearchUU2 (3:275)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
            width: 23.43 * fem,
            height: 24 * fem,
            child: Image.asset(
              'assets/images/icon-search-Ad8.png',
              width: 23.43 * fem,
              height: 24 * fem,
            ),
          ),
          Expanded(
            child: TextField(
              autofocus: false,
              textInputAction: TextInputAction.done,
              controller: ref.watch(
                appTextFieldControllerProvider('search_lesson_input'),
              ),
              onChanged: (val) {
                ref
                    .read(appTextFieldProvider('search_lesson_input').notifier)
                    .state = val;
              },
              onSubmitted: (value) {
                // TODO: search lesson on submit
                // ref.read(searchStudentRepositoryProvider.notifier).getAll();
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                hintText: '',
                hintStyle: TextStyle(
                  color: Color(0xffa2a2b5),
                ),
              ),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Bounceable(
            onTap: () {
              // clear text:
              ref
                  .read(appTextFieldProvider('search_lesson_input').notifier)
                  .state = '';
              ref
                  .read(appTextFieldControllerProvider('search_lesson_input'))
                  .text = '';
            },
            child: SizedBox(
              // removefaS (5:413)
              width: 28.11 * fem,
              height: 24 * fem,
              child: Image.asset(
                'assets/images/remove.png',
                width: 28.11 * fem,
                height: 24 * fem,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final lessonJoinedProvider = StateProvider<String>((ref) {
  ref.watch(lessonProvider);
  final count = ref.watch(lessonRepositoryProvider.notifier).getItemCount();
  return count == 0 ? '-' : count.toString();
});

final partecipantJoinedProvider = StateProvider<String>((ref) {
  return '-';
});

class LessonStatusSummaryWidget extends ConsumerWidget {
  const LessonStatusSummaryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97; // * font

    final lesson = ref.watch(lessonJoinedProvider);
    // final partecipant = ref.watch(lessonJoinedProvider);
    return Text(
      'Oggi ci sono $lesson lezioni',
      style: SafeGoogleFont(
        'DM Sans',
        fontSize: 14 * ffem,
        fontWeight: FontWeight.w400,
        color: const Color(0xffADA4A5),
      ),
    );
  }
}

final lessonWithSearchProvider =
    Provider.autoDispose<AsyncValue<List<LessonModel>>>((ref) {
  return ref.watch(lessonRepositoryProvider).whenData((items) {
    final search =
        ref.watch(appTextFieldProvider('search_lesson_input')).toLowerCase();

    if (search.isEmpty) {
      return items;
    }

    return items.where((e) {
      return e.name.toLowerCase().contains(search) ||
          (e.level.name?.toLowerCase().contains(search) ?? false) ||
          (e.note?.toLowerCase().contains(search) ?? false);
    }).toList();
  });
});

class LessonList extends ConsumerWidget {
  const LessonList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97; // * font

    onTapEdit(String? id) {
      FocusManager.instance.primaryFocus?.unfocus();
      if (id == null) return;

      ref.read(currectLessonIdProvider.notifier).state = id;
      ref.invalidate(lessonByIdProvider);
      ref.invalidate(lessonByIdRepositoryProvider);
      context.push(LessonEditRoute.path);
    }

    final lessonValue = ref.watch(lessonWithSearchProvider);

    return lessonValue.when(
      data: (data) {
        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 4 * fem),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Bounceable(
              onTap: () {
                onTapEdit(data[index].id);
              },
              child: ListTile(
                trailing: const ArrowRightIcon(),
                title: Row(
                  children: [
                    Container(
                      height: 60 * fem,
                      width: 60 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xFFC58BF2),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: Center(
                        child: Text(
                          data[index].level.name ?? '',
                          style: SafeGoogleFont(
                            'DM Sans',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w800,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10 * fem),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          [
                            data[index].level.name ?? '',
                            data[index].name,
                          ].join(' | '),
                          style: SafeGoogleFont(
                            'DM Sans',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        SizedBox(height: 3 * fem),
                        Text(
                          [
                            DateFormat('hh:mm a').format(data[index].date),
                            '${DateFormat('EEE').format(data[index].date)},',
                            '${data[index].date.day} ${DateFormat('MMM').format(data[index].date)} ${data[index].date.year}',
                          ].join(' '),
                          style: SafeGoogleFont(
                            'DM Sans',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff7B6F72),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                // selectedTileColor: Colors.green,
                selectedColor: Colors.white,
                selected: true,
              ),
            );
          },
          itemCount: data.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 12 * fem);
          },
        );
      },
      error: (e, s) => Text('$e$s'),
      loading: () => const CupertinoActivityIndicator(),
    );
  }
}
