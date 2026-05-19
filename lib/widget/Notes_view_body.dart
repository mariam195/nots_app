import 'package:flutter/material.dart';
import 'package:note_app/widget/Custom_App_Bar.dart';
import 'package:note_app/widget/List_view.dart';
import 'package:note_app/widget/custom_text_feild.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(title: 'Notes', icon: Icons.search),
          Expanded(child: SizedBox(child: NotesListView())),
        ],
      ),
    );
  }
}
