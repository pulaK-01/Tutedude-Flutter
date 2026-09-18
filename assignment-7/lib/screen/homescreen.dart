import 'package:flutter/material.dart';

import '../ds.dart';

import 'dart:math';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int index = 0;
  // rolling function
  void _RandomNumber() {
    setState(() {
      index = Random().nextInt(diceNumbers.length);
      final int a = diceNumbers[index];
      print("generated number: $a");

      //print("generated number:" + a.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Roll the Dice.........Verify Your Luck ☠️",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(),
                  ),

                  child: Center(
                    child: Text(
                      '${diceNumbers[index]}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              /* Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 300,
                    color: Colors.brown[400],
                    child: Center(
                      child: Text(
                        "~ author",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
          
                  SizedBox(width: 5),
          
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.brown[400],
                    child: Center(
                      child: Text(
                        "date",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ), */
              //SizedBox(height: 40),

              // button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    backgroundColor: Colors.deepPurple[100],
                    foregroundColor: Colors.deepPurpleAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16),
                      side: BorderSide(color: Colors.deepPurple, width: 1),
                    ),
                  ),
                  onPressed: _RandomNumber,

                  child: Text(
                    "Roll",
                    style: TextStyle(
                      //color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
