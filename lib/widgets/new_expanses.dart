import 'package:flutter/material.dart';

class NewExpanses extends StatefulWidget {
  const NewExpanses({super.key});

  @override
  State<NewExpanses> createState() => _NewExpansesState();
}

class _NewExpansesState extends State<NewExpanses> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            decoration: InputDecoration(
              label: Text("Title"),
            ),
          )
        ],
      ),
    );
  }
}
