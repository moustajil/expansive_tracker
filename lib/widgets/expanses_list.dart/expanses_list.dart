import 'package:ex_tr/model/expanse.dart';
import 'package:ex_tr/widgets/expanses_list.dart/expanses_item.dart';
import 'package:flutter/material.dart';

class ExpansesLists extends StatelessWidget {
  const ExpansesLists({super.key, required this.expansesList});
  final List<Expanse> expansesList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expansesList.length,
        itemBuilder: (ctx, index) {
          return ExpansesItem(
            expansesList[index],
          );
        });
  }
}
