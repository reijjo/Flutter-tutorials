import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    // Simulate network request for a username
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'Yoshi';
    });

    // Simulate network request to get bio of the username
    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return 'Vegan, Musician & Egg collector';
    });

    print('$username - $bio');
  }

  // Runs first when the state object is created
  @override
  void initState() {
    super.initState();
    getData();
    print('Hey there!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: const Text('Choose a Location'),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          elevation: 0,
        ),
        body: ElevatedButton(
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            child: Text('Counter is $counter')));
  }
}
