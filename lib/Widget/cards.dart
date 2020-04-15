import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:training/DataModel/meal_model.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 15.0, right: 10.0, top: 4),
      height: _size.height * 0.26,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: meals.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.of(context)
                  .pushNamed("/detailPage", arguments: index),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, right: 10.0),
                child: Row(
                  children: <Widget>[
                    Material(
                        elevation: 2,
                        clipBehavior: Clip.hardEdge,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Flexible(
                                  fit: FlexFit.tight,
                                  child: Hero(
                                    child: ClipRRect(
                                      clipBehavior: Clip.antiAlias,
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        meals[index].imagePath,
                                        width: 150,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    tag: "imageTag" + index.toString(),
                                  )),
                              Flexible(
                                  fit: FlexFit.tight,
                                  child: Column(children: [
                                    Text(
                                      meals[index].mealTime,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      meals[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      meals[index].timeTaken + "  min",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      meals[index].kiloCaloriesBurnt + "  KCal",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ]))
                            ])),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
