import 'dart:math';

import '../ds.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int index = 0;

  void sort() {
    setState(() {
      index = Random().nextInt(quotes.length);
      print("choosen: $index");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        foregroundColor: const Color(0xFF3F54CB),
        title: const Text(
          "Daily Inspiration",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color.fromARGB(255, 73, 102, 199)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 280,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      const Icon(
                        Icons.format_quote,
                        size: 48,
                        color: Color(0xFF3F54CB),
                      ),

                      Center(
                        child: Text(
                          '"${quotes[index]['quote']}"',
                          style: GoogleFonts.lato(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '~ ${quotes[index]['author']}',
                          style: TextStyle(
                            //color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                SizedBox(
                  width: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 7,
                        horizontal: 10,
                      ),
                      backgroundColor: Colors.brown[400],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                    onPressed: sort,
                    child: const Text(
                      'Inspire Me',
                      style: TextStyle(
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
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
              iconSize: 40,
              tooltip: 'Home',
            ),
            IconButton(
              onPressed: sort,
              icon: const Icon(Icons.favorite_border),
              iconSize: 40,

              tooltip: 'Favourite',
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
              iconSize: 40,

              tooltip: 'Share',
            ),
          ],
        ),
      ),
    );
  }
}
