import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My First App",

    home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("application's appbar"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
          child: Text("My First App", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
        ),
      ),
    ),
  );
}