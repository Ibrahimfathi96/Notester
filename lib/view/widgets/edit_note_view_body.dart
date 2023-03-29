import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class EditNoteBodyWidget extends StatelessWidget {
  const EditNoteBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: const [
          SizedBox(height: 32,),
          TextFieldWidget(hintText: 'title',),
          SizedBox(height: 20,),
          TextFieldWidget(hintText: 'content', maxLines: 5,),
        ],
      ),
    );
  }
}
