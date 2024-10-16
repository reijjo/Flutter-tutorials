import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: <Widget>[
        TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/location');
            },
            icon: const Icon(Icons.edit_location),
            label: const Text('Edit Location'))
      ])),
    );
  }
}
