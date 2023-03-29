import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notester/constants.dart';
import 'package:notester/view/edit_note_view.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const EditNoteView(),
            ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(20)),
        child: Slidable(
          startActionPane: ActionPane(
            extentRatio: 0.22,
            motion: const DrawerMotion(),
            children: [
              SlidableAction(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                onPressed: (context) {},
                backgroundColor: const Color(0xFFFE4A49),
                foregroundColor: Colors.black,
                icon: FontAwesomeIcons.trash,
                label: 'Delete',
                spacing: 10,
              ),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(kPrimaryColor.value), borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    'Flutter Tips',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                        color: Colors.black),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    'Build Your Career With Tharwat Samy',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        color: Colors.black54),
                  ),
                ),
                Text(DateTime.now().toString(),
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.black54))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
