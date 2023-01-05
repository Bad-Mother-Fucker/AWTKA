import 'dart:async';

import 'package:awtka/common/app_bar_custom.dart';
import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/check_icon.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/features/lesson/repositories/lesson_instructors_choose.dart';
import 'package:awtka/features/student/models/student_model.dart';
import 'package:awtka/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sheet/sheet.dart';

final instructorsPickerProvider =
    StateProvider.autoDispose<List<StudentModel>?>((ref) {
  return [];
});

final instructorsListProvider =
    Provider.autoDispose<AsyncValue<List<StudentModel>>>((ref) {
  return ref.watch(instructorsChooseOptionProvider).whenData((items) {
    final search = ref
        .watch(appTextFieldProvider('create_lesson_search_instructor'))
        .toLowerCase();

    if (search.isEmpty) {
      return items;
    }
    return items.where((e) {
      return e.name.toLowerCase().contains(search) ||
          (e.notes?.toLowerCase().contains(search) ?? false);
    }).toList();
  });
});

final isSelectProvider = Provider.autoDispose.family<bool, String>((ref, id) {
  final listSelected = ref.watch(instructorsPickerProvider);

  var find = listSelected?.firstWhere(
    (element) => element.id == id,
    orElse: () => emptyStudent,
  );

  return find != null && find.id != '-1';
});

class ChooseInstructorsSheet extends ConsumerStatefulWidget {
  const ChooseInstructorsSheet({
    super.key,
    required this.title,
    required this.label,
    required this.actionText,
    required this.initValue,
  });

  final String actionText;
  final List<StudentModel> initValue;
  final String label;
  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChooseInstructorsSheetState();
}

class _ChooseInstructorsSheetState extends ConsumerState<ChooseInstructorsSheet>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.initValue.isNotEmpty) {
      ref.read(instructorsPickerProvider.notifier).state = widget.initValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    onSubmit() {
      Navigator.of(context).pop(
        ref.read(instructorsPickerProvider) ?? widget.initValue,
      );
    }

    final listValue = ref.watch(instructorsListProvider);

    return Material(
      color: Colors.transparent,
      child: SheetMediaQuery(
        child: Container(
          color: const Color(0xff1C1C23),
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 40 * fem, horizontal: 30 * fem),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  AppBarCustom(
                    title: widget.title,
                    onClickBack: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(
                    height: 45 * fem,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(widget.label),
                  ),
                  SizedBox(height: 18 * fem),
                  const _InstructorSearchWidget(),
                  SizedBox(height: 8 * fem),
                  //
                  Expanded(
                    child: listValue.when(
                      data: (data) {
                        return ListView.separated(
                          padding: EdgeInsets.symmetric(vertical: 20 * fem),
                          itemBuilder: (BuildContext context, int index) {
                            final selected = ref
                                .watch(isSelectProvider('${data[index].id}'));

                            return Container(
                              height: 50 * fem,
                              margin: EdgeInsets.only(
                                top: 11 * fem,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xff26262F),
                                borderRadius: BorderRadius.circular(16 * fem),
                              ),
                              child: Bounceable(
                                onTap: () {
                                  ref
                                      .read(instructorsPickerProvider.notifier)
                                      .update((state) {
                                    if (state != null &&
                                        state.contains(data[index])) {
                                      final newData = [
                                        ...(state.where(
                                            (e) => e.id != data[index].id))
                                      ];

                                      return newData;
                                    }

                                    final newData = [
                                      data[index],
                                      ...(state ?? <StudentModel>[]),
                                    ];
                                    final ids = <dynamic>{};
                                    newData.retainWhere((x) => ids.add(x.id));

                                    return newData;
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10 * fem,
                                    horizontal: 18 * fem,
                                  ),
                                  child: Row(
                                    children: [
                                      ClipOval(
                                        child: SizedBox(
                                          height: fem * (30),
                                          width: fem * (30),
                                          child: Image.network(
                                            getAvatarUrl(data[index]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 8 * fem),
                                      Expanded(child: Text(data[index].name)),
                                      if (selected)
                                        Image.asset(
                                          'assets/images/icon_check.png',
                                          height: 24,
                                        )
                                      else
                                        const CheckIcon(
                                          size: 24,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: data.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 8 * fem);
                          },
                        );
                      },
                      error: (e, s) => Text('$e$s'),
                      loading: () => const CupertinoActivityIndicator(),
                    ),
                  ),
                  Bounceable(
                    onTap: () {
                      onSubmit();
                    },
                    child: Container(
                      // button7zi (1:48)
                      margin: EdgeInsets.fromLTRB(
                          2 * fem, 0 * fem, 1 * fem, 0 * fem),
                      width: double.infinity,
                      height: 48 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xffff7966),
                        borderRadius: BorderRadius.circular(999 * fem),
                        border: const Border(),
                      ),
                      child: Center(
                        child: Text(
                          widget.actionText,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.4285714286 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _InstructorSearchWidget extends ConsumerWidget {
  const _InstructorSearchWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Container(
      // searchSnE (3:273)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
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
              autofocus: true,
              textInputAction: TextInputAction.done,
              controller: ref.watch(
                appTextFieldControllerProvider(
                    'create_lesson_search_instructor'),
              ),
              onChanged: (val) {
                ref
                    .read(
                        appTextFieldProvider('create_lesson_search_instructor')
                            .notifier)
                    .state = val;
              },
              onSubmitted: (value) {
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
                  .read(appTextFieldProvider('create_lesson_search_instructor')
                      .notifier)
                  .state = '';
              ref
                  .read(appTextFieldControllerProvider(
                      'create_lesson_search_instructor'))
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
