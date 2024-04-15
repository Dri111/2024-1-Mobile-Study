import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class TPaint3 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    Paint paint = Paint()..color=Colors.black;
    Path path = Path()
      ..moveTo(-157+50,506)
      ..lineTo(157-50,506)
    ..arcTo(
      Rect.fromPoints(const Offset(157-75,506), const Offset(157+25,606)),
      1.5*pi,
      1*pi,
      false
    )
    ..lineTo(-157+50,606)
    ..arcTo(
        Rect.fromPoints(const Offset(-157,606), const Offset(-157+100,506)),
        0.5*pi,
        1*pi,
        false
    );
    canvas.drawPath(path,paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TPaint2 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    Paint paint = Paint()..color=Colors.black;
    Path path = Path()
      ..moveTo(-107,376)
      ..lineTo(107,376)
      ..arcTo(
          Rect.fromPoints(const Offset(107-25,376), const Offset(107+75,476)),
          1.5*pi,
          -1*pi,
          false
      )
      // ..lineTo(-107,476)
      ..arcTo(
          Rect.fromPoints(const Offset(-107-50,476), const Offset(-107+50,376)),
          0.5*pi,
          -1*pi,
          false
      );
    canvas.drawPath(path,paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TPaint1 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    Paint paint = Paint()..color=Colors.black;
    Path path = Path()
      ..moveTo(-132,246)
      ..lineTo(146,246)
      ..arcTo(
          Rect.fromPoints(const Offset(146-100,246), const Offset(146,346)),
          1.5*pi,
          1*pi,
          false
      )
      ..lineTo(-132,346)
      ..arcTo(
          Rect.fromPoints(const Offset(-132-50,346), const Offset(-132+50,246)),
          0.5*pi,
          -1*pi,
          false
      );
    canvas.drawPath(path,paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:
        Center(
          child:Column(
            children:[
              CustomPaint(
                painter: TPaint1(),
              ),
              CustomPaint(
                painter : TPaint2()
              ),
              CustomPaint(
                painter:TPaint3(),
              )
            ]
          )
        )
      )
    );
  }
}
