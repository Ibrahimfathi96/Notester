import 'package:flutter/material.dart';
import 'package:notester/constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'title',
        focusedBorder: buildBorder(color: kPrimaryColor),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color:color ?? Colors.white),
    );
  }
}
