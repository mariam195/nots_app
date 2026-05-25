import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/colors_list_view.dart';
import 'package:note_app/widget/consts.dart';

class EditNotsColorsList extends StatefulWidget {
  const EditNotsColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotsColorsList> createState() => _EditNotsColorsListState();
}

class _EditNotsColorsListState extends State<EditNotsColorsList> {
  late int currentIndex ;
  @override
  void initState() {
  super.initState();
    currentIndex = Kcolors.indexOf(Color(widget.note.color));
    
  }

  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Kcolors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = Kcolors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: Kcolors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}