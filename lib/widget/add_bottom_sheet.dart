import 'package:flutter/material.dart';
import 'package:note_app/widget/Custom_buttom.dart';
import 'package:note_app/widget/custom_text_feild.dart';

class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 32),
            CustomTextFeild(hint: 'Title'),
            SizedBox(height: 16),
            CustomTextFeild(hint: 'Content', maxLines: 5),
            SizedBox(height: 32),
            CustomButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
