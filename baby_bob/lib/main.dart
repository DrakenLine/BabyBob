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
    double screenSize = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      width: screenSize,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("fondEcran.png"), fit: BoxFit.fill)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(75, 75, 75, 0),
            child: Text(
              'Bienvenue sur Baby Bob !'.toUpperCase(),
              style: TextStyle(fontFamily: 'Conthrax', fontSize: 50.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 64, 0, 8),
            child: TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  side: BorderSide(color: Colors.black, width: 3),
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.all(8.0),
                  minimumSize: Size(200, 50)),
              onPressed: pathInterface,
              child: Text(
                "GO",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                side: BorderSide(color: Colors.black, width: 2),
                primary: Colors.black,
                textStyle: TextStyle(
                  color: Colors.black,
                ),
                padding: EdgeInsets.all(8.0),
                minimumSize: Size(150, 50)),
            onPressed: pathInterface,
            child: Text(
              "Crédits".toUpperCase(),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    ));
  }

  void pathInterface() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new Interface();
    }));
  }
}