import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "My First App",

      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("application's appbar",style:TextStyle(color:Colors.white) ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Text(
            "My First App",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
