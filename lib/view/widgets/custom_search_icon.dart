import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData iconData;

  const CustomSearchIcon({super.key, required this.iconData});

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
          onPressed: () {},
          icon: Icon(
            iconData,
            size: 28,
          ),
        ),
      ),
    );
  }
}
