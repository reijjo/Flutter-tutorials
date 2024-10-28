import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;
    print('HALOO');
    print(data);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
        child: SafeArea(
            child: Column(children: <Widget>[
          TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: const Icon(Icons.edit_location),
              label: const Text('Edit Location')),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(data['location'],
                  style: const TextStyle(letterSpacing: 2, fontSize: 28))
            ],
          ),
          const SizedBox(height: 20),
          Text(
            data['time'],
            style: const TextStyle(fontSize: 66),
          )
        ])),
      ),
    );
  }
}
