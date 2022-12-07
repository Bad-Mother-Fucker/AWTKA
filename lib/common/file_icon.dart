import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

class FileIcon extends StatelessWidget {
  const FileIcon({
    super.key,
    this.size = 44,
    this.colorMain,
    this.colorTopRight,
  });

  final double size;
  final Color? colorMain;
  final Color? colorTopRight;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
        size,
        size,
      ),
      painter: RPSCustomPainter(colorMain, colorMain),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  RPSCustomPainter(this.colorMain, this.colorTopRight);

  final Color? colorMain;
  final Color? colorTopRight;

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1250889, size.height * 0.1363636);
    path_0.cubicTo(size.width * 0.1250889, size.height * 0.06105205,
        size.width * 0.1861409, 0, size.width * 0.2614523, 0);
    path_0.lineTo(size.width * 0.5909091, 0);
    path_0.lineTo(size.width * 0.8750205, size.height * 0.2954545);
    path_0.lineTo(size.width * 0.8750205, size.height * 0.8636364);
    path_0.cubicTo(
        size.width * 0.8750205,
        size.height * 0.9389477,
        size.width * 0.8139682,
        size.height,
        size.width * 0.7386568,
        size.height);
    path_0.lineTo(size.width * 0.2614523, size.height);
    path_0.cubicTo(
        size.width * 0.1861409,
        size.height,
        size.width * 0.1250889,
        size.height * 0.9389477,
        size.width * 0.1250889,
        size.height * 0.8636364);
    path_0.lineTo(size.width * 0.1250889, size.height * 0.1363636);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = colorMain ?? const Color(0xffFF464B).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5909091, size.height * 0.2954545);
    path_1.lineTo(size.width * 0.5909091, 0);
    path_1.lineTo(size.width * 0.8750000, size.height * 0.2954545);
    path_1.lineTo(size.width * 0.5909091, size.height * 0.2954545);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color =
        colorTopRight ?? const Color(0xffFF8689).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
