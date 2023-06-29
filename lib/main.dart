import 'package:ems/Expenses.dart';
import 'package:ems/Incomes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(title: 'EMS'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text(widget.title),
    );
    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white60,
      body: Center(
        child: Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const <Widget>[
              Expanded(flex: 1, child: Incomes()),
              Expanded(flex: 1, child: Expenses())
            ],
          ),
        ),
      ),
    );
  }
}
