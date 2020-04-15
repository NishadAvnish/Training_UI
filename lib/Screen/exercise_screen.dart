import 'package:flutter/material.dart';
import 'package:training/DataModel/exercise.dart';
import 'package:training/Widget/oneline.dart';

class ExerciseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 2,left: 4),
          child: Text("Exercises",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25)),
        ),
        Container(
          height: _size.height * 0.855,
          width: _size.width,
          child: MediaQuery.removePadding(
            removeTop: true,
            child: GridView.builder(
                itemCount: exercises.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 1.6 / 2,
                  maxCrossAxisExtent: 196,
                ),
                itemBuilder: (_, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/exerciseDetail",arguments: index);
                      }, child: OneLineGrid(index: index));
                }),
            context: context,
          ),
        ),
      ]),
    );
  }
}
