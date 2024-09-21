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
      body: Center(
        child: Text(
          'Terve ukko!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.grey[600],
            fontFamily: 'IndieFlower',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo[400],
        child: const Text('Click'),
      ),
    );
  }
}
