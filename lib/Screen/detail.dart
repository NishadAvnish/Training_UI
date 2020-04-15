import 'package:flutter/material.dart';
import 'package:training/DataModel/meal_model.dart';

class DetailPage extends StatefulWidget {
  final int index;
  const DetailPage({this.index, Key key}) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  double _maxLine = 8;
  bool seeMoreClicked = false;
  TextEditingController _textEditingController;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000))
          ..addListener(() => setState(() {}));

    _animationController.forward();
  }

  @override
  void dispose() {
    _textEditingController?.dispose();
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: _height * 0.37,
              color: Colors.transparent,
              child: Stack(
                children: <Widget>[
                  Hero(
                    child: Container(
                      height: _height * 0.3,
                      width: _width,
                      constraints:
                          BoxConstraints(maxHeight: _height > 600 ? 280 : 180),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        image: DecorationImage(
                          image: AssetImage(meals[widget.index].imagePath),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    tag: "imageTag" + widget.index.toString(),
                  ),
                  Positioned(
                    left: 9 > 8 ? _width * 0.1 : _width * 0.2,
                    right: 9 > 8 ? _width * 0.1 : _width * 0.2,
                    bottom: _height * 0.03,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: _height * 0.03,
                            maxHeight: 60,
                          ),
                          child: Center(
                            child: AnimatedOpacity(
                              child: Text(
                                meals[widget.index].name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline
                                    .copyWith(color: Colors.black),
                              ),
                              duration: Duration(milliseconds: 300),
                              opacity:
                                  _animationController.value > 0.28 ? 1 : 0,
                              curve: Curves.easeIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            AnimatedOpacity(
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 300),
              opacity: _animationController.value > 0.35 ? 1 : 0,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
                  child: _middleSlot()),
            ),
            AnimatedOpacity(
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 300),
              opacity: _animationController.value > 0.50 ? 1 : 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                child: Text(meals[widget.index].preparation),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _middleSlot() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                color: Colors.black54,
                width: 1,
              )),
          child: Text(meals[widget.index].mealTime,
              style: Theme.of(context).textTheme.body2.copyWith(fontSize: 15))),
      Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              color: Colors.black54,
              width: 1,
            ),
          ),
          child: Text(meals[widget.index].timeTaken + "min",
              style: Theme.of(context).textTheme.body2.copyWith(fontSize: 15))),
    ]);
  }
}
