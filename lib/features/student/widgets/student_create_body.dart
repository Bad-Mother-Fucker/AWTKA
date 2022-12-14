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
import 'package:awtka/features/student/repositories/student_level.dart';
import 'package:awtka/features/student/widgets/common/choose_input_sheet.dart';
import 'package:awtka/features/student/widgets/common/date_input_sheet.dart';
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
import 'package:http_parser/http_parser.dart';

import '../repositories/student_shirt_color.dart';

final createLoadingProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final studentNotesCreateProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

final studentNameCreateProvider = StateProvider.autoDispose<String>((ref) {
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

class StudentCreatePageBodyWidget extends ConsumerWidget {
  const StudentCreatePageBodyWidget({super.key});

  _onClickBack(BuildContext context) {
    context.pop();
  }

  @override
  Widget build(BuildContext context, ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    void onClickUploadAvatar() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );
      ref.read(uploadFileProvider('create_student_avatar').notifier).state =
          result;
    }

    onTapEditName() async {
      final name = await Navigator.of(context).push<String?>(
        MaterialSheetRoute<String?>(
          fit: SheetFit.loose,
          builder: (BuildContext context) => const TextInputSheet(
            id: 'student_create_name',
            title: 'Edit Name & Surname',
            label: 'Name',
            actionText: 'Save',
          ),
        ),
      );
      if (name != null && name.isNotEmpty) {
        ref.read(studentNameCreateProvider.notifier).state = name;
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
      final notes = ref.read(studentNotesCreateProvider);
      final date = ref.read(studentDateCreateProvider);
      final studentLevel = ref.read(studentLevelCreateProvider);
      final studentShirtColor = ref.read(studentShirtColorCreateProvider);
      final isInstructor =
          ref.read(appSwitchProvider('create_student_instructor'));

      return ref.read(studentRepositoryProvider.notifier).create(
        StudentModel(
          id: '',
          name: name,
          address: '',
          dob: date,
          email: 'mock@gmail.com',
          last_name: ' ',
          student_level: StudentLevelModel(
            id: studentLevel?.id,
          ),
          student_shirt_color: StudentShirtColorModel(
            id: studentShirtColor?.id,
          ),
          telephone: '+84900000000',
          instructor: isInstructor,
          notes: notes,
        ),
        files: [
          if (fileAvatarAsync != null) fileAvatarAsync,
          if (fileContractAsync != null) fileContractAsync,
          if (fileCertificateAsync != null) fileCertificateAsync,
        ],
      );
    }

    pushSuccess() {
      context.push(StudentCreateSuccessRoute.path, extra: {'id': 'id'});
    }

    onClickCreate() async {
      if (ref.read(createLoadingProvider)) return;

      final name = ref.read(studentNameCreateProvider);
      final date = ref.read(studentDateCreateProvider);
      final studentLevel = ref.read(studentLevelCreateProvider);
      final studentShirtColor = ref.read(studentShirtColorCreateProvider);

      if (name.isEmpty) {
        showSnackBar(contentText: 'Please input name!');
        return;
      }
      if (date == null) {
        showSnackBar(contentText: 'Please input entry date!');
        return;
      }
      if (studentLevel?.id.isEmpty ?? true) {
        showSnackBar(contentText: 'Please input student level!');
        return;
      }
      if (studentShirtColor?.id.isEmpty ?? true) {
        showSnackBar(contentText: 'Please input student shirt!');
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
        ref.read(createLoadingProvider.notifier).state = false;
      } catch (e, s) {
        debugPrint('$e $s');
        showSnackBar(contentText: e.toString());
      } finally {
        ref.read(createLoadingProvider.notifier).state = false;
      }
    }

    final avatarFile = ref.watch(uploadFileProvider('create_student_avatar'));
    final name = ref.watch(studentNameCreateProvider);
    final notes = ref.watch(studentNotesCreateProvider);
    final date = ref.watch(studentDateCreateProvider);
    final studentLevel = ref.watch(studentLevelCreateProvider);
    final studentShirtColor = ref.watch(studentShirtColorCreateProvider);

    // Data for select input
    final studentLevelValue = ref.watch(studentLevelProvider);
    final studentShirtColorValue = ref.watch(studentShirtColorProvider);

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
                              : const AssetImage(
                                  'assets/images/profile-icon-png-image-free-download-searchpng-profile-removebg-preview-1.png',
                                )) as ImageProvider,
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
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.4285714286 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // autolayoutvertical33g (1:2406)
                    margin:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 8 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 22 * fem, 21 * fem, 0 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0x334e4e61),
                      borderRadius: BorderRadius.circular(16 * fem),
                      border: const Border(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autolayoutverticalTNJ (1:2407)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 22 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // securityAXc (1:2408)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 28 * fem),
                                width: double.infinity,
                                height: 20 * fem,
                                child: Bounceable(
                                  onTap: () {
                                    onTapEditName();
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Name & Surname',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.4285714286 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                      Expanded(
                                        child: Builder(builder: (context) {
                                          return Text(
                                            // placeholdernameZra (1:2413)
                                            (name.isNotEmpty)
                                                ? name
                                                : 'Write name',
                                            textAlign: TextAlign.right,
                                            style: SafeGoogleFont(
                                              'Inter',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.3333333333 * ffem / fem,
                                              letterSpacing: 0.200000003 * fem,
                                              color: const Color(0xffa2a2b5),
                                            ),
                                          );
                                        }),
                                      ),
                                      SizedBox(width: 8 * fem),
                                      const NextIcon(),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // framescN (1:2414)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0.32 * fem, 0 * fem),
                                width: double.infinity,
                                height: 20 * fem,
                                child: Bounceable(
                                  onTap: () {
                                    onTapEditDate();
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Entry date',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.4285714286 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          // placeholdernameZra (1:2413)
                                          date == null
                                              ? 'Choose date'
                                              : '${date.day.add0}/${date.month.add0}/${date.year}',
                                          textAlign: TextAlign.right,
                                          style: SafeGoogleFont(
                                            'Inter',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.3333333333 * ffem / fem,
                                            letterSpacing: 0.200000003 * fem,
                                            color: const Color(0xffa2a2b5),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autolayoutvertical33g (1:2406)
                    margin:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 8 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 22 * fem, 21 * fem, 0 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0x334e4e61),
                      borderRadius: BorderRadius.circular(16 * fem),
                      border: const Border(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autolayoutverticalTNJ (1:2407)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 22 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // securityAXc (1:2408)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 28 * fem),
                                width: double.infinity,
                                height: 20 * fem,
                                child: Bounceable(
                                  onTap: () {
                                    final val = studentLevelValue.value;
                                    if (studentLevelValue.isLoading ||
                                        val == null) {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Level',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.4285714286 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                      Expanded(
                                        child: studentLevelValue.when(
                                            error: (e, s) => Text('$e,$s'),
                                            loading: () => const Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child:
                                                      CupertinoActivityIndicator(
                                                    radius: 8,
                                                  ),
                                                ),
                                            data: (data) {
                                              return Text(
                                                // placeholdernameZra (1:2413)
                                                studentLevel?.text ??
                                                    'Choose level',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height:
                                                      1.3333333333 * ffem / fem,
                                                  letterSpacing:
                                                      0.200000003 * fem,
                                                  color:
                                                      const Color(0xffa2a2b5),
                                                ),
                                              );
                                            }),
                                      ),
                                      SizedBox(width: 8 * fem),
                                      const NextIcon(),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // framescN (1:2414)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0.32 * fem, 0 * fem),
                                width: double.infinity,
                                height: 20 * fem,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Grade',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.4285714286 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                      Expanded(
                                        child: studentShirtColorValue.when(
                                            error: (e, s) => Text('$e,$s'),
                                            loading: () => const Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child:
                                                      CupertinoActivityIndicator(
                                                    radius: 8,
                                                  ),
                                                ),
                                            data: (data) {
                                              return Text(
                                                // placeholdernameZra (1:2413)
                                                studentShirtColor?.text ??
                                                    'Choose Grade',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height:
                                                      1.3333333333 * ffem / fem,
                                                  letterSpacing:
                                                      0.200000003 * fem,
                                                  color:
                                                      const Color(0xffa2a2b5),
                                                ),
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
                      ],
                    ),
                  ),
                  Container(
                    // autolayoutvertical33g (1:2406)
                    margin:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 8 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 0 * fem, 10 * fem, 0 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0x334e4e61),
                      borderRadius: BorderRadius.circular(16 * fem),
                      border: const Border(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // securityAXc (1:2408)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 18 * fem, 0 * fem, 18 * fem),
                          width: double.infinity,
                          height: 20 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Instructor',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.4285714286 * ffem / fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                              const Spacer(),
                              const AppSwitch(id: 'create_student_instructor'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autolayoutvertical33g (1:2406)
                    margin:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 8 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 0 * fem, 21 * fem, 0 * fem),
                    width: double.infinity,
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
                        hintStyle: TextStyle(
                          fontSize: 14 * ffem,
                          color: const Color(0xffa2a2b5),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18 * ffem,
                        color: Colors.white,
                      ),
                      minLines: 5,
                      maxLines: 5,
                    ),
                  ),
                  Container(
                    // contractLst (1:2430)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 20 * fem, 256 * fem, 15 * fem),
                    child: Text(
                      'Contract',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 0 * fem),
                    child: const UploadWidget(
                      id: 'student_create-upload_contract',
                    ),
                  ),
                  Container(
                    // medicalcertificateUFL (1:2431)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 12 * fem, 187 * fem, 19 * fem),
                    child: Text(
                      'Medical certificate',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 0 * fem),
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
                          4 * fem, 27 * fem, 4 * fem, 0 * fem),
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
