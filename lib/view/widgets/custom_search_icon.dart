import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  final IconData iconData;
  final void Function()? onPressed;
  const CustomAppBarIcon({super.key, required this.iconData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        margin: const EdgeInsets.all(6),
        width: 50,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16)),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            iconData,
            size: 28,
          ),
        ),
      ),
    );
  }
}
