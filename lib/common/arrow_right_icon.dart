import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

class ArrowRightIcon extends StatelessWidget {
  const ArrowRightIcon({
    super.key,
    this.size = 24,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: RPSCustomPainter(),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.8854167);
    path_0.cubicTo(
        size.width * 0.7128333,
        size.height * 0.8854167,
        size.width * 0.8854167,
        size.height * 0.7128750,
        size.width * 0.8854167,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.8854167,
        size.height * 0.2871667,
        size.width * 0.7128333,
        size.height * 0.1145833,
        size.width * 0.5000000,
        size.height * 0.1145833);
    path_0.cubicTo(
        size.width * 0.2871654,
        size.height * 0.1145833,
        size.width * 0.1145821,
        size.height * 0.2871667,
        size.width * 0.1145821,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.1145821,
        size.height * 0.7128750,
        size.width * 0.2871654,
        size.height * 0.8854167,
        size.width * 0.5000000,
        size.height * 0.8854167);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = size.width * 0.05000000;
    paint_0_stroke.color = const Color(0xffADA4A5).withOpacity(1.0);
    paint_0_stroke.strokeCap = StrokeCap.round;
    paint_0_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff000000).withOpacity(0.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4399042, size.height * 0.6446333);
    path_1.lineTo(size.width * 0.5851542, size.height * 0.5000083);
    path_1.lineTo(size.width * 0.4399042, size.height * 0.3553829);

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = size.width * 0.05000000;
    paint_1_stroke.color = const Color(0xffADA4A5).withOpacity(1.0);
    paint_1_stroke.strokeCap = StrokeCap.round;
    paint_1_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint_1_stroke);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = const Color(0xff000000).withOpacity(0.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
