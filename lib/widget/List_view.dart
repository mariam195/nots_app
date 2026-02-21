import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [Colors.blue, Colors.cyan, Colors.cyanAccent];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const NoteItem(),
          );
        },
      ),
    );
  }
}
