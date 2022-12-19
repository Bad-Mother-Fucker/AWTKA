import 'dart:math';

import 'package:awtka/common/bounceable.dart';
import 'package:awtka/common/configm_alert.dart';
import 'package:awtka/common/file_icon.dart';
import 'package:awtka/utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

String formatBytes(int bytes, int decimals) {
  if (bytes <= 0) return "0 B";
  const suffixes = ["b", "kb", "mb", "gb", "tb", "pb", "eb", "zb", "yb"];
  var i = (log(bytes) / log(1024)).floor();
  return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
}

class ContractData {
  final String? name;
  final DateTime? date;
  final int? size;
  final String? type;

  ContractData({
    required this.name,
    this.date,
    this.size,
    this.type,
  });
}

class ContractWidget extends ConsumerWidget {
  const ContractWidget({
    super.key,
    required this.data,
    this.onCancel,
    this.onEdit,
    this.showActions = true,
  });

  final ContractData data;
  final Function? onCancel;
  final Function? onEdit;
  final bool showActions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      padding: EdgeInsets.fromLTRB(
          15 * fem, (showActions ? 15 : 20) * fem, 20 * fem, 0 * fem),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff24242d)),
        color: const Color(0xff26262f),
        borderRadius: BorderRadius.circular(20 * fem),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // autogroupa9kePb8 (GF8z7xkASKj7HpBhX2a9ke)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
            height: 44 * fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 44 * fem,
                  height: 44 * fem,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      const FileIcon(),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: (44 - 22.0) * fem),
                          child: SizedBox(
                            width: 19 * fem,
                            height: 14 * fem,
                            child: Text(
                              data.type?.toUpperCase() ?? 'UN',
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 9 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.3625 * ffem / fem,
                                letterSpacing: -0.2 * fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    // autogroupyuwrHiS (GF8zqri2B9BUjUfJsiYuWr)
                    padding: EdgeInsets.fromLTRB(
                        15 * fem, 4 * fem, 0 * fem, 3 * fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            // autogroupxsuroRt (GF8zJTSgC9F83qHoqaxSUr)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 191 * fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // mariorossimedicalcertificate7S (5:399)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                  child: Text(
                                    data.name ?? 'N/A',
                                    style: SafeGoogleFont(
                                      'Open Sans',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3625 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  // autogroupu8mgaqx (GF8zV2yPERNpQGLk5gu8Mg)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 16 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        // mbfsQ (5:400)
                                        formatBytes(data.size ?? 0, 2),
                                        style: SafeGoogleFont(
                                          'DM Sans',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3025 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                      Container(
                                        // autogroupb4flQ4J (GF8zbhSww8bRsHxqwDb4FL)
                                        padding: EdgeInsets.fromLTRB(
                                            5 * fem, 0 * fem, 0 * fem, 0 * fem),
                                        height: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // ellipse67jQ (5:378)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  4 * fem,
                                                  8 * fem,
                                                  0 * fem),
                                              width: 2 * fem,
                                              height: 2 * fem,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1 * fem),
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                            Builder(builder: (context) {
                                              final fileUploadDate =
                                                  data.date ?? DateTime.now();
                                              return Text(
                                                DateFormat.yMMMMd()
                                                    .format(fileUploadDate),
                                                style: SafeGoogleFont(
                                                  'DM Sans',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3025 * ffem / fem,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                              );
                                            }),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          // optionvgr (5:379)
                          width: 3 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/images/option-VPY.png',
                            width: 3 * fem,
                            height: 15 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (showActions)
            Container(
              // autogroupjc8aESe (GF91MLrtday8mdHogLJC8a)
              margin: EdgeInsets.fromLTRB(6 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              height: 24 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Bounceable(
                    onTap: () async {
                      final x = await showAlertDialog(context);
                      if (x) onCancel?.call();
                    },
                    child: SizedBox(
                      // iconremovew6A (5:388)
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // iconsEi (5:389)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: 24 * fem,
                            height: 24 * fem,
                            child: Image.asset(
                              'assets/images/icon.png',
                              width: 24 * fem,
                              height: 24 * fem,
                            ),
                          ),
                          Container(
                            // cancellaxGA (5:396)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Cancella',
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625 * ffem / fem,
                                color: const Color(0xfffb4646),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 42 * fem,
                  ),
                  Bounceable(
                    onTap: () async {
                      // final x = await showAlertDialog(context);
                      // if (x)
                      onEdit?.call();
                    },
                    child: Container(
                      // autogroupn7mlrcS (GF91URVRkbGACie39an7mL)
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 4 * fem, 0 * fem, 1 * fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // edit1Z14 (5:401)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 8 * fem, 0 * fem),
                            width: 18 * fem,
                            height: 18 * fem,
                            child: Image.asset(
                              'assets/images/edit_icon.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // aggiornaTML (5:398)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 2 * fem),
                            child: Text(
                              'Aggiorna',
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625 * ffem / fem,
                                color: const Color(0xffffffff),
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
    );
  }
}
