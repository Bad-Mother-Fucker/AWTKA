import 'package:awtka/features/lesson/widgets/lesson_create_body_widget.dart';
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

class _LessonEditBodyWidgetState extends ConsumerState<LessonEditBodyWidget>
    with AfterLayoutMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const LessonCreateBodyWidget(
      isEdit: true,
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // final value = ref.read(studentByIdProvider);
    // if (value.hasValue && value.asData != null) {
    //   final data = value.asData!.value;
    //   ref.read(studentNameCreateProvider.notifier).state = data.name;
    //   ref.read(studentSurnameCreateProvider.notifier).state = data.last_name;
    //   ref.read(studentNotesCreateProvider.notifier).state = data.notes ?? '';
    //   ref.read(studentDateCreateProvider.notifier).state = data.dob;
    //   if (data.student_level.id?.isNotEmpty ?? false) {
    //     ref.read(studentLevelCreateProvider.notifier).state =
    //         ChooseInputSheetOption(
    //       id: data.student_level.id ?? '',
    //       text: data.student_level.name ?? '',
    //     );
    //   }
    //   if (data.student_shirt_color.id?.isNotEmpty ?? false) {
    //     ref.read(studentShirtColorCreateProvider.notifier).state =
    //         ChooseInputSheetOption(
    //       id: data.student_shirt_color.id ?? '',
    //       text: data.student_shirt_color.name ?? '',
    //     );
    //   }
    //   ref.read(appSwitchProvider('create_student_instructor').notifier).state =
    //       data.instructor;
    //   ref.read(studentAddressCreateProvider.notifier).state =
    //       data.address ?? '';
    //   ref.read(studentEmailCreateProvider.notifier).state = data.email;
    //   ref.read(studentPhoneCreateProvider.notifier).state = data.telephone;

    //   if (data.avatar != null) {
    //     ref.read(avatarProvider.notifier).state = getAvatarUrl(data);
    //   }
    //   if (data.contracts != null) {
    //     ref
    //         .read(uploadFileDataProvider('student_create-upload_contract')
    //             .notifier)
    //         .state = ContractData(
    //       name: data.contracts,
    //       type: data.contracts_type,
    //       size: data.contracts_size,
    //       date: data.contracts_date,
    //     );
    //   }
    //   if (data.certificates != null) {
    //     ref
    //         .read(uploadFileDataProvider('student_create-upload_certificate')
    //             .notifier)
    //         .state = ContractData(
    //       name: data.certificates,
    //       type: data.certificates_type,
    //       size: data.certificates_size,
    //       date: data.certificates_date,
    //     );
    //   }
    // }
  }
}
