import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

class HomeIcon extends StatelessWidget {
  const HomeIcon({
    super.key,
    this.size = 23,
    this.color,
    this.active = false,
    // active -> 0xffFF7966
    // inactive -> 0xffA2A2B5
  });

  final double size;
  final Color? color;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
          size,
          (size * 1.173913043478261)
              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(
        color: active
            ? color ?? const Color(0xffFF7966)
            : color ?? const Color(0xffA2A2B5),
      ),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  RPSCustomPainter({this.color});
  final Color? color;

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9513565, size.height * 0.3976000);
    path_0.lineTo(size.width * 0.6420217, size.height * 0.09322296);
    path_0.cubicTo(
        size.width * 0.6037391,
        size.height * 0.05566704,
        size.width * 0.5518783,
        size.height * 0.03457756,
        size.width * 0.4978174,
        size.height * 0.03457756);
    path_0.cubicTo(
        size.width * 0.4437522,
        size.height * 0.03457756,
        size.width * 0.3918948,
        size.height * 0.05566704,
        size.width * 0.3536100,
        size.height * 0.09322296);
    path_0.lineTo(size.width * 0.04427609, size.height * 0.3976000);
    path_0.cubicTo(
        size.width * 0.03287461,
        size.height * 0.4087444,
        size.width * 0.02383496,
        size.height * 0.4220074,
        size.width * 0.01768143,
        size.height * 0.4366148);
    path_0.cubicTo(
        size.width * 0.01152791,
        size.height * 0.4512222,
        size.width * 0.008382870,
        size.height * 0.4668889,
        size.width * 0.008428652,
        size.height * 0.4827000);
    path_0.lineTo(size.width * 0.008428652, size.height * 0.8765926);
    path_0.cubicTo(
        size.width * 0.008428652,
        size.height * 0.9085185,
        size.width * 0.02131874,
        size.height * 0.9391333,
        size.width * 0.04426304,
        size.height * 0.9617074);
    path_0.cubicTo(
        size.width * 0.06720783,
        size.height * 0.9842815,
        size.width * 0.09832696,
        size.height * 0.9969630,
        size.width * 0.1307757,
        size.height * 0.9969630);
    path_0.lineTo(size.width * 0.8648565, size.height * 0.9969630);
    path_0.cubicTo(
        size.width * 0.8973043,
        size.height * 0.9969630,
        size.width * 0.9284261,
        size.height * 0.9842815,
        size.width * 0.9513696,
        size.height * 0.9617074);
    path_0.cubicTo(
        size.width * 0.9743130,
        size.height * 0.9391333,
        size.width * 0.9872043,
        size.height * 0.9085185,
        size.width * 0.9872043,
        size.height * 0.8765926);
    path_0.lineTo(size.width * 0.9872043, size.height * 0.4827000);
    path_0.cubicTo(
        size.width * 0.9872478,
        size.height * 0.4668889,
        size.width * 0.9841043,
        size.height * 0.4512222,
        size.width * 0.9779522,
        size.height * 0.4366148);
    path_0.cubicTo(
        size.width * 0.9717957,
        size.height * 0.4220074,
        size.width * 0.9627565,
        size.height * 0.4087444,
        size.width * 0.9513565,
        size.height * 0.3976000);
    path_0.close();
    path_0.moveTo(size.width * 0.6201609, size.height * 0.9167185);
    path_0.lineTo(size.width * 0.3754691, size.height * 0.9167185);
    path_0.lineTo(size.width * 0.3754691, size.height * 0.7588704);
    path_0.cubicTo(
        size.width * 0.3754691,
        size.height * 0.7269481,
        size.width * 0.3883591,
        size.height * 0.6963296,
        size.width * 0.4113039,
        size.height * 0.6737556);
    path_0.cubicTo(
        size.width * 0.4342483,
        size.height * 0.6511815,
        size.width * 0.4653696,
        size.height * 0.6385000,
        size.width * 0.4978174,
        size.height * 0.6385000);
    path_0.cubicTo(
        size.width * 0.5302652,
        size.height * 0.6385000,
        size.width * 0.5613826,
        size.height * 0.6511815,
        size.width * 0.5843304,
        size.height * 0.6737556);
    path_0.cubicTo(
        size.width * 0.6072739,
        size.height * 0.6963296,
        size.width * 0.6201609,
        size.height * 0.7269481,
        size.width * 0.6201609,
        size.height * 0.7588704);
    path_0.lineTo(size.width * 0.6201609, size.height * 0.9167185);
    path_0.close();
    path_0.moveTo(size.width * 0.9056391, size.height * 0.8765926);
    path_0.cubicTo(
        size.width * 0.9056391,
        size.height * 0.8872333,
        size.width * 0.9013435,
        size.height * 0.8974407,
        size.width * 0.8936957,
        size.height * 0.9049667);
    path_0.cubicTo(
        size.width * 0.8860478,
        size.height * 0.9124889,
        size.width * 0.8756739,
        size.height * 0.9167185,
        size.width * 0.8648565,
        size.height * 0.9167185);
    path_0.lineTo(size.width * 0.7017261, size.height * 0.9167185);
    path_0.lineTo(size.width * 0.7017261, size.height * 0.7588704);
    path_0.cubicTo(
        size.width * 0.7017261,
        size.height * 0.7056630,
        size.width * 0.6802435,
        size.height * 0.6546370,
        size.width * 0.6420043,
        size.height * 0.6170148);
    path_0.cubicTo(
        size.width * 0.6037609,
        size.height * 0.5793889,
        size.width * 0.5518957,
        size.height * 0.5582556,
        size.width * 0.4978174,
        size.height * 0.5582556);
    path_0.cubicTo(
        size.width * 0.4437348,
        size.height * 0.5582556,
        size.width * 0.3918700,
        size.height * 0.5793889,
        size.width * 0.3536291,
        size.height * 0.6170148);
    path_0.cubicTo(
        size.width * 0.3153883,
        size.height * 0.6546370,
        size.width * 0.2939048,
        size.height * 0.7056630,
        size.width * 0.2939048,
        size.height * 0.7588704);
    path_0.lineTo(size.width * 0.2939048, size.height * 0.9167185);
    path_0.lineTo(size.width * 0.1307757, size.height * 0.9167185);
    path_0.cubicTo(
        size.width * 0.1199596,
        size.height * 0.9167185,
        size.width * 0.1095861,
        size.height * 0.9124889,
        size.width * 0.1019383,
        size.height * 0.9049667);
    path_0.cubicTo(
        size.width * 0.09429000,
        size.height * 0.8974407,
        size.width * 0.08999304,
        size.height * 0.8872333,
        size.width * 0.08999304,
        size.height * 0.8765926);
    path_0.lineTo(size.width * 0.08999304, size.height * 0.4827000);
    path_0.cubicTo(
        size.width * 0.09003087,
        size.height * 0.4720667,
        size.width * 0.09432391,
        size.height * 0.4618778,
        size.width * 0.1019426,
        size.height * 0.4543333);
    path_0.lineTo(size.width * 0.4112761, size.height * 0.1500781);
    path_0.cubicTo(
        size.width * 0.4342652,
        size.height * 0.1275659,
        size.width * 0.4653826,
        size.height * 0.1149274,
        size.width * 0.4978174,
        size.height * 0.1149274);
    path_0.cubicTo(
        size.width * 0.5302522,
        size.height * 0.1149274,
        size.width * 0.5613652,
        size.height * 0.1275659,
        size.width * 0.5843565,
        size.height * 0.1500781);
    path_0.lineTo(size.width * 0.8936913, size.height * 0.4544556);
    path_0.cubicTo(
        size.width * 0.9012783,
        size.height * 0.4619667,
        size.width * 0.9055696,
        size.height * 0.4721111,
        size.width * 0.9056391,
        size.height * 0.4827000);
    path_0.lineTo(size.width * 0.9056391, size.height * 0.8765926);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffA2A2B5).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
