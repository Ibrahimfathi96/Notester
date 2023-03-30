import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notester/cubits/add_note_cubit/add_note_cubit.dart';

import '../../constants.dart';

class ColorItem extends StatelessWidget {
   const ColorItem({Key? key, required this.isSelected, required this.color}) : super(key: key);
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return
      isSelected?  CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundColor: color,
          radius: 28,
        ),
      ):
       CircleAvatar(
      backgroundColor: color,
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
          padding:  const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
              onTap: (){
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                setState(() {currentIndex = index;});
              },
              child: ColorItem(
                color: kColors[index] ,
                isSelected: currentIndex == index,)),
        ),
        itemCount: kColors.length,
      ),
    );
  }
}
