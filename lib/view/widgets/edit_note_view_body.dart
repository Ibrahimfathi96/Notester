import 'package:flutter/material.dart';
import 'package:notester/models/note_model.dart';
import '../../constants.dart';
import 'colors_list_view.dart';
import 'custom_text_field.dart';

class EditNoteBodyWidget extends StatefulWidget {
  const EditNoteBodyWidget({Key? key, required this.noteMD}) : super(key: key);
  final NoteMD noteMD;

  @override
  State<EditNoteBodyWidget> createState() => _EditNoteBodyWidgetState();
}

class _EditNoteBodyWidgetState extends State<EditNoteBodyWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 32,),
          TextFieldWidget(
            onChanged:(value){
              widget.noteMD.title = value;
            },
            hintText: widget.noteMD.title,

          ),
          const SizedBox(height: 20,),
          TextFieldWidget(
            onChanged: (value){
              widget.noteMD.content = value;
            },
            hintText: widget.noteMD.content, maxLines: 5,),
          const SizedBox(height: 20,),
          EditNotesColorsList(
            noteMD:widget.noteMD,
          )
        ],
      ),
    );
  }
}
class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({Key? key, required this.noteMD}) : super(key: key);
  final NoteMD noteMD;
  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  int currentIndex = 0;
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
