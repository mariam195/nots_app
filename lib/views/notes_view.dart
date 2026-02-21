import 'package:flutter/material.dart';
import 'package:note_app/widget/Notes_view_body.dart';
import 'package:note_app/widget/add_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return addNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
