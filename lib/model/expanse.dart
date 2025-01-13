import 'package:uuid/uuid.dart';

final uuid = Uuid();

class Expanse {
  Expanse({
    required this.title,
    required this.amount,
    required this.date,
  }) : id = uuid.v4();
  final String title;
  final double amount;
  final String id;
  final DateTime date;
}
