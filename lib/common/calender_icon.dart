import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

class CalenderIcon extends StatelessWidget {
  const CalenderIcon({
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
    path_0.moveTo(size.width * 0.7792429, size.height * 0.1094100);
    path_0.lineTo(size.width * 0.7390643, size.height * 0.1094100);
    path_0.lineTo(size.width * 0.7390643, size.height * 0.06923143);
    path_0.cubicTo(
        size.width * 0.7390643,
        size.height * 0.05857536,
        size.width * 0.7348321,
        size.height * 0.04835571,
        size.width * 0.7272964,
        size.height * 0.04082071);
    path_0.cubicTo(
        size.width * 0.7197607,
        size.height * 0.03328582,
        size.width * 0.7095429,
        size.height * 0.02905275,
        size.width * 0.6988857,
        size.height * 0.02905275);
    path_0.cubicTo(
        size.width * 0.6882286,
        size.height * 0.02905275,
        size.width * 0.6780107,
        size.height * 0.03328582,
        size.width * 0.6704750,
        size.height * 0.04082071);
    path_0.cubicTo(
        size.width * 0.6629393,
        size.height * 0.04835571,
        size.width * 0.6587071,
        size.height * 0.05857536,
        size.width * 0.6587071,
        size.height * 0.06923143);
    path_0.lineTo(size.width * 0.6587071, size.height * 0.1094100);
    path_0.lineTo(size.width * 0.3372782, size.height * 0.1094100);
    path_0.lineTo(size.width * 0.3372782, size.height * 0.06923143);
    path_0.cubicTo(
        size.width * 0.3372782,
        size.height * 0.05857536,
        size.width * 0.3330450,
        size.height * 0.04835571,
        size.width * 0.3255100,
        size.height * 0.04082071);
    path_0.cubicTo(
        size.width * 0.3179750,
        size.height * 0.03328582,
        size.width * 0.3077557,
        size.height * 0.02905275,
        size.width * 0.2970996,
        size.height * 0.02905275);
    path_0.cubicTo(
        size.width * 0.2864436,
        size.height * 0.02905275,
        size.width * 0.2762239,
        size.height * 0.03328582,
        size.width * 0.2686889,
        size.height * 0.04082071);
    path_0.cubicTo(
        size.width * 0.2611539,
        size.height * 0.04835571,
        size.width * 0.2569211,
        size.height * 0.05857536,
        size.width * 0.2569211,
        size.height * 0.06923143);
    path_0.lineTo(size.width * 0.2569211, size.height * 0.1094100);
    path_0.lineTo(size.width * 0.2167425, size.height * 0.1094100);
    path_0.cubicTo(
        size.width * 0.1634818,
        size.height * 0.1094736,
        size.width * 0.1124211,
        size.height * 0.1306596,
        size.width * 0.07476000,
        size.height * 0.1683204);
    path_0.cubicTo(
        size.width * 0.03709929,
        size.height * 0.2059814,
        size.width * 0.01591332,
        size.height * 0.2570421,
        size.width * 0.01584954,
        size.height * 0.3103029);
    path_0.lineTo(size.width * 0.01584954, size.height * 0.7924464);
    path_0.cubicTo(
        size.width * 0.01591332,
        size.height * 0.8457071,
        size.width * 0.03709929,
        size.height * 0.8967679,
        size.width * 0.07476000,
        size.height * 0.9344286);
    path_0.cubicTo(
        size.width * 0.1124211,
        size.height * 0.9720893,
        size.width * 0.1634818,
        size.height * 0.9932750,
        size.width * 0.2167425,
        size.height * 0.9933393);
    path_0.lineTo(size.width * 0.7792429, size.height * 0.9933393);
    path_0.cubicTo(
        size.width * 0.8325036,
        size.height * 0.9932750,
        size.width * 0.8835643,
        size.height * 0.9720893,
        size.width * 0.9212250,
        size.height * 0.9344286);
    path_0.cubicTo(
        size.width * 0.9588857,
        size.height * 0.8967679,
        size.width * 0.9800714,
        size.height * 0.8457071,
        size.width * 0.9801357,
        size.height * 0.7924464);
    path_0.lineTo(size.width * 0.9801357, size.height * 0.3103029);
    path_0.cubicTo(
        size.width * 0.9800714,
        size.height * 0.2570421,
        size.width * 0.9588857,
        size.height * 0.2059814,
        size.width * 0.9212250,
        size.height * 0.1683204);
    path_0.cubicTo(
        size.width * 0.8835643,
        size.height * 0.1306596,
        size.width * 0.8325036,
        size.height * 0.1094736,
        size.width * 0.7792429,
        size.height * 0.1094100);
    path_0.close();
    path_0.moveTo(size.width * 0.09620679, size.height * 0.3103029);
    path_0.cubicTo(
        size.width * 0.09620679,
        size.height * 0.2783346,
        size.width * 0.1089061,
        size.height * 0.2476761,
        size.width * 0.1315107,
        size.height * 0.2250711);
    path_0.cubicTo(
        size.width * 0.1541157,
        size.height * 0.2024664,
        size.width * 0.1847743,
        size.height * 0.1897671,
        size.width * 0.2167425,
        size.height * 0.1897671);
    path_0.lineTo(size.width * 0.7792429, size.height * 0.1897671);
    path_0.cubicTo(
        size.width * 0.8112107,
        size.height * 0.1897671,
        size.width * 0.8418679,
        size.height * 0.2024664,
        size.width * 0.8644750,
        size.height * 0.2250711);
    path_0.cubicTo(
        size.width * 0.8870786,
        size.height * 0.2476761,
        size.width * 0.8997786,
        size.height * 0.2783346,
        size.width * 0.8997786,
        size.height * 0.3103029);
    path_0.lineTo(size.width * 0.8997786, size.height * 0.3504814);
    path_0.lineTo(size.width * 0.09620679, size.height * 0.3504814);
    path_0.lineTo(size.width * 0.09620679, size.height * 0.3103029);
    path_0.close();
    path_0.moveTo(size.width * 0.7792429, size.height * 0.9129821);
    path_0.lineTo(size.width * 0.2167425, size.height * 0.9129821);
    path_0.cubicTo(
        size.width * 0.1847743,
        size.height * 0.9129821,
        size.width * 0.1541157,
        size.height * 0.9002821,
        size.width * 0.1315107,
        size.height * 0.8776786);
    path_0.cubicTo(
        size.width * 0.1089061,
        size.height * 0.8550714,
        size.width * 0.09620679,
        size.height * 0.8244143,
        size.width * 0.09620679,
        size.height * 0.7924464);
    path_0.lineTo(size.width * 0.09620679, size.height * 0.4308393);
    path_0.lineTo(size.width * 0.8997786, size.height * 0.4308393);
    path_0.lineTo(size.width * 0.8997786, size.height * 0.7924464);
    path_0.cubicTo(
        size.width * 0.8997786,
        size.height * 0.8244143,
        size.width * 0.8870786,
        size.height * 0.8550714,
        size.width * 0.8644750,
        size.height * 0.8776786);
    path_0.cubicTo(
        size.width * 0.8418679,
        size.height * 0.9002821,
        size.width * 0.8112107,
        size.height * 0.9129821,
        size.width * 0.7792429,
        size.height * 0.9129821);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = color ?? const Color(0xffAAA6B9).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4979929, size.height * 0.6920000);
    path_1.cubicTo(
        size.width * 0.5312786,
        size.height * 0.6920000,
        size.width * 0.5582607,
        size.height * 0.6650179,
        size.width * 0.5582607,
        size.height * 0.6317321);
    path_1.cubicTo(
        size.width * 0.5582607,
        size.height * 0.5984464,
        size.width * 0.5312786,
        size.height * 0.5714643,
        size.width * 0.4979929,
        size.height * 0.5714643);
    path_1.cubicTo(
        size.width * 0.4647071,
        size.height * 0.5714643,
        size.width * 0.4377250,
        size.height * 0.5984464,
        size.width * 0.4377250,
        size.height * 0.6317321);
    path_1.cubicTo(
        size.width * 0.4377250,
        size.height * 0.6650179,
        size.width * 0.4647071,
        size.height * 0.6920000,
        size.width * 0.4979929,
        size.height * 0.6920000);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = color ?? const Color(0xffAAA6B9).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.2970996, size.height * 0.6920000);
    path_2.cubicTo(
        size.width * 0.3303846,
        size.height * 0.6920000,
        size.width * 0.3573679,
        size.height * 0.6650179,
        size.width * 0.3573679,
        size.height * 0.6317321);
    path_2.cubicTo(
        size.width * 0.3573679,
        size.height * 0.5984464,
        size.width * 0.3303846,
        size.height * 0.5714643,
        size.width * 0.2970996,
        size.height * 0.5714643);
    path_2.cubicTo(
        size.width * 0.2638146,
        size.height * 0.5714643,
        size.width * 0.2368318,
        size.height * 0.5984464,
        size.width * 0.2368318,
        size.height * 0.6317321);
    path_2.cubicTo(
        size.width * 0.2368318,
        size.height * 0.6650179,
        size.width * 0.2638146,
        size.height * 0.6920000,
        size.width * 0.2970996,
        size.height * 0.6920000);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = color ?? const Color(0xffAAA6B9).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.6988857, size.height * 0.6920000);
    path_3.cubicTo(
        size.width * 0.7321714,
        size.height * 0.6920000,
        size.width * 0.7591536,
        size.height * 0.6650179,
        size.width * 0.7591536,
        size.height * 0.6317321);
    path_3.cubicTo(
        size.width * 0.7591536,
        size.height * 0.5984464,
        size.width * 0.7321714,
        size.height * 0.5714643,
        size.width * 0.6988857,
        size.height * 0.5714643);
    path_3.cubicTo(
        size.width * 0.6656000,
        size.height * 0.5714643,
        size.width * 0.6386179,
        size.height * 0.5984464,
        size.width * 0.6386179,
        size.height * 0.6317321);
    path_3.cubicTo(
        size.width * 0.6386179,
        size.height * 0.6650179,
        size.width * 0.6656000,
        size.height * 0.6920000,
        size.width * 0.6988857,
        size.height * 0.6920000);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = color ?? const Color(0xffAAA6B9).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
