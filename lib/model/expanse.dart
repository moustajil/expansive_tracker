import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final uuid = Uuid();

enum Category { leisure, food, travel, work }

final formatter = DateFormat.yMd();
const CategoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work
};

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
  String get formattedDate {
    return formatter.format(date);
  }
}
