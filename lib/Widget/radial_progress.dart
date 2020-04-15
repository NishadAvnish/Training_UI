import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class RadialProgress extends StatefulWidget {
  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress>
    with SingleTickerProviderStateMixin {
  double radialProgress;
  AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    radialProgress = 270;
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.forward();
  }
  @override
  void dispose() { 
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 140,
        width: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "  ${100 - ((radialProgress * _animationController.value) ~/ 3.6)} % ",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30,color: Colors.blue[900]),
            ),
            Text(
              "KCal Left",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                  color: Colors.blueGrey),
            ),
          ],
        ),
      ),
      willChange: true,
      painter: _RadialPainter(radialProgress * _animationController.value),
    );
  }
}

class _RadialPainter extends CustomPainter {
  final double radialProgress;

  _RadialPainter(this.radialProgress);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black12
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8.0
      ..style = PaintingStyle.stroke;
    Offset _center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(_center, size.width / 2, paint);

    Paint progressPaint = Paint()
      ..shader = LinearGradient(colors: [
        Colors.red,
        Colors.redAccent,
        Colors.blue,
        Colors.blueAccent,
      ]).createShader(
        Rect.fromCircle(center: _center, radius: size.width / 2),
      )
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8.0
      ..style = PaintingStyle.stroke;

    canvas.drawArc(Rect.fromCircle(center: _center, radius: size.width / 2),
        math.radians(-90), math.radians(radialProgress), false, progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
