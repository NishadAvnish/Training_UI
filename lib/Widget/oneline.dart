import 'package:flutter/material.dart';
import 'package:training/DataModel/exercise.dart';

class OneLineGrid extends StatelessWidget {
  final int index;

  const OneLineGrid({Key key, this.index});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              exercises[index].imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 10,
              left: 0,
              child: Container(
                width: 140,
                color: Colors.black26,
                constraints: BoxConstraints(maxHeight: 180),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    exercises[index].name,
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .copyWith(color: Colors.white,fontSize: exercises[index].name.length>=10?16:18),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
