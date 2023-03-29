import 'package:flutter/material.dart';
import 'package:notester/constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.onTap, this.isLoading = false}) : super(key: key);
  final void Function() onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child:
          isLoading ? const CircularProgressIndicator(
            color: Colors.black,
          ):
          const Text('ADD',
            style: TextStyle(
              color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
