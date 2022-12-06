import 'package:awtka/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalenderHomeBody extends ConsumerWidget {
  const CalenderHomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Center(
          child: Text(
        'Comming soon',
        style: SafeGoogleFont(
          'DM Sans',
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: const Color(0xffffffff),
        ),
      )),
    );
  }
}
