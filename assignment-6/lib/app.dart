import 'package:flutter/material.dart';
import 'screen/homescreen.dart';

class Application5 extends StatelessWidget {
  const Application5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Application5',
      home: const Homescreen(),
    );
  }
}
