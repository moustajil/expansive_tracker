import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final uuid = Uuid();

enum Categorys { leisure, food, travel, work }

final formatter = DateFormat.yMd();
const CategoryIcons = {
  Categorys.food: Icons.lunch_dining,
  Categorys.travel: Icons.flight_takeoff,
  Categorys.leisure: Icons.movie,
  Categorys.work: Icons.work
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
  final Categorys category;
  String get formattedDate {
    return formatter.format(date);
  }
}

class ExpenseBucket {
  final Categorys category;
  final List<Expanse> expanses;

  ExpenseBucket({required this.category, required this.expanses});

  ExpenseBucket.forCategory(List<Expanse> allExpenses, this.category)
      : expanses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  double get totalExpenses {
    double sum = 0;
    for (var expanse in expanses) {
      sum += expanse.amount;
    }
    return sum;
  }
}
