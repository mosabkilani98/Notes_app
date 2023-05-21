import 'package:hive/hive.dart';
part 'note_modele.g.dart';

@HiveType(typeId: 0)
class NoteModele extends HiveObject {
  @HiveField(0)
  final String tilte;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModele(
      {required this.tilte,
      required this.content,
      required this.date,
      required this.color});
}
