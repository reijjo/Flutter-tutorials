# FLUTTER

## Install Flutter

https://docs.flutter.dev/get-started/install

## Create Project

Mac:

- On VSCode `Shift-CMD-P` -> `Flutter: New Project` -> `Application`
- Choose folder and give your application a name

### How to run project

<details>
	<summary>Open iPhone simulator</summary>
	`open -a Simulator`
</details>

- On the bottom right corner of the VSCode click on the device name <img src='https://github.com/user-attachments/assets/813e6934-dc63-4db3-86df-f280045a5b94' alt='device name' />
- Open `lib/dart.main` in VSCode and Click the 'Play' button on the right <img src='https://github.com/user-attachments/assets/7e1a71a7-ac94-4d07-9997-669b0d7308a8' alt='play button' />
- It loads a while and then you can see the app in your iPhone Simulator

## Scaffold & AppBar

Scaffold is a wrapper for layout widgets like `AppBar` and `body`

- Simple example:

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Terve ukko!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('Click'),
      ),
    )));

```

### Reloading the app to see the changes

- Click the `Restart` button on the menu after making changes <img src='https://github.com/user-attachments/assets/e18fa805-5b19-4885-af6e-ee33abf76326' alt='restart' />

## Colors & Fonts

Use Custom Fonts:

- Download a font
- Make folder `fonts` to your Flutter projects root folder
- Open `pubspec.yaml` file in your projects root folder and add this to the part where to fonts are:

```yaml
fonts:
  - family: IndieFlower
    fonts:
      - asset: fonts/IndieFlower-Regular.ttf
```

<!-- - Upgrade packages on the top right <img src='https://github.com/user-attachments/assets/78d68145-faea-49bc-a2f8-d0ae1ad1de2f' alt='upgrade' /> -->

- Upgrade packages -> `flutter pub get` in the root of your app
- Add Custom Font to your code:

```dart
void main() => runApp(MaterialApp(
        home: Scaffold(
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
              fontFamily: 'IndieFlower'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo[400],
        child: const Text('Click'),
      ),
    )));
```

## Hot Reload

- Make a `StatelessWidget` class under your main function and move your code to there

```dart
void main() => runApp(const MaterialApp(home: Home()));

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
```

- Change VSCode dart settings -> Open Settings -> Search `flutter` -> `Dart: Flutter Hot Reload On Save` -> `all`

## Images & Assets

- Image from the web

```dart
child: Image(
	image: NetworkImage('IMAGEURL')
)
```

- Asset image: Make folder `assets` in the root of your app and add image to that folder
- Open `pubspec.yaml` file in your projects root folder and add this to the part where to images are:

```yaml
assets:
  - assets/
```

- Upgrade packages -> `flutter pub get` in the root of your app
- Add image to your app

```dart
child: Image(
  image: AssetImage('assets/IMAGENAME')
)
```

- Shortcuts:

```dart
child: Image.asset('assets/IMAGENAME')
child: Image.network('IMAGEURL')
```

## Buttons & Icons

- Icon

```dart
child: Icon(
  Icons.airport_shuttle,
  color: Colors.lightBlue,
  size: 50,
 )
```

- Button

```dart
child: ElevatedButton(
  onPressed: () {
    print('you clicked me');
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.lightBlue, // Set the background color
  ),
  child: const Text('click'),
)
```

The `print('you clicked me')` shows in the `Debug Console` IMAGE HERE

- Button With Icon

```dart
child: ElevatedButton.icon(
  onPressed: () {
    print('you clicked me');
  },
  icon: const Icon(Icons.mail),
  label: const Text('mail me'),
  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
)
```

- Icon Button

```dart
child: IconButton(
  onPressed: () {
    print('You clicked me!');
  },
  icon: const Icon(Icons.alternate_email),
  color: Colors.amber,
)
```

- Code so far

```dart
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
          child: IconButton(
        onPressed: () {
          print('You clicked me!');
        },
        icon: const Icon(Icons.alternate_email),
        color: Colors.amber,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo[400],
        child: const Text('Click'),
      ),
    );
  }
}
```
