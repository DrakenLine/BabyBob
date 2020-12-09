import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:baby_bob/interface.dart';
import 'package:flutter/services.dart';

=======
import 'package:baby_bob/screen.dart';
>>>>>>> 06beaf21bf808f3fc72cc83adfc0eea69fc7332a

void main() {
  runApp(MyApp());
}

<<<<<<< HEAD
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([ DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
    return MaterialApp(
      title: 'Baby Bob',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: PathInterface,
                child: Text('GO')
            )
          ],
        ),
      ),
    );
=======
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
>>>>>>> 06beaf21bf808f3fc72cc83adfc0eea69fc7332a
  }

  void PathInterface(){
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
      return new Interface();
    }));
  }

}
