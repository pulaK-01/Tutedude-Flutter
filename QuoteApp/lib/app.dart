import 'package:flutter/material.dart';

import 'screen/homescreen.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuoteApp',
      home: const Homescreen(),
    );
  }
}
