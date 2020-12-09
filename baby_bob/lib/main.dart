import 'package:flutter/material.dart';
import 'package:baby_bob/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with PortraitModeMixin {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: Center(
                    child: Text(
      'Bienvenue sur Baby Bob !'.toUpperCase(),
    )))));
  }
}
