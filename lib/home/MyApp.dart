import 'package:flutter/material.dart';
import 'package:flutter_sample/constants/Constants.dart' as Constants;
import 'package:flutter_sample/files/VideoDemo.dart';
import 'package:flutter_sample/gmaps/MapsView.dart';
import 'package:flutter_sample/gmaps/MapsWithMarker.dart';
import 'package:flutter_sample/gmaps/MapsWithoutMarker.dart';
import 'package:flutter_sample/loader/LoaderScreen.dart';

class MyApp extends StatelessWidget {
  int number = 0;
  BuildContext context;

  void goToMaps() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MapsWithoutMarker()));
  }

  void goToMapsWithMarker() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MapsView()));
  }

  void playVideo() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VideoDemo()));
  }

  void goToLoader() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoaderScreen()));
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    final double myTextSize = 30.0;
    final TextStyle myTextStyle =
        TextStyle(color: Colors.redAccent, fontSize: myTextSize);

    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new RaisedButton(
          padding: const EdgeInsets.all(12.0),
          textColor: Colors.white,
          color: Colors.redAccent,
          onPressed: goToMaps,
          child: new Text(Constants.GOOGLE_MAPS),
        ),
        new RaisedButton(
          padding: const EdgeInsets.all(12.0),
          textColor: Colors.white,
          color: Colors.redAccent,
          onPressed: goToMapsWithMarker,
          child: new Text(Constants.GOOGLE_MAPS_MARKER),
        ),
        new RaisedButton(
          padding: const EdgeInsets.all(12.0),
          textColor: Colors.white,
          color: Colors.redAccent,
          onPressed: playVideo,
          child: new Text(Constants.SELECT_FILE),
        ),
        new RaisedButton(
          padding: const EdgeInsets.all(12.0),
          textColor: Colors.white,
          color: Colors.redAccent,
          onPressed: goToLoader,
          child: new Text(Constants.ANIM_LOAD),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Sample"),
      ),
      body: Container(
        // Sets the padding in the main container
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Center(
          child: SingleChildScrollView(child: column),
        ),
      ),
    );
  }
}
