import 'package:flutter/material.dart';
import 'package:notester/constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key, required this.hintText, this.maxLines = 1}) : super(key: key);
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 18
        ),
        focusedBorder: buildBorder(color: kPrimaryColor),
        enabledBorder: buildBorder(),
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
