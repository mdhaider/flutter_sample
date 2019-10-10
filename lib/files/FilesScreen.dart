import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Files'),
      ),
      body: Center(child: RaisedButton(
        child: Text('hi'),
        textColor: Colors.amber,
        onPressed: () => Navigator.pop(context),
      ),),
    );
  }
}
