import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Interface extends StatefulWidget {
  @override
  _InterfaceState createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  bool _isVisible = true;
  
  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  
  Color currentColor = Colors.grey.withOpacity(0.3);

    void changeColor(Color color) {
      print("color : $color");
      setState(() => currentColor = color);
      print("colorcur : $currentColor");
    }

    final List<Map> cases = List.generate(98, (index) => {'id': index, 'isSelected': false});

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    double sizeDrawer = MediaQuery.of(context).size.width / 1.75;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: height / 15, right: width / 1.15),
              child: Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.white70,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                      padding: EdgeInsets.all(0.0),
                      onPressed: _openDrawer,
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black54,
                        size: 40.0,
                      )))),
          Flex(
            direction: Axis.horizontal,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(top: height / 2.20, left: width / 35),
                  child: Column(
                    children: [
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.keyboard_arrow_up),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: width / 100,
                        height: height / 20,
                      ),
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.keyboard_arrow_down),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )),
              Container(
                  margin:
                      EdgeInsets.only(top: height / 2.20, left: width / 100),
                  child: Column(
                    children: [
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        child: IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.arrow_upward),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: width / 100,
                        height: height / 20,
                      ),
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_downward),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height / 5,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurRadius: 50.0, // soften the shadow
                        spreadRadius: 30.0, //extend the shadow
                      )
                    ],
                  ),
                  margin:
                      EdgeInsets.only(top: height / 2.10, right: width / 20),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: CircleBorder(),
                      side: BorderSide(
                          color: Colors.black.withOpacity(0.5), width: 3),
                      primary: Colors.black,
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      textStyle: TextStyle(
                        color: Colors.black,
                      ),
                      minimumSize: Size(width / 8, width / 8),
                    ),
                    onPressed: () {  },
                    child: Text(
                      "HOLD",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Conthrax',
                          color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xFFE5DCCA),
          ),
          child: Container(
            width: sizeDrawer,
            child: Drawer(
              child: Column(
                children: [
                  Visibility(
                  visible: _isVisible,
                  child: drawer1(sizeDrawer, width, context)
                  ),
                  Visibility(
                  visible: !_isVisible,
                  child: drawer2(sizeDrawer, width, context)
                  )
                ],
            )
          )
        ),
      )
    );
  }

  Column drawer1(double sizeDrawer, double width, BuildContext context) {
    return Column(
            children: [
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 30.0),
                    child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.white70,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: _closeDrawer,
                            icon: Icon(Icons.close,
                                color: Colors.black, size: 40.0))),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 30.0),
                    child: Text(
                      'PARAMÈTRES',
                      style:
                          TextStyle(fontSize: 25.0, fontFamily: 'Conthrax'),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    child: Text(
                      'LEDS :',
                      style:
                          TextStyle(fontSize: 20.0, fontFamily: 'Conthrax'),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 180.0, top: 10.0),
                      child: Transform.scale(
                        scale: 1.5,
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Colors.green,
                          inactiveTrackColor: Colors.grey,
                          activeColor: Colors.white,
                          inactiveThumbColor: Colors.white,
                          //activeColor: Color(0xFFE5DCCA),
                        ),
                      ))
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        width: sizeDrawer / 1.25,
                        child: Text(
                          'ÉCRAN :',
                          style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Conthrax'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () => {print("1")},
                          child: ReusableContainer(
                              width: sizeDrawer / 4,
                              height: 50.0,
                              text: "1")),
                      InkWell(
                          onTap: () => {print("2")},
                          child: ReusableContainer(
                              width: sizeDrawer / 4,
                              height: 50.0,
                              text: "2")),
                      InkWell(
                          onTap: () => {print("3")},
                          child: ReusableContainer(
                              width: sizeDrawer / 4,
                              height: 50.0,
                              text: "3")),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () => {print("4")},
                          child: ReusableContainer(
                              width: sizeDrawer / 4,
                              height: 50.0,
                              text: "4")),
                      InkWell(
                          onTap: () => {print("5")},
                          child: ReusableContainer(
                              width: sizeDrawer / 4,
                              height: 50.0,
                              text: "5")),
                      InkWell(
                          child: Container(
                             margin: EdgeInsets.only(left: 25.0, top: 10.0),
                            child: Ink(
                              width: sizeDrawer / 4,
                              height: 50.0,
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black, width : 2),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.create),
                                color: Colors.black,
                                onPressed: () => {
                                  showToast()
                                },
                                iconSize: width/28
                              ),
                            ),
                          ),
                        ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () => {Navigator.pushNamed(context, '/')},
                    child: Container(
                      width: sizeDrawer / 2,
                      height: 70.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        border:
                            new Border.all(color: Colors.black, width: 5.0),
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      margin: EdgeInsets.only(left: 25.0, top: 30.0),
                      child: new Center(
                        child: new Text(
                          'QUITTER',
                          style: new TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          );
  }

  Column drawer2(double sizeDrawer, double width, BuildContext context) {

    return Column(
            children: [
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 30.0),
                    child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.white70,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: _closeDrawer,
                            icon: Icon(Icons.close,
                                color: Colors.black, size: 40.0)
                              )
                            ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 30.0),
                    child: Text(
                      'DESSIN',
                      style:
                          TextStyle(fontSize: 25.0, fontFamily: 'Conthrax'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.0, left: 10.0),
                    child: BlockPicker(
                      pickerColor: currentColor,
                      onColorChanged: changeColor,
                      availableColors: [Colors.red, Colors.blue, Colors.green, Colors.yellow, Colors.purple, Colors.pinkAccent],
                    ),
                  ),
                ],
              ),
              Container(
                width: sizeDrawer/1.1,
                height: sizeDrawer/2.2,
                margin: EdgeInsets.only(top: 10),
                child : 
                 GridView.builder(
                   physics: NeverScrollableScrollPhysics(),
                    itemCount: cases.length,
                    itemBuilder: (BuildContext context, int index) { 
                      return RaisedButton(
                        color: cases[index]['isSelected'] == true ? currentColor : Colors.grey.withOpacity(0.3),
                        onPressed: () { 
                          print('$index');
                          setState(() {
                            cases[index]['isSelected'] = !cases[index]['isSelected'];
                          });
                          print(cases[index]['isSelected']);
                         },
                        );
                    }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 14,
                      ),
                  )    
                ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => {
                        showToast()
                      },
                      child: Container(
                        width: sizeDrawer / 3,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          border:
                              new Border.all(color: Colors.black, width: 5.0),
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        margin: EdgeInsets.only(left: 25.0),
                        child: new Center(
                          child: new Text(
                            'RETOUR',
                            style: new TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        showToast()
                      },
                      child: Container(
                        width: sizeDrawer / 2.5,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          border:
                              new Border.all(color: Colors.black, width: 5.0),
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        margin: EdgeInsets.only(left: 25.0),
                        child: new Center(
                          child: new Text(
                            'VALIDER',
                            style: new TextStyle(
                                fontSize: 25.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )],
          );
  }
}

class ReusableContainer extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final double width, height;
  final Decoration decoration;
  final Widget child;
  final String text;

  const ReusableContainer(
      {Key key,
      this.margin,
      this.width,
      this.height,
      this.decoration,
      this.child,
      this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: new BoxDecoration(
        color: Colors.white,
        border: new Border.all(color: Colors.black, width: 2.0),
        borderRadius: new BorderRadius.circular(20.0),
      ),
      margin: EdgeInsets.only(left: 25.0, top: 10.0),
      child: new Center(
        child: new Text(
          text,
          style: new TextStyle(fontSize: 18.0, color: Colors.black),
        ),
      ),
    );
  }
}

