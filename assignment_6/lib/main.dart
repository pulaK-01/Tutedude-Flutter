import 'package:flutter/material.dart';
import 'package:assignment_6/screens/screen.dart';

void main() {
  runApp(const Assignment6());
}

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TripHistoryPage());
  }
}
