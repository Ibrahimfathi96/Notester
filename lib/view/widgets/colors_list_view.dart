import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isSelected}) : super(key: key);
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return
      isSelected? const CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 28,
        ),
      ):
      const CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 28,
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32*2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
              onTap: (){
                setState(() {currentIndex = index;});
              },
              child: ColorItem(isSelected: currentIndex == index,)),
        ),
        itemCount: 10,
      ),
    );
  }
}
