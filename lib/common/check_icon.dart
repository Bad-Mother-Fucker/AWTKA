
import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

class CheckIcon extends StatelessWidget {
  const CheckIcon({
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
      painter: RPSCustomPainter(),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff515151).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5139043, size.height * 0.4946870),
        size.width * 0.4802522, paint0Fill);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02173913;
    paint1Stroke.color = const Color(0xffE5E5E5).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5139087, size.height * 0.4946870),
        size.width * 0.4718043, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff515151).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5139087, size.height * 0.4946870),
        size.width * 0.4718043, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
