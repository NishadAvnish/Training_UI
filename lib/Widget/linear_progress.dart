import 'package:flutter/material.dart';

class LinearProgress extends StatefulWidget {
  final Color color;
  final String heading;
  double progress;

  LinearProgress({Key key, this.color, this.heading, this.progress})
      : super(key: key);
  @override
  _LinearProgressState createState() => _LinearProgressState();
}

class _LinearProgressState extends State<LinearProgress>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  @override
  void initState() {
    super.initState();

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
    final Size _size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(widget.heading,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
        SizedBox(
          height: 10,
        ),
        CustomPaint(
          child: Container(
            height: 20,
            width: _size.width * 0.35,
          ),
          painter: _LinearPainter(
              widget.progress * _animationController.value, widget.color),
        ),
      ],
    );
  }
}

class _LinearPainter extends CustomPainter {
  final progress;
  final Color color;

  _LinearPainter(this.progress, this.color);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black12
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10.0
      ..style = PaintingStyle.stroke;
    canvas.drawLine(Offset(0, 0), Offset(size.width, 0), paint);

    Paint coloredPaint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8.0
      ..style = PaintingStyle.stroke;
    canvas.drawLine(Offset(0, 0), Offset(progress, 0), coloredPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
