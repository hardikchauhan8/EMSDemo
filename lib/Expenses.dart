import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("Expenses"),
      FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Add Expense',
        child: const Icon(Icons.add),
      ),
    ]);
  }
}
