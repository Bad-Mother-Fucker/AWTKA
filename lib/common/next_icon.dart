import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

class NextIcon extends StatelessWidget {
  const NextIcon({
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
      size: Size(7, 12),
      painter: RPSCustomPainter(),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.cubicTo(1.66793, 0.0619189, 1.72333, 0.0985822, 1.77005, 0.144923);
    path_0.lineTo(5.85505, 4.22992);
    path_0.cubicTo(6.08787, 4.46215, 6.27258, 4.73802, 6.39862, 5.04175);
    path_0.cubicTo(6.52465, 5.34547, 6.58952, 5.67108, 6.58952, 5.99992);
    path_0.cubicTo(6.58952, 6.32875, 6.52465, 6.65436, 6.39862, 6.95808);
    path_0.cubicTo(6.27258, 7.26181, 6.08787, 7.53768, 5.85505, 7.76991);
    path_0.lineTo(1.77005, 11.8549);
    path_0.cubicTo(1.72344, 11.9015, 1.66809, 11.9385, 1.60718, 11.9637);
    path_0.cubicTo(1.54627, 11.989, 1.48098, 12.002, 1.41505, 12.002);
    path_0.cubicTo(1.34912, 12.002, 1.28384, 11.989, 1.22293, 11.9637);
    path_0.cubicTo(1.16202, 11.9385, 1.10667, 11.9015, 1.06005, 11.8549);
    path_0.cubicTo(1.01344, 11.8083, 0.976454, 11.7529, 0.951224, 11.692);
    path_0.cubicTo(0.925994, 11.6311, 0.913009, 11.5658, 0.913009, 11.4999);
    path_0.cubicTo(0.913009, 11.434, 0.925994, 11.3687, 0.951224, 11.3078);
    path_0.cubicTo(0.976454, 11.2469, 1.01344, 11.1915, 1.06005, 11.1449);
    path_0.lineTo(5.14505, 7.05991);
    path_0.cubicTo(5.42596, 6.77866, 5.58373, 6.39742, 5.58373, 5.99992);
    path_0.cubicTo(5.58373, 5.60241, 5.42596, 5.22117, 5.14505, 4.93992);
    path_0.lineTo(1.06005, 0.854921);
    path_0.cubicTo(1.01319, 0.80844, 0.975993, 0.75314, 0.950608, 0.69221);
    path_0.cubicTo(0.925224, 0.63128, 0.912155, 0.565928, 0.912155, 0.499922);
    path_0.cubicTo(0.912155, 0.433916, 0.925224, 0.368563, 0.950608, 0.307634);
    path_0.cubicTo(0.975993, 0.246704, 1.01319, 0.191404, 1.06005, 0.144923);
    path_0.cubicTo(1.10677, 0.0985822, 1.16218, 0.0619189, 1.2231, 0.0370366);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffA2A2B5).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
