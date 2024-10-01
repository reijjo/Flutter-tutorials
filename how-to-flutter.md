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

### Scaffold & AppBar

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

#### Reloading the app to see the changes

- Click the `Restart` button on the menu after making changes <img src='https://github.com/user-attachments/assets/e18fa805-5b19-4885-af6e-ee33abf76326' alt='restart' />

### Colors & Fonts

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

### Hot Reload

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

### Images & Assets

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

### Buttons & Icons

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

### Containers & Padding

- Container example:

```dart
body: Container(
  padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
  margin: EdgeInsets.all(30),
  color: Colors.grey[300],
  child: Text('hello'),
),
```

- Padding example:

```dart
body: const Padding(
  padding: EdgeInsets.all(30),
  child: Text('Hello, World!'),
),
```

### Rows

- Row is basically the same as flexbox/grid in CSS
- `Main Axis` is horizontal and `Cross Axis` is vertical

```dart
body: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    const Text('hello, world'),
    TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(backgroundColor: Colors.amber),
      child: const Text('Click me'),
    ),
    Container(
      color: Colors.cyan,
      padding: const EdgeInsets.all(30),
      child: const Text('Inside container'),
    )
  ],
),
```

### Columns

```dart
body: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  crossAxisAlignment: CrossAxisAlignment.end,
  children: <Widget>[
    const Row(
      children: [
        Text('Hello'),
        Text(' World'),
      ],
    ),
    Container(
      padding: const EdgeInsets.all(20),
      color: Colors.cyan,
      child: const Text('One'),
    ),
    Container(
      padding: const EdgeInsets.all(30),
      color: Colors.pinkAccent,
      child: const Text('Two'),
    ),
    Container(
      padding: const EdgeInsets.all(40),
      color: Colors.amber,
      child: const Text('Three'),
    ),
  ],
),
```

### Expanded Widgets

- Almost like a flexbox in CSS

```dart
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
```

## Ninja ID Project

### Stateful Widgets

- You can change state of the variables (like useState in React)
- Change `Stateless Widget` to `Stateful Widget` by hovering on the `Stateless Widget` text and look for the bulb icon to appear on the left and just click it
- Code:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        // Floating action button that handles the ninjalevel variable
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/Chun-Li.webp'),
                  radius: 60,
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey[800],
              ),
              const Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Chun-Li',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              const Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '$ninjalevel', // Ninja level variable
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Row(children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10),
                Text(
                  'chun.li@theninja.net',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ])
            ]),
      ),
    );
  }
}

```

## Quotes project

### Lists of Data

- Create new project `quotes`

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'Be yourself; everyone else is already taken',
    'I have nothing to declare except my genius',
    'The truth is rarely pure and never simple'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: quotes.map((quote) => Text(quote)).toList(),
        ));
  }
}

```

### Custom Classes

- Make a new file `quote.dart` in the `lib` folder:

```dart
class Quote {
  String text;
  String author;

  Quote({required this.text, required this.author});
  // Quote({this.text = '', this.author = ''});
}
```

- Import the file in the `main.dart`

```dart
import 'quote.dart';
```

- And use the class in the `main.dart` file:

```dart
import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  QuoteListState createState() => QuoteListState();
}

class QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself; everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(
        text: 'I have nothing to declare except my genius',
        author: 'Oscar Wilde'),
    Quote(
        text: 'The truth is rarely pure and never simple',
        author: 'Oscar Wilde')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: quotes
              .map((quote) => Text('${quote.text} - ${quote.author}'))
              .toList(),
        ));
  }
}
```

### Cards

- Create a function under the List of quotes:

```dart
  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }
```

- And use it in the code:

```dart
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ));
  }
```

### Extracting Widgets
