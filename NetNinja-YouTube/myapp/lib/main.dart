import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.indigo,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
      ),
    ),
    home: const Home()));

class Home extends StatelessWidget {
  // Creates a Home widget that can be used as a constant, passing the key to its parent class.
  const Home({super.key});

  @override // Overrides the build defined in classes ancestor (StatelessWidget)
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.indigo[400],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
              flex: 3, // Takes 3/6 of the available space
              child: Image.asset('assets/ink.jpg')),
          Expanded(
            flex: 1, // Takes 1/6 of the available space
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.cyan,
              child: const Text('1'),
            ),
          ),
          Expanded(
            flex: 1, // Takes 1/6 of the available space
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.pinkAccent[100],
              child: const Text('2'),
            ),
          ),
          Expanded(
            flex: 1, // Takes 1/6 of the available space
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.amber,
              child: const Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo[400],
        child: const Text('Click'),
      ),
    );
  }
}
