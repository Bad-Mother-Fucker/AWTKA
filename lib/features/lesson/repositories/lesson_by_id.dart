import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pocketbase_scaffold/pocketbase_scaffold.dart';

import '../model/lesson_model.dart';

final currectLessonIdProvider = StateProvider<String?>((ref) {
  return null;
});

final lessonByIdRepositoryProvider =
    StateNotifierProvider<LessonRepositoryById, AsyncValue>(
  (ref) {
    final lessonId = ref.read(currectLessonIdProvider);

    return LessonRepositoryById(
      recordService: ref.read(collectionServiceProvider("lessons")),
      lessonId: lessonId,
      relations: ['level', 'instructors', 'students'],
    );
  },
);

/// Acts as cache for loaded lessons
final lessonByIdProvider = Provider<AsyncValue<LessonModel>>(
  (ref) => ref.watch(lessonByIdRepositoryProvider).whenData((items) => items),
);

class LessonRepositoryById extends StateNotifier<AsyncValue<LessonModel?>> {
  LessonRepositoryById({
    required this.recordService,
    required this.lessonId,
    required this.relations,
  }) : super(const AsyncValue.loading()) {
    getById();
  }
  final RecordService recordService;
  final String? lessonId;
  final List<String>? relations;

  Future<void> getById() async {
    if (lessonId == null) return;
    state = const AsyncLoading();

    final data = await recordService.getOne(
      lessonId!,
      expand: relations?.join(","),
    );

    final map = JsonConverter.toBaseModelJson(data, relations: relations);

    final item = LessonModel.fromJson(map);

    state = AsyncData(item);
  }
}
