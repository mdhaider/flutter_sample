import 'package:flutter/material.dart';
import 'package:flutter_sample/files/FilesScreen.dart';
import 'package:flutter_sample/loader/LoaderScreen.dart';
import 'package:flutter_sample/gmaps/MapsScreen.dart';
import 'package:flutter_sample/constants/Constants.dart' as Constants;

class MyApp extends StatelessWidget {

  int number=0;
   BuildContext context;

  void goToMaps() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MapsScreen()));
  }

  void goToFiles() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => FilesScreen()));
  }

  void goToLoader() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
  }

  @override
  Widget build(BuildContext context) {
    this.context=context;
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
          onPressed: goToFiles,
          child: new Text(Constants.SELECT_FILE),
        ),
        new RaisedButton(
          padding: const EdgeInsets.all(12.0),
          textColor: Colors.white,
          color: Colors.redAccent,
          onPressed: goToMaps,
          child: new Text(Constants.RECORD_VIDEO),
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
