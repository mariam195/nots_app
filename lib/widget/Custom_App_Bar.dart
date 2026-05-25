import 'package:flutter/material.dart';
import 'package:note_app/widget/Custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onpressed});
  final String title;
  final IconData icon;
   final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: const TextStyle(fontSize: 30)),
        Spacer(),
        CustomSearchIcon(
          onpressed: onpressed,
          icon: icon),
      ],
    );
  }
}
