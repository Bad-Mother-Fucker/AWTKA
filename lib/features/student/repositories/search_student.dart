import 'package:awtka/common/text_field.dart';
import 'package:awtka/features/student/models/student_level_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

import '../models/student_model.dart';

final searchStudentFilterProvider = StateProvider<StudentLevelModel>((ref) {
  return studentAllFilter;
});

final searchStudentRepositoryProvider = StateNotifierProvider.autoDispose<
    SearchStudentRepository<StudentModel>,
    AsyncValue<List<StudentModel>>>((ref) {
  final levelFilter = ref.watch(searchStudentFilterProvider);
  final search = ref.watch(appTextFieldProvider('search_student_input'));

  return SearchStudentRepository<StudentModel>(
    ref.read(collectionServiceProvider("students")),
    levelFilter: levelFilter,
    search: search,
  );
});

/// Acts as cache for loaded students
final searchStudentProvider =
    Provider.autoDispose<AsyncValue<List<StudentModel>>>((ref) =>
        ref.watch(searchStudentRepositoryProvider).whenData((items) => items));

class SearchStudentRepository<T extends BaseModel>
    extends PocketbaseRepository<T> {
  SearchStudentRepository(
    RecordService recordService, {
    required this.levelFilter,
    required this.search,
  }) : super(recordService) {
    relations = ['student_level', 'student_shirt_color'];
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
      filter += "student_level='${levelFilter.id}'";
    }

    filter += ")";

    final map = await getAsMap(
      filter: filter,
    );

    final items = map.map((e) => StudentModel.fromJson(e)).toList();
    items
        .sort((a, b) => b.updated?.compareTo(a.updated ?? DateTime.now()) ?? 0);
    state = AsyncData(items as List<T>);
  }
}
