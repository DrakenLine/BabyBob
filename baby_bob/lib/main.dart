import 'package:flutter/material.dart';
import 'package:baby_bob/interface.dart';
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
      home: Scaffold(body: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bienvenue sur Baby Bob !'.toUpperCase(),
            ),
            ElevatedButton(onPressed: pathInterface, child: Text('GO')),
          ],
        ),
      ),
    );
  }

  void pathInterface() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new Interface();
    }));
  }
}
