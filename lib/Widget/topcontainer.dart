import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:training/Widget/linear_progress.dart';
import 'package:training/Widget/radial_progress.dart';

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
      child: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 3),
        height: _size.height * 0.35,
        constraints: BoxConstraints(maxHeight: 300),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                            text:
                                "${DateFormat("EEEE").format(DateTime.now()) + ", " + DateFormat("d MMMM").format(DateTime.now())}\n",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.blueGrey)),
                        TextSpan(
                            text: "Hello ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20)),
                        TextSpan(
                            text: "Avnish",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 25)),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: CircleAvatar(
                            minRadius: 10,
                            maxRadius: 20,
                            child: Image.asset("assets/images/user.jpg")),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RadialProgress(),
                  Column(children: [
                    LinearProgress(
                      color: Colors.blue,
                      heading: "Protein",
                      progress: 50,
                    ),
                    LinearProgress(
                      color: Colors.green,
                      heading: "Calcium",
                      progress: 80,
                    ),
                    LinearProgress(
                      color: Colors.red,
                      heading: "Fat",
                      progress: 60,
                    )
                  ])
                ]),
          ],
        ),
      ),
    );
  }
}
