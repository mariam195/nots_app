import 'package:flutter/material.dart';
import 'package:note_app/widget/addNoteForm.dart';

class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
     
        child: SingleChildScrollView(
          child: Addnoteform()
        ),
     
    );
  }
}
