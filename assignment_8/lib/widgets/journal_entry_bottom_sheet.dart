import 'package:assignment_8/data/data_model.dart';
import 'package:flutter/material.dart';

class JournalEntryBottomSheet extends StatefulWidget {
  final Function(JournalDataModel) onSave;
  const JournalEntryBottomSheet({required this.onSave, super.key});

  @override
  State<JournalEntryBottomSheet> createState() =>
      _JournalEntryBottomSheetState();
}

class _JournalEntryBottomSheetState extends State<JournalEntryBottomSheet> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 24),

      child: Container(
        color: Colors.grey[900],

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Start writing....',
                  labelStyle: TextStyle(color: Colors.white),
                ),

                style: const TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  child: Text(
                    'Cancel',
                    style: const TextStyle(color: Colors.redAccent),
                  ),
                  onPressed: () {
                    // clear screen
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    final JournalDataModel entry = JournalDataModel(
                      id: '23',
                      title: titleController.text,
                      description: descriptionController.text,
                      dateTime: DateTime.now(),
                    );
                    widget.onSave(entry);
                    // clear screen
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
