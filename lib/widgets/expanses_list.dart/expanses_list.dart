import 'package:ex_tr/model/expanse.dart';
import 'package:ex_tr/widgets/expanses_list.dart/expanses_item.dart';
import 'package:flutter/material.dart';

class ExpansesLists extends StatelessWidget {
  const ExpansesLists(
      {super.key, required this.expansesList, required this.removeExpanse});
  final List<Expanse> expansesList;
  final Function(Expanse expanse) removeExpanse;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expansesList.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expansesList[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error,
          margin: EdgeInsets.symmetric(horizontal: 16),
        ),
        onDismissed: (diraction) {
          removeExpanse(expansesList[index]);
        },
        child: ExpansesItem(
          expansesList[index],
        ),
      ),
    );
  }
}
