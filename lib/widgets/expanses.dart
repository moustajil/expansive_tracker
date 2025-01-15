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
  final List<Expanse> _registerExpances = [];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return NewExpanses(onAddExpaseCart: _addExpansesCart);
      },
    );
  }

  void _addExpansesCart(Expanse expanse) {
    setState(() {
      _registerExpances.add(expanse);
    });
  }

  void _removeExpansesCart(Expanse expanse) {
    final expanseIndex = _registerExpances.indexOf(expanse);
    setState(() {
      _registerExpances.remove(expanse);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 3),
        content: Text("Expanse Deleted"),
        action: SnackBarAction(
            label: "Okay",
            onPressed: () {
              setState(() {
                _registerExpances.insert(expanseIndex, expanse);
              });
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Text("No expanses found, start adding one"),
    );

    if (_registerExpances.isNotEmpty) {
      mainContent = ExpansesLists(
          removeExpanse: _removeExpansesCart, expansesList: _registerExpances);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Expanses Tracker APP"),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          Text("The Chart"),
          Expanded(child: mainContent),
        ],
      ),
    );
  }
}
