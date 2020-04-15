import 'package:flutter/material.dart';
import 'package:training/Screen/dashboard.dart';
import 'package:training/Screen/detail.dart';
import 'package:training/Screen/exercise_detail.dart';
import 'package:training/Screen/exercise_screen.dart';
import 'package:training/Screen/home.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/home":
      return MaterialPageRoute(builder: (context) => Home());
    case "/detailPage":
      final int index = settings.arguments;
      return MaterialPageRoute(builder: (context) => DetailPage(index: index));
    case "/exerciseScreen":
      return MaterialPageRoute(builder: (context) => ExerciseScreen());
    case "/dashBoard":
      return MaterialPageRoute(builder: (context) => DashBoard());
    case "/exerciseDetail":
      final index = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => ExerciseDetail(index: index));
    default:
  }
}
