import 'package:uuid/uuid.dart';

final uuid = Uuid();

enum Category { leisure, food, travel, work }

class Expanse {
  Expanse(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();
  final String title;
  final double amount;
  final String id;
  final DateTime date;
  final Category category;
}
