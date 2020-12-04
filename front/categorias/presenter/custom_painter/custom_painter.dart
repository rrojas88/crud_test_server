import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0;
    paint_0 = Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0;
    path_0 = Path();
    path_0.moveTo(0, size.height * 0.07);
    path_0.lineTo(0, size.height * 0.33);
    path_0.quadraticBezierTo(size.width * 0.12, size.height * 0.33,
        size.width * 0.13, size.height * 0.50);
    path_0.quadraticBezierTo(
        size.width * 0.12, size.height * 0.67, 0, size.height * 0.68);
    path_0.lineTo(0, size.height * 0.93);
    path_0.quadraticBezierTo(size.width * 0.00, size.height * 0.97,
        size.width * 0.03, size.height * 0.97);
    path_0.quadraticBezierTo(
        size.width * 0.27, size.height * 0.97, size.width, size.height * 0.97);
    path_0.lineTo(size.width, size.height * 0.85);
    path_0.quadraticBezierTo(size.width * 0.95, size.height * 0.85,
        size.width * 0.95, size.height * 0.80);
    path_0.quadraticBezierTo(
        size.width * 0.95, size.height * 0.75, size.width, size.height * 0.75);
    path_0.lineTo(size.width, size.height * 0.70);
    path_0.quadraticBezierTo(size.width * 0.95, size.height * 0.70,
        size.width * 0.95, size.height * 0.65);
    path_0.quadraticBezierTo(
        size.width * 0.95, size.height * 0.60, size.width, size.height * 0.60);
    path_0.lineTo(size.width, size.height * 0.55);
    path_0.quadraticBezierTo(size.width * 0.95, size.height * 0.55,
        size.width * 0.95, size.height * 0.50);
    path_0.quadraticBezierTo(
        size.width * 0.95, size.height * 0.45, size.width, size.height * 0.45);
    path_0.lineTo(size.width, size.height * 0.40);
    path_0.quadraticBezierTo(size.width * 0.95, size.height * 0.40,
        size.width * 0.95, size.height * 0.35);
    path_0.quadraticBezierTo(
        size.width * 0.95, size.height * 0.30, size.width, size.height * 0.30);
    path_0.lineTo(size.width, size.height * 0.25);
    path_0.quadraticBezierTo(size.width * 0.95, size.height * 0.24,
        size.width * 0.95, size.height * 0.20);
    path_0.quadraticBezierTo(
        size.width * 0.95, size.height * 0.15, size.width, size.height * 0.15);
    path_0.lineTo(size.width, size.height * 0.03);
    path_0.quadraticBezierTo(size.width * 0.27, size.height * 0.03,
        size.width * 0.03, size.height * 0.03);
    path_0.quadraticBezierTo(
        size.width * 0.00, size.height * 0.03, 0, size.height * 0.07);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0;
    paint_0 = Paint()
      ..color = AppColors.yellow[500]
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0;
    path_0 = Path();
    path_0.moveTo(0, size.height * 0.07);
    path_0.lineTo(0, size.height * 0.33);
    path_0.quadraticBezierTo(size.width * 0.13, size.height * 0.33,
        size.width * 0.13, size.height * 0.50);
    path_0.quadraticBezierTo(
        size.width * 0.12, size.height * 0.67, 0, size.height * 0.68);
    path_0.lineTo(0, size.height * 0.93);
    path_0.quadraticBezierTo(size.width * -0.00, size.height * 0.97,
        size.width * 0.03, size.height * 0.97);
    path_0.quadraticBezierTo(size.width * 0.03, size.height * 0.97,
        size.width * 0.69, size.height * 0.97);
    path_0.lineTo(size.width * 0.69, size.height * 0.85);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.85,
        size.width * 0.64, size.height * 0.80);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.75,
        size.width * 0.69, size.height * 0.75);
    path_0.lineTo(size.width * 0.69, size.height * 0.70);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.70,
        size.width * 0.64, size.height * 0.65);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.60,
        size.width * 0.69, size.height * 0.60);
    path_0.lineTo(size.width * 0.69, size.height * 0.55);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.55,
        size.width * 0.64, size.height * 0.50);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.45,
        size.width * 0.69, size.height * 0.45);
    path_0.lineTo(size.width * 0.69, size.height * 0.40);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.39,
        size.width * 0.64, size.height * 0.35);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.30,
        size.width * 0.69, size.height * 0.30);
    path_0.lineTo(size.width * 0.69, size.height * 0.25);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.25,
        size.width * 0.64, size.height * 0.20);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.15,
        size.width * 0.69, size.height * 0.15);
    path_0.lineTo(size.width * 0.69, size.height * 0.03);
    path_0.quadraticBezierTo(size.width * 0.19, size.height * 0.03,
        size.width * 0.03, size.height * 0.03);
    path_0.quadraticBezierTo(0, size.height * 0.03, 0, size.height * 0.07);

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0;
    paint_0 = Paint()
      ..color = AppColors.yellow[500]
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0;
    path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.07);
    path_0.lineTo(size.width, size.height * 0.33);
    path_0.quadraticBezierTo(size.width * 0.88, size.height * 0.33,
        size.width * 0.88, size.height * 0.50);
    path_0.quadraticBezierTo(
        size.width * 0.88, size.height * 0.67, size.width, size.height * 0.68);
    path_0.lineTo(size.width, size.height * 0.95);
    path_0.quadraticBezierTo(size.width * 1.00, size.height * 0.97,
        size.width * 0.96, size.height * 0.97);
    path_0.quadraticBezierTo(size.width * 0.89, size.height * 0.98,
        size.width * 0.69, size.height * 0.97);
    path_0.lineTo(size.width * 0.69, size.height * 0.85);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.85,
        size.width * 0.64, size.height * 0.80);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.75,
        size.width * 0.69, size.height * 0.75);
    path_0.lineTo(size.width * 0.69, size.height * 0.70);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.70,
        size.width * 0.64, size.height * 0.65);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.60,
        size.width * 0.69, size.height * 0.60);
    path_0.lineTo(size.width * 0.69, size.height * 0.55);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.55,
        size.width * 0.64, size.height * 0.50);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.45,
        size.width * 0.69, size.height * 0.45);
    path_0.lineTo(size.width * 0.69, size.height * 0.40);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.39,
        size.width * 0.64, size.height * 0.35);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.30,
        size.width * 0.69, size.height * 0.30);
    path_0.lineTo(size.width * 0.69, size.height * 0.25);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.25,
        size.width * 0.64, size.height * 0.20);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.15,
        size.width * 0.69, size.height * 0.15);
    path_0.lineTo(size.width * 0.69, size.height * 0.03);
    path_0.quadraticBezierTo(size.width * 1.14, size.height * 0.03,
        size.width * 0.97, size.height * 0.03);
    path_0.quadraticBezierTo(
        size.width, size.height * 0.03, size.width, size.height * 0.07);

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0;
    paint_0 = Paint()
      ..color = AppColors.black[500]
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    Path path_0;
    path_0 = Path();
    path_0.moveTo(size.width * 0.69, size.height * 0.97);
    path_0.lineTo(size.width * 0.69, size.height * 0.97);
    path_0.lineTo(size.width * 0.69, size.height * 0.85);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.85,
        size.width * 0.64, size.height * 0.80);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.75,
        size.width * 0.69, size.height * 0.75);
    path_0.lineTo(size.width * 0.69, size.height * 0.70);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.70,
        size.width * 0.64, size.height * 0.65);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.60,
        size.width * 0.69, size.height * 0.60);
    path_0.lineTo(size.width * 0.69, size.height * 0.55);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.55,
        size.width * 0.64, size.height * 0.50);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.45,
        size.width * 0.69, size.height * 0.45);
    path_0.lineTo(size.width * 0.69, size.height * 0.40);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.39,
        size.width * 0.64, size.height * 0.35);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.30,
        size.width * 0.69, size.height * 0.30);
    path_0.lineTo(size.width * 0.69, size.height * 0.25);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.25,
        size.width * 0.64, size.height * 0.20);
    path_0.quadraticBezierTo(size.width * 0.64, size.height * 0.15,
        size.width * 0.69, size.height * 0.15);
    path_0.lineTo(size.width * 0.69, size.height * 0.03);

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

/* Stack(
                children: [
                  CustomPaint(
                    size: Size(
                      SizeConfig.widthMultiplier * 85,
                      SizeConfig.heightMultiplier * 25,
                    ),
                    painter: RPSCustomPainter2(),
                  ),
                  CustomPaint(
                    size: Size(
                      SizeConfig.widthMultiplier * 85,
                      SizeConfig.heightMultiplier * 25,
                    ),
                    painter: RPSCustomPainter3(),
                  ),
                  CustomPaint(
                    size: Size(
                      SizeConfig.widthMultiplier * 85,
                      SizeConfig.heightMultiplier * 25,
                    ),
                    painter: RPSCustomPainter4(),
                  ),
                ],
              ) */

/* child: CustomPaint(
                  size: Size(
                    SizeConfig.widthMultiplier * 85,
                    SizeConfig.heightMultiplier * 25,
                  ),
                  painter: RPSCustomPainter(),
                ), */
