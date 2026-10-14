import 'package:assignment_8/data/data_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class JournalCard extends StatelessWidget {
  final JournalDataModel entry;
  const JournalCard({required this.entry, super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        side: BorderSide(color: Colors.deepOrangeAccent, width: 2),
      ),
      shadowColor: Colors.deepOrange,
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              entry.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              entry.description,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              DateFormat('dd MMM yyyy , hh:mm a').format(entry.dateTime),
              style: const TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
