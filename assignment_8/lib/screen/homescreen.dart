import 'package:assignment_8/data/data.dart';

import 'package:assignment_8/widgets/card.dart';
import 'package:flutter/material.dart';

import '../widgets/journal_entry_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      appBar: AppBar(
        backgroundColor: Colors.black87,
        shadowColor: Colors.orange,
        title: const Text(
          'Capture Your Ideas',
          style: TextStyle(
            color: Colors.deepOrangeAccent,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrange,
              Color.fromARGB(255, 167, 48, 5),
              Colors.black,
            ],
            stops: [0, .25, .85],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: entries.length,
          itemBuilder: (context, index) {
            return JournalCard(entry: entries[index]);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 12);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.add, color: Colors.white, size: 36),
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.grey[900],
            isScrollControlled: true,
            enableDrag: false,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
            ),
            context: context,
            builder: (context) {
              return JournalEntryBottomSheet(
                onSave: (entry) {
                  setState(() {
                    entries.add(entry);
                  });
                },
              );
            },
          );
        },
      ),
    );
  }
}
