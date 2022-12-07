import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DottedBorderRadius extends ConsumerWidget {
  const DottedBorderRadius({
    super.key,
    required this.child,
    required this.radius,
  });
  final Widget child;
  final double radius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DottedBorder(
      color: const Color(0xff9d97b5),
      strokeWidth: 1,
      radius: const Radius.circular(20),
      dashPattern: const [3, 3],
      customPath: (size) {
        return Path()
          ..moveTo(radius, 0)
          ..lineTo(size.width - radius, 0)
          ..arcToPoint(Offset(size.width, radius),
              radius: Radius.circular(radius))
          ..lineTo(size.width, size.height - radius)
          ..arcToPoint(Offset(size.width - radius, size.height),
              radius: Radius.circular(radius))
          ..lineTo(radius, size.height)
          ..arcToPoint(Offset(0, size.height - radius),
              radius: Radius.circular(radius))
          ..lineTo(0, radius)
          ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius));
      },
      child: child,
    );
  }
}
