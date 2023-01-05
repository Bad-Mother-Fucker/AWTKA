import 'package:awtka/common/text_field.dart';
import 'package:awtka/features/lesson/model/lesson_model.dart';
import 'package:awtka/features/student/models/student_level_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

final searchLessonFilterProvider = StateProvider<StudentLevelModel>((ref) {
  return studentAllFilter;
});

final searchLessonRepositoryProvider = StateNotifierProvider.autoDispose<
    SearchLessonRepository<LessonModel>, AsyncValue<List<LessonModel>>>((ref) {
  final levelFilter = ref.watch(searchLessonFilterProvider);
  final search = ref.watch(appTextFieldProvider('search_lesson_input'));

  return SearchLessonRepository<LessonModel>(
    ref.read(collectionServiceProvider("lessons")),
    levelFilter: levelFilter,
    search: search,
  );
});

/// Acts as cache for loaded lessons
final searchLessonProvider =
    Provider.autoDispose<AsyncValue<List<LessonModel>>>((ref) =>
        ref.watch(searchLessonRepositoryProvider).whenData((items) => items));

class SearchLessonRepository<T extends BaseModel>
    extends PocketbaseRepository<T> {
  SearchLessonRepository(
    RecordService recordService, {
    required this.levelFilter,
    required this.search,
  }) : super(recordService) {
    relations = ['level', 'instructors', 'students'];
    getAll();
  }

  final StudentLevelModel levelFilter;
  final String search;

  int getItemCount() => state.asData?.value.length ?? 0;

  @override
  Future<void> getAll({bool loading = true}) async {
    if (search.isEmpty) return;

    // if (loading) // always loading
    state = const AsyncLoading();

    var filter = '';
    filter += "(";
    filter += "name~'$search'";

    if (levelFilter.id != null && levelFilter.id != '-1') {
      filter += "&&";
      filter += "level='${levelFilter.id}'";
    }

    filter += ")";

    final map = await getAsMap(
      filter: filter,
    );

    final items = map.map((e) => LessonModel.fromJson(e)).toList();
    items
        .sort((a, b) => b.updated?.compareTo(a.updated ?? DateTime.now()) ?? 0);
    state = AsyncData(items as List<T>);
  }
}
