import 'package:awtka/common/int_extension.dart';
import 'package:awtka/features/home/widgets/lesson_home_body.dart';
import 'package:awtka/features/lesson/model/lesson_model.dart';
import 'package:awtka/features/student/models/student_level_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

final lessonTierFilterProvider = StateProvider<StudentLevelModel>((ref) {
  return studentAllFilter;
});

final lessonRepositoryProvider = StateNotifierProvider<
    LessonRepository<LessonModel>, AsyncValue<List<LessonModel>>>((ref) {
  final levelFilter = ref.watch(lessonTierFilterProvider);
  final dateFilter = ref.watch(lessonCalenderControlProvider);

  return LessonRepository<LessonModel>(
    ref.read(collectionServiceProvider("lessons")),
    levelFilter: levelFilter,
    dateFilter: dateFilter,
  );
});

/// Acts as cache for loaded lessons
final lessonProvider = Provider<AsyncValue<List<LessonModel>>>(
    (ref) => ref.watch(lessonRepositoryProvider).whenData((items) => items));

class LessonRepository<T extends BaseModel> extends PocketbaseRepository<T> {
  LessonRepository(
    RecordService recordService, {
    required this.levelFilter,
    required this.dateFilter,
  }) : super(recordService) {
    relations = ['level', 'instructors', 'students'];
    getAll();
  }

  final StudentLevelModel levelFilter;
  final DateTime dateFilter;

  int getItemCount() => state.asData?.value.length ?? 0;

  @override
  Future<void> getAll({bool loading = true}) async {
    if (loading) state = const AsyncLoading();
    var filter = '';
    filter += "(";

    if (levelFilter.id != null && levelFilter.id != '-1') {
      filter += "level='${levelFilter.id}'";
      filter += "&&";
    }

    // '2022-01-01'
    final previusDate = dateFilter.subtract(const Duration(days: 0));
    filter +=
        "date>'${previusDate.year}-${previusDate.month.add0}-${previusDate.day.add0}'";
    filter += "&&";
    final nextDate = dateFilter.add(const Duration(days: 1));
    filter +=
        "date<'${nextDate.year}-${nextDate.month.add0}-${nextDate.day.add0}'";

    filter += ")";

    debugPrint("filter: $filter");
    final map = await getAsMap(
      filter: filter,
    );

    final items = map.map((e) => LessonModel.fromJson(e)).toList();
    items.sort((a, b) => a.date.compareTo(b.date));
    state = AsyncData(items as List<T>);
  }
}
