import 'package:flutter/material.dart';
import 'package:training/Widget/bottomcontainer.dart';
import 'package:training/Widget/cards.dart';
import 'package:training/Widget/topcontainer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TopContainer(),
            Container(
              height: _size.height * 0.32,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 10.0, bottom: 10.0),
                      child: Text("Meals For Today",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.blueGrey)),
                    ),
                    MyCard(),
                  ]),
            ),
            BottomContainer()
          ]),
    );
  }
}
