import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample/files/FilesScreen.dart';
import 'package:flutter_sample/gmaps/MapsScreen.dart';

class MyCard extends StatelessWidget {
  final Widget title;
  int screenName;

  MyCard({this.title, this.screenName});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: InkWell(
          onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => MapsScreen())),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[this.title],
              ),
            ),
          ),
        ));
  }

  Future navigateToSubPage(context, int val) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => goTo(val)));
  }

  void backToMainPage(context) {
    Navigator.pop(context);
  }

   goTo(number) {
    switch (number) {
      case 1:
        MapsScreen();
        break;
      case 2:
        FilesScreen();
        break;
      case 3:
        MapsScreen();
        break;
      case 4:
        MapsScreen();
        break;
    }
  }
}
