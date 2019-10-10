import 'package:flutter/material.dart';
import 'package:flutter_sample/home/MyCard.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double myTextSize = 30.0;
    final TextStyle myTextStyle =
        TextStyle(color: Colors.green, fontSize: myTextSize);

    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        MyCard(
          title: Text(
            "Google Maps",
            style: myTextStyle,
          ),
          screenName: 1,
        ),
        MyCard(
          title: Text(
            "Select/Upload a file",
            style: myTextStyle,
          ),
          screenName: 2,
        ),
        MyCard(
          title: Text(
            "Record/Upload a Video",
            style: myTextStyle,
          ),
          screenName: 3,
        ),
        MyCard(
          title: Text(
            "Show Animated Loader",
            style: myTextStyle,
          ),
          screenName: 4,
        )
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
