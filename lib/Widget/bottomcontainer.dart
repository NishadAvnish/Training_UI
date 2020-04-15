import 'package:flutter/material.dart';

import 'mybottomsheet.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => showBotomSheet(context),
      child: Container(
        margin: EdgeInsets.only(top: 12, left: 28, right: 28),
        padding: EdgeInsets.only(left: 21, right: 12, top: 20),
        height: _size.height * 0.22,
        width: _size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent,
              Colors.blue[900],
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Your Next Workout",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.white)),
              SizedBox(height: 8),
              Text("Upper Body",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.white)),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  _iconContainer("assets/images/Biceps.jpg"),
                  SizedBox(width: 12),
                  _iconContainer("assets/images/chest.png"),
                  SizedBox(width: 12),
                  _iconContainer("assets/images/back.png"),
                ],
              ),
            ]),
      ),
    );
  }

  Widget _iconContainer(String imagePath) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: AssetImage(imagePath))),
    );
  }
}
