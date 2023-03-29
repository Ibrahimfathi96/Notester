import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 32,),
            TextFieldWidget(hintText: 'title',),
            SizedBox(height: 20,),
            TextFieldWidget(hintText: 'content', maxLines: 5,),
            SizedBox(height: 50,),
            ButtonWidget(),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}