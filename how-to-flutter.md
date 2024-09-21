# FLUTTER

## Install Flutter

https://docs.flutter.dev/get-started/install

## Create Project

Mac:

- On VSCode `Shift-CMD-P` -> `Flutter: New Project` -> `Application`
- Choose folder and give your application a name

#### How to run project
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

- Upgrade packages on the top right <img src='https://github.com/user-attachments/assets/78d68145-faea-49bc-a2f8-d0ae1ad1de2f' alt='upgrade' />
