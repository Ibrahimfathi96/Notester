import 'package:flutter/material.dart';
import 'package:notester/constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: const Center(
        child: Text('ADD',
          style: TextStyle(
            color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
