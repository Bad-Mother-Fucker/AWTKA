import 'dart:async';
import 'dart:io';

import 'package:awtka/common/app_bar_custom.dart';
import 'package:awtka/common/app_switch.dart';
import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/material_sheet.dart';
import 'package:awtka/common/next_icon.dart';
import 'package:awtka/common/int_extension.dart';
import 'package:awtka/common/text_field.dart';
import 'package:awtka/features/student/models/student_level_model.dart';
import 'package:awtka/features/student/models/student_model.dart';
import 'package:awtka/features/student/models/student_shirt_color_model.dart';
import 'package:awtka/features/student/repositories/student.dart';
import 'package:awtka/features/student/repositories/student_by_id.dart';
import 'package:awtka/features/student/repositories/student_level.dart';
import 'package:awtka/features/student/widgets/common/choose_input_sheet.dart';
import 'package:awtka/features/student/widgets/common/contract_widget.dart';
import 'package:awtka/features/student/widgets/common/date_input_sheet.dart';
import 'package:awtka/features/student/widgets/common/text_input_2data_sheet.dart';
import 'package:awtka/features/student/widgets/common/text_input_sheet.dart';
import 'package:awtka/features/student/widgets/common/upload_widget.dart';
import 'package:awtka/globals.dart';
import 'package:awtka/router/routes.dart';
import 'package:awtka/utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sheet/sheet.dart';
import "package:http/http.dart" as http;

import '../repositories/student_shirt_color.dart';

final avatarProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});

final createLoadingProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final studentNotesCreateProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

final studentNameCreateProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

final studentSurnameCreateProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

final studentAddressCreateProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

final studentEmailCreateProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

final studentPhoneCreateProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

final studentDateCreateProvider = StateProvider.autoDispose<DateTime?>((ref) {
  return null;
});

final studentLevelCreateProvider =
    StateProvider.autoDispose<ChooseInputSheetOption?>((ref) {
  return null;
});

final studentShirtColorCreateProvider =
    StateProvider.autoDispose<ChooseInputSheetOption?>((ref) {
  return null;
});

class EditStudentPageBodyWidget extends ConsumerStatefulWidget {
  const EditStudentPageBodyWidget({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditStudentPageBodyWidgetState();
}

class _EditStudentPageBodyWidgetState
    extends ConsumerState<EditStudentPageBodyWidget> with AfterLayoutMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const StudentCreatePageBodyWidget(
      isEdit: true,
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    final value = ref.read(studentByIdProvider);
    if (value.hasValue && value.asData != null) {
      final data = value.asData!.value;
      ref.read(studentNameCreateProvider.notifier).state = data.name;
      ref.read(studentSurnameCreateProvider.notifier).state = data.last_name;
      ref.read(studentNotesCreateProvider.notifier).state = data.notes ?? '';
      ref.read(studentDateCreateProvider.notifier).state = data.dob;
      if (data.student_level.id?.isNotEmpty ?? false) {
        ref.read(studentLevelCreateProvider.notifier).state =
            ChooseInputSheetOption(
          id: data.student_level.id ?? '',
          text: data.student_level.name ?? '',
        );
      }
      if (data.student_shirt_color.id?.isNotEmpty ?? false) {
        ref.read(studentShirtColorCreateProvider.notifier).state =
            ChooseInputSheetOption(
          id: data.student_shirt_color.id ?? '',
          text: data.student_shirt_color.name ?? '',
        );
      }
      ref.read(appSwitchProvider('create_student_instructor').notifier).state =
          data.instructor;
      ref.read(studentAddressCreateProvider.notifier).state =
          data.address ?? '';
      ref.read(studentEmailCreateProvider.notifier).state = data.email;
      ref.read(studentPhoneCreateProvider.notifier).state = data.telephone;

      if (data.avatar != null) {
        ref.read(avatarProvider.notifier).state = getAvatarUrl(data);
      }
      if (data.contracts != null) {
        ref
            .read(uploadFileDataProvider('student_create-upload_contract')
                .notifier)
            .state = ContractData(
          name: data.contracts,
          type: data.contracts_type,
          size: data.contracts_size,
          date: data.contracts_date,
        );
      }
      if (data.certificates != null) {
        ref
            .read(uploadFileDataProvider('student_create-upload_certificate')
                .notifier)
            .state = ContractData(
          name: data.certificates,
          type: data.certificates_type,
          size: data.certificates_size,
          date: data.certificates_date,
        );
      }
    }
  }
}

class StudentCreatePageBodyWidget extends ConsumerWidget {
  const StudentCreatePageBodyWidget({
    super.key,
    this.isEdit = false,
  });
  final bool isEdit;

  _onClickBack(BuildContext context) {
    context.pop();
  }

  @override
  Widget build(BuildContext context, ref) {
    // if value != null edit

    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    pushSuccess() {
      if (isEdit) {
        context.push(StudentEditInfoSuccessRoute.path, extra: {'id': 'id'});
      } else {
        context.push(StudentCreateSuccessRoute.path, extra: {'id': 'id'});
      }
    }

    void onClickUploadAvatar() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );
      ref.read(uploadFileProvider('create_student_avatar').notifier).state =
          result;
    }

    onTapEditName() async {
      final initName = ref.read(studentNameCreateProvider);
      ref.read(appTextFieldControllerProvider('student_create_name')).text =
          initName;

      final initSurname = ref.read(studentSurnameCreateProvider);
      ref.read(appTextFieldControllerProvider('student_create_surname')).text =
          initSurname;

      final name = await Navigator.of(context).push<Map<String, String>?>(
        MaterialSheetRoute<Map<String, String>?>(
          fit: SheetFit.loose,
          builder: (BuildContext context) => const TextInput2DataSheet(
            idA: 'student_create_name',
            labelA: 'Name',
            idB: 'student_create_surname',
            labelB: 'Surname',
            title: 'Edit Name & Surname',
            actionText: 'Save',
          ),
        ),
      );
      if (name != null && name.isNotEmpty && name['A'] != null) {
        ref.read(studentNameCreateProvider.notifier).state = name['A'] ?? '';
      }
      if (name != null && name.isNotEmpty && name['B'] != null) {
        ref.read(studentSurnameCreateProvider.notifier).state = name['B'] ?? '';
      }
    }

    onTapEditAddress() async {
      final initAddress = ref.read(studentAddressCreateProvider);
      ref.read(appTextFieldControllerProvider('student_create_address')).text =
          initAddress;

      final address = await Navigator.of(context).push<String?>(
        MaterialSheetRoute<String?>(
          fit: SheetFit.loose,
          builder: (BuildContext context) => const TextInputSheet(
            id: 'student_create_address',
            title: 'Insert address',
            label: 'Address',
            actionText: 'Save',
            isRichText: true,
          ),
        ),
      );
      if (address != null && address.isNotEmpty) {
        ref.read(studentAddressCreateProvider.notifier).state = address;
      }
    }

    onTapEditEmail() async {
      final initEmail = ref.read(studentEmailCreateProvider);
      ref.read(appTextFieldControllerProvider('student_create_email')).text =
          initEmail;

      final email = await Navigator.of(context).push<String?>(
        MaterialSheetRoute<String?>(
          fit: SheetFit.loose,
          builder: (BuildContext context) => TextInputSheet(
            id: 'student_create_email',
            title: 'Insert email',
            label: 'Email',
            helpText: 'Email address should be formatted as abc@gmail.com',
            actionText: 'Save',
            // Email regex
            validateRegex: RegExp(
                r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                r"{0,253}[a-zA-Z0-9])?)*$"),
          ),
        ),
      );
      if (email != null && email.isNotEmpty) {
        ref.read(studentEmailCreateProvider.notifier).state = email;
      }
    }

    onTapEditPhone() async {
      final initPhone = ref.read(studentPhoneCreateProvider);
      ref.read(appTextFieldControllerProvider('student_create_phone')).text =
          initPhone;

      final phone = await Navigator.of(context).push<String?>(
        MaterialSheetRoute<String?>(
          fit: SheetFit.loose,
          builder: (BuildContext context) => TextInputSheet(
            id: 'student_create_phone',
            title: 'Insert phone',
            label: 'Phone',
            actionText: 'Save',
            helpText: 'Phone should be formatted as +39xxxxxxxxx',
            // Phone regex
            validateRegex: RegExp(r"^\+[1-9]\d{1,14}$"),
          ),
        ),
      );
      if (phone != null && phone.isNotEmpty) {
        ref.read(studentPhoneCreateProvider.notifier).state = phone;
      }
    }

    onTapEditDate() async {
      final date = await Navigator.of(context).push<DateTime?>(
        MaterialSheetRoute<DateTime?>(
          fit: SheetFit.loose,
          builder: (BuildContext context) => DateInputSheet(
            id: 'student_create_date',
            title: 'Choose date',
            label: 'Date',
            actionText: 'Save',
            initValue: ref.read(studentDateCreateProvider),
          ),
        ),
      );
      if (date != null) {
        ref.read(studentDateCreateProvider.notifier).state = date;
      }
    }

    onTapEditLevel(List<ChooseInputSheetOption> options) async {
      final studentLevel =
          await Navigator.of(context).push<ChooseInputSheetOption?>(
        MaterialSheetRoute<ChooseInputSheetOption?>(
          fit: SheetFit.loose,
          builder: (BuildContext context) => ChooseInputSheet(
            id: 'student_create_student_level',
            title: 'Choose student level',
            label: 'Level',
            actionText: 'Save',
            initValue: ref.read(studentLevelCreateProvider),
            options: options,
          ),
        ),
      );
      if (studentLevel != null) {
        ref.read(studentLevelCreateProvider.notifier).state = studentLevel;
      }
    }

    onTapEditShirtColor(List<ChooseInputSheetOption> options) async {
      final studentShirtColor =
          await Navigator.of(context).push<ChooseInputSheetOption?>(
        MaterialSheetRoute<ChooseInputSheetOption?>(
          fit: SheetFit.loose,
          builder: (BuildContext context) => ChooseInputSheet(
            id: 'student_create_student_shirt_color',
            title: 'Choose student shirt color',
            label: 'Grado',
            actionText: 'Save',
            initValue: ref.read(studentShirtColorCreateProvider),
            options: options,
          ),
        ),
      );
      if (studentShirtColor != null) {
        ref.read(studentShirtColorCreateProvider.notifier).state =
            studentShirtColor;
      }
    }

    Future<AsyncValue> onSubmit() async {
      final fileAvatar = ref.read(uploadFileProvider('create_student_avatar'));
      final fileAvatarPath = fileAvatar?.files.first.path;
      http.MultipartFile? fileAvatarAsync;
      if (fileAvatarPath != null) {
        fileAvatarAsync = await http.MultipartFile.fromPath(
          'avatar',
          fileAvatarPath,
          filename: fileAvatar?.files.first.name,
          // contentType: MediaType.parse(fileAvatar?.files.first.extension ?? ''),
        );
      }

      final fileContract =
          ref.read(uploadFileProvider('student_create-upload_contract'));
      final fileContractPath = fileContract?.files.first.path;
      http.MultipartFile? fileContractAsync;
      if (fileContractPath != null) {
        fileContractAsync = await http.MultipartFile.fromPath(
          'contracts',
          fileContractPath,
          filename: fileContract?.files.first.name,
          // contentType:
          //     MediaType.parse(fileContract?.files.first.extension ?? ''),
        );
      }

      final fileCertificate =
          ref.read(uploadFileProvider('student_create-upload_certificate'));
      final fileCertificatePath = fileCertificate?.files.first.path;
      http.MultipartFile? fileCertificateAsync;
      if (fileCertificatePath != null) {
        fileCertificateAsync = await http.MultipartFile.fromPath(
          'certificates',
          fileCertificatePath,
          filename: fileCertificate?.files.first.name,
          // contentType:
          //     MediaType.parse(fileCertificate?.files.first.extension ?? ''),
        );
      }

      final name = ref.read(studentNameCreateProvider);
      final last_name = ref.read(studentSurnameCreateProvider);
      final notes = ref.read(studentNotesCreateProvider);
      final date = ref.read(studentDateCreateProvider);
      final studentLevel = ref.read(studentLevelCreateProvider);
      final studentShirtColor = ref.read(studentShirtColorCreateProvider);
      final isInstructor =
          ref.read(appSwitchProvider('create_student_instructor'));

      final address = ref.read(studentAddressCreateProvider);
      final email = ref.read(studentEmailCreateProvider);
      final phone = ref.read(studentPhoneCreateProvider);

      final model = StudentModel(
        name: name,
        address: address,
        dob: date,
        email: email,
        last_name: last_name,
        student_level: StudentLevelModel(
          id: studentLevel?.id,
        ),
        student_shirt_color: StudentShirtColorModel(
          id: studentShirtColor?.id,
        ),
        telephone: phone,
        instructor: isInstructor,
        notes: notes,
        contracts_type: fileContractAsync?.contentType.type,
        contracts_size: fileContract?.files.first.size,
        contracts_date: fileContract != null ? DateTime.now() : null,
        certificates_type: fileCertificateAsync?.contentType.type,
        certificates_size: fileCertificate?.files.first.size,
        certificates_date: fileCertificate != null ? DateTime.now() : null,
      );

      final files = [
        if (fileAvatarAsync != null) fileAvatarAsync,
        if (fileContractAsync != null) fileContractAsync,
        if (fileCertificateAsync != null) fileCertificateAsync,
      ];

      if (!isEdit) {
        return ref.read(studentRepositoryProvider.notifier).create(
              model.copyWith(id: null),
              files: files,
            );
      } else {
        final data = ref.read(studentByIdProvider).asData!.value;
        var updateModel = model.copyWith(
          id: ref.read(currectStudentIdProvider),
        );
        if (fileAvatarAsync == null) {
          updateModel = updateModel.copyWith(
            avatar: data.avatar,
          );
        }
        if (fileContractAsync == null) {
          updateModel = updateModel.copyWith(
            contracts: data.contracts,
            contracts_type: data.contracts_type,
            contracts_size: data.contracts_size,
            contracts_date: data.contracts_date,
          );
        }
        if (fileCertificateAsync == null) {
          updateModel = updateModel.copyWith(
            certificates: data.certificates,
            certificates_type: data.certificates_type,
            certificates_size: data.certificates_size,
            certificates_date: data.certificates_date,
          );
        }
        return ref.read(studentRepositoryProvider.notifier).update(
              updateModel,
              files: files,
            );
      }
    }

    onClickCreate() async {
      if (ref.read(createLoadingProvider)) return;

      final name = ref.read(studentNameCreateProvider);
      final lastName = ref.read(studentSurnameCreateProvider);
      final email = ref.read(studentEmailCreateProvider);
      final phone = ref.read(studentPhoneCreateProvider);

      final studentLevel = ref.read(studentLevelCreateProvider);
      final studentShirtColor = ref.read(studentShirtColorCreateProvider);

      if (name.isEmpty) {
        showTopSnackBarInfo(
          context: context,
          message: 'Please input name!',
        );
        return;
      }

      if (lastName.isEmpty) {
        showTopSnackBarInfo(
          context: context,
          message: 'Please input last name!',
        );
        return;
      }

      if (email.isEmpty) {
        showTopSnackBarInfo(
          context: context,
          message: 'Please input email!',
        );
        return;
      }

      if (phone.isEmpty) {
        showTopSnackBarInfo(
          context: context,
          message: 'Please input phone!',
        );
        return;
      }

      if (studentLevel?.id.isEmpty ?? true) {
        showTopSnackBarInfo(
          context: context,
          message: 'Please choose the level!',
        );
        return;
      }
      if (studentShirtColor?.id.isEmpty ?? true) {
        showTopSnackBarInfo(
          context: context,
          message: 'Please choose the shirt!',
        );
        return;
      }

      try {
        ref.read(createLoadingProvider.notifier).state = true;
        final response = await onSubmit();

        if (response is AsyncData) {
          pushSuccess();
        } else {
          debugPrint('$response');
          showSnackBar(contentText: response.toString());
        }

        // context.push(StudentCreateSuccessRoute.path, extra: {'id': 'id'});
        ref.invalidate(studentProvider);

        if (isEdit) {
          ref.invalidate(studentByIdProvider);
          ref.invalidate(studentByIdRepositoryProvider);
        }

        ref.read(createLoadingProvider.notifier).state = false;
      } catch (e, s) {
        debugPrint('$e $s');
        showSnackBar(contentText: e.toString());
      } finally {
        ref.read(createLoadingProvider.notifier).state = false;
      }
    }

    final avatarFile = ref.watch(uploadFileProvider('create_student_avatar'));
    final name =
        '${ref.watch(studentNameCreateProvider)} ${ref.watch(studentSurnameCreateProvider)}'
            .trim();
    final address = ref.watch(studentAddressCreateProvider);
    final email = ref.watch(studentEmailCreateProvider);
    final phone = ref.watch(studentPhoneCreateProvider);
    final notes = ref.watch(studentNotesCreateProvider);
    final date = ref.watch(studentDateCreateProvider);
    final studentLevel = ref.watch(studentLevelCreateProvider);
    final studentShirtColor = ref.watch(studentShirtColorCreateProvider);

    // Data for select input
    final studentLevelValue = ref.watch(studentLevelProvider);
    final studentShirtColorValue = ref.watch(studentShirtColorProvider);

    final headerStyle = SafeGoogleFont(
      'Inter',
      fontSize: 14 * ffem,
      fontWeight: FontWeight.w500,
      height: 1.4285714286 * ffem / fem,
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

    ref.watch(appTextFieldControllerProvider('student_create_name'));
    ref.watch(appTextFieldControllerProvider('student_create_surname'));
    ref.watch(appTextFieldControllerProvider('student_create_address'));
    ref.watch(appTextFieldControllerProvider('student_create_email'));
    ref.watch(appTextFieldControllerProvider('student_create_phone'));

    final avatarUrl = ref.watch(avatarProvider);

    return Stack(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              padding:
                  EdgeInsets.fromLTRB(16 * fem, 32 * fem, 16 * fem, 38 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff1c1c23),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SafeArea(child: SizedBox(height: 60 * fem)),
                  Bounceable(
                    onTap: () {
                      onClickUploadAvatar();
                    },
                    child: Container(
                      width: 74 * fem,
                      height: 74 * fem,
                      margin: EdgeInsets.fromLTRB(
                          132 * fem, 0 * fem, 130 * fem, 10 * fem),
                      padding: EdgeInsets.fromLTRB(
                          3 * fem, 11 * fem, 3 * fem, 10 * fem),
                      decoration: BoxDecoration(
                        color: const Color(0xffd9d9d9),
                        borderRadius: BorderRadius.circular(37 * fem),
                        image: DecorationImage(
                          image: (avatarFile?.files.first.path != null
                              ? FileImage(File(avatarFile!.files.first.path!))
                              : (avatarUrl == null
                                  ? const AssetImage(
                                      'assets/images/profile-icon-png-image-free-download-searchpng-profile-removebg-preview-1.png',
                                    )
                                  : NetworkImage(avatarUrl)) as ImageProvider),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // cliccasullafotopercaricarelimm (1:2463)
                    margin: EdgeInsets.fromLTRB(
                        2 * fem, 0 * fem, 0 * fem, 30 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 157 * fem,
                    ),
                    child: Text(
                      'Clicca sulla foto per caricare l’immagine dell’allievo',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.6 * ffem / fem,
                        letterSpacing: 0.200000003 * fem,
                        color: const Color(0xffa2a2b5),
                      ),
                    ),
                  ),
                  Container(
                    // studentinformationxY2 (1:2405)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 190 * fem, 8 * fem),
                    child: Text(
                      'Student information',
                      style: headerStyle,
                    ),
                  ),
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
                                (name.isNotEmpty) ? name : 'Write name',
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
                        onTapEditDate();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Data di iscrizione',
                            style: labelStyle,
                          ),
                          Expanded(
                            child: Text(
                              date == null
                                  ? 'Choose date'
                                  : '${date.day.add0}/${date.month.add0}/${date.year}',
                              textAlign: TextAlign.right,
                              style: valueStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _DataBlock(
                    child: Bounceable(
                      onTap: () {
                        onTapEditAddress();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Indirizzo',
                            style: labelStyle,
                          ),
                          Expanded(
                            child: Text(
                              (address.isNotEmpty) ? address : 'insert address',
                              textAlign: TextAlign.right,
                              style: valueStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _DataBlock(
                    child: Bounceable(
                      onTap: () {
                        onTapEditEmail();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Email',
                            style: labelStyle,
                          ),
                          Expanded(
                            child: Text(
                              (email.isNotEmpty) ? email : 'insert email',
                              textAlign: TextAlign.right,
                              style: valueStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _DataBlock(
                    child: Bounceable(
                      onTap: () {
                        onTapEditPhone();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Telefono',
                            style: labelStyle,
                          ),
                          Expanded(
                            child: Text(
                              (phone.isNotEmpty) ? phone : 'insert phone',
                              textAlign: TextAlign.right,
                              style: valueStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _DataBlock(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // securityAXc (1:2408)
                          margin: EdgeInsets.fromLTRB(
                            0 * fem,
                            0 * fem,
                            0 * fem,
                            16 * fem,
                          ),
                          height: 32 * fem,
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
                                  'Level',
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
                                          studentLevel?.text ?? 'Choose level',
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
                        SizedBox(
                          height: 32 * fem,
                          child: Bounceable(
                            onTap: () {
                              final val = studentShirtColorValue.value;
                              if (studentShirtColorValue.isLoading ||
                                  val == null) {
                                return;
                              }
                              onTapEditShirtColor(
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
                                  'Grade',
                                  style: labelStyle,
                                ),
                                Expanded(
                                  child: studentShirtColorValue.when(
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
                                          studentShirtColor?.text ??
                                              'Choose Grade',
                                          textAlign: TextAlign.right,
                                          style: valueStyle,
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _DataBlock(
                    child: SizedBox(
                      height: 20 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Instructor',
                            style: labelStyle,
                          ),
                          const Spacer(),
                          const AppSwitch(id: 'create_student_instructor'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // autolayoutvertical33g (1:2406)
                    margin: EdgeInsets.fromLTRB(
                        4 * fem, 0 * fem, 4 * fem, 20 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 0 * fem, 20 * fem, 0 * fem),
                    decoration: BoxDecoration(
                      color: const Color(0x334e4e61),
                      borderRadius: BorderRadius.circular(16 * fem),
                      border: const Border(),
                    ),
                    child: TextField(
                      onChanged: (val) {
                        ref.read(studentNotesCreateProvider.notifier).state =
                            val;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        // labelText: 'Notes',
                        hintText: 'Notes',
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
                  Container(
                    // contractLst (1:2430)
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Contract',
                      style: headerStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        4 * fem, 12 * fem, 4 * fem, 0 * fem),
                    child: const UploadWidget(
                      id: 'student_create-upload_contract',
                    ),
                  ),
                  Container(
                    // medicalcertificateUFL (1:2431)
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Medical certificate',
                      style: headerStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        4 * fem, 12 * fem, 4 * fem, 0 * fem),
                    child: const UploadWidget(
                      id: 'student_create-upload_certificate',
                    ),
                  ),
                  Bounceable(
                    onTap: () {
                      onClickCreate();
                    },
                    child: Container(
                      // buttonQRp (1:2464)
                      margin: EdgeInsets.fromLTRB(
                        4 * fem,
                        25 * fem,
                        4 * fem,
                        0 * fem,
                      ),
                      width: double.infinity,
                      height: 60 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xffff8869),
                        borderRadius: BorderRadius.circular(99 * fem),
                      ),
                      child: Center(
                        child: ref.watch(createLoadingProvider)
                            ? const CupertinoActivityIndicator(
                                radius: 8,
                              )
                            : Text(
                                'Salva',
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
                ],
              ),
            ),
          ),
        ),
        Container(
          color: const Color(0xff1c1c23),
          padding: EdgeInsets.fromLTRB(24 * fem, 20 * fem, 24 * fem, 12 * fem),
          child: SafeArea(
            bottom: false,
            child: AppBarCustom(
              title: 'Aggiungi allievo',
              onClickBack: () {
                _onClickBack(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _DataBlock extends StatelessWidget {
  const _DataBlock({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Container(
      // autolayoutvertical33g (1:2406)
      margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 8 * fem),
      padding: EdgeInsets.fromLTRB(22 * fem, 20 * fem, 22 * fem, 20 * fem),
      decoration: BoxDecoration(
        color: const Color(0x334e4e61),
        borderRadius: BorderRadius.circular(16 * fem),
        border: const Border(),
      ),
      child: child,
    );
  }
}
