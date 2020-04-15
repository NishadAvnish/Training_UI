import 'package:flutter/material.dart';
import 'package:training/DataModel/exercise.dart';

class ExerciseDetail extends StatelessWidget {
  final int index;

  const ExerciseDetail({this.index});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
          height: _size.height * 0.28,
          width: _size.width,
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(28)),
              image: DecorationImage(
                  image: AssetImage(exercises[index].imagePath),
                  fit: BoxFit.fill)),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: _size.width * 0.7,
                child: Text(exercises[index].name,
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 25)),
              ),
              Text(exercises[index].level,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.green)),
            ],
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
              Divider(),
              SizedBox(height: 2),
              Text(exercises[index].description),
              SizedBox(height: 2),
              Divider(),
              SizedBox(height: 5),
            ],
          ),
        ),
        SizedBox(height: 10),
        _getText(_size, "Equipment required :", exercises[index].requiredEquip),
        SizedBox(height: 5),
        _getText(_size, "Primary Muscle :", exercises[index].primaryMuscle),
        SizedBox(height: 5),
        exercises[index].secondaryMuscle == ""
            ? Container()
            : _getText(
                _size, "Secondary Muscle :", exercises[index].secondaryMuscle),
        SizedBox(height: 5)
      ],
    ));
  }

  Widget _getText(Size size, String topic, String subTopic) {
    return Builder(builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        width: size.width * 0.7,
        child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: [
              TextSpan(text: topic, style: Theme.of(context).textTheme.body2),
              TextSpan(
                  text: "\n\n" + subTopic + "\n",
                  // style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15)
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(color: Colors.green)),
            ],
          ),
        ),
      );
    });
  }
}
