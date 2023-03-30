import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/note_model.dart';
import 'colors_list_view.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({Key? key, required this.noteMD}) : super(key: key);
  final NoteMD noteMD;
  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.noteMD.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32*2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
              onTap: (){
                setState(() {
                  currentIndex = index;
                  widget.noteMD.color = kColors[index].value;
                });
              },
              child: ColorItem(
                color: kColors[index] ,
                isSelected: currentIndex == index,)),
        ),
        itemCount: kColors.length,
      ),
    );
  }
}