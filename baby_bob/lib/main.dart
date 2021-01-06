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
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/interface': (context) => Interface(),
      },
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
              style: TextStyle(fontFamily: 'Conthrax')
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/interface'),
                child: Text('GO')),
          ],
        ),
      ),
    );
  }
}
