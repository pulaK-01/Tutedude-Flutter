import 'package:flutter/material.dart';

import 'screen/homescreen.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'DiceApp', home: Homescreen());
  }
}
