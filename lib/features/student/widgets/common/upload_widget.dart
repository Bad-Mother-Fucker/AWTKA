import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/dotted_border.dart';
import 'package:awtka/features/student/widgets/common/contract_widget.dart';
import 'package:awtka/utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final uploadFileProvider =
    StateProvider.autoDispose.family<FilePickerResult?, String>((ref, id) {
  return null;
});

final uploadFileDataProvider =
    StateProvider.autoDispose.family<ContractData?, String>((ref, id) {
  return null;
});

class UploadWidget extends ConsumerWidget {
  const UploadWidget({
    super.key,
    required this.id,
  });

  final String id;

  void _onClickUpload(WidgetRef ref) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    ref.read(uploadFileProvider(id).notifier).state = result;
  }

  void _onCancelUpload(WidgetRef ref) async {
    ref.read(uploadFileProvider(id).notifier).state = null;
    ref.read(uploadFileDataProvider(id).notifier).state = null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    final file = ref.watch(uploadFileProvider(id));

    if (file != null) {
      return Padding(
        padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
        child: ContractWidget(
          data: ContractData(
            name: file.names.first,
            type: file.paths.first?.split('.').last.toUpperCase(),
            size: file.files.first.size,
          ),
          onCancel: () => _onCancelUpload(ref),
          onEdit: () => _onClickUpload(ref),
        ),
      );
    }

    final fileData = ref.watch(uploadFileDataProvider(id));
    if (fileData != null && fileData.name!.isNotEmpty) {
      return Padding(
        padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
        child: ContractWidget(
          data: fileData,
          onCancel: () => _onCancelUpload(ref),
          onEdit: () => _onClickUpload(ref),
        ),
      );
    }

    return Bounceable(
      onTap: () {
        _onClickUpload(ref);
      },
      child: const UploadWidgetUI(),
    );
  }
}

class UploadWidgetUI extends ConsumerWidget {
  const UploadWidgetUI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      // uploadcvresumeqpe (1:2440)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
      width: double.infinity,
      child: DottedBorderRadius(
        radius: 15 * fem,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0 * fem, 26 * fem, 0 * fem, 25 * fem),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // iconhbx (1:2443)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 15 * fem, 0 * fem),
                width: 24 * fem,
                height: 24 * fem,
                child: Image.asset(
                  'assets/images/icon-xgA.png',
                  width: 24 * fem,
                  height: 24 * fem,
                ),
              ),
              Container(
                // selectfileafk (1:2442)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 15 * fem, 0 * fem),
                child: Text(
                  'Select file',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
