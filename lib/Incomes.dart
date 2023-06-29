import 'package:flutter/material.dart';

class Incomes extends StatefulWidget {
  const Incomes({super.key});

  @override
  State<StatefulWidget> createState() => _IncomesState();
}

class _IncomesState extends State<Incomes> {
  var incomes = ["one"];

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...incomes.map((e) => Text(e)),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: _addIncome,
                  tooltip: 'Add Income',
                  child: const Icon(Icons.add),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  _addIncome() {
    setState(() {
      incomes.add("two");
    });
  }
}
