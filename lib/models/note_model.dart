
import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteMD extends HiveObject{
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  String dateTime;
  @HiveField(3)
  int color;

  NoteMD(
      {required this.title,
      required this.content,
      required this.dateTime,
      required this.color});
}
