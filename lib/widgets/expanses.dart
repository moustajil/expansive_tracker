import 'package:ex_tr/widgets/expanses_list.dart/expanses_list.dart';
import 'package:ex_tr/model/expanse.dart';
import 'package:ex_tr/widgets/new_expanses.dart';
import 'package:flutter/material.dart';

class Expanses extends StatefulWidget {
  const Expanses({super.key});

  @override
  State<Expanses> createState() => _ExpansesState();
}

class _ExpansesState extends State<Expanses> {
  final List<Expanse> _registerExpances = [
    Expanse(
        title: "Cinema",
        amount: 12.12,
        category: Category.leisure,
        date: DateTime.now()),
    Expanse(
        title: "Flutter Cours",
        amount: 18.12,
        category: Category.work,
        date: DateTime.now()),
    Expanse(
        title: "Book",
        amount: 22.12,
        category: Category.work,
        date: DateTime.now()),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return NewExpanses();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Expanses Tracker APP"),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ExpansesLists(expansesList: _registerExpances))
        ],
      ),
    );
  }
}