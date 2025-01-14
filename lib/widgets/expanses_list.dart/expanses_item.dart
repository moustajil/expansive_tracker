import 'package:ex_tr/model/expanse.dart';
import 'package:flutter/material.dart';

class ExpansesItem extends StatelessWidget {
  const ExpansesItem(this.expanse, {super.key});
  final Expanse expanse;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          children: [
            Text(expanse.title),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("\$${expanse.amount.toStringAsFixed(2)}"),
                const Spacer(),
                Row(
                  children: [
                    Icon(CategoryIcons[expanse.category]),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(expanse.formattedDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
