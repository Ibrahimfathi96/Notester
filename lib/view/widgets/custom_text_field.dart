import 'package:flutter/material.dart';
import 'package:notester/constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key, required this.hintText, this.maxLines = 1, this.onSaved}) : super(key: key);
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }
        return null;
      },
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 18
        ),
        focusedBorder: buildBorder(color: kPrimaryColor),
        enabledBorder: buildBorder(),
        border: buildBorder()
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color:color ?? Colors.white),
    );
  }
}
