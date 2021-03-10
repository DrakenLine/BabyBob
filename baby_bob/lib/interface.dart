import 'package:control_pad/models/pad_button_item.dart';
import 'package:flutter/material.dart';
import 'package:control_pad/control_pad.dart';
import 'package:control_pad/models/gestures.dart';

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

  bool isSwitched = false;

  // JoystickDirectionCallback onDirectionChange(double degrees, double distance) {
  //   print(
  //       "Degrees: ${degrees.toStringAsFixed(2)}, distance: ${distance.toStringAsFixed(2)}");
  // }

  @override
  Widget build(BuildContext context) {
    double sizeDrawer = MediaQuery.of(context).size.width / 1.75;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.greenAccent,
      body: Container(
        width: width,
        // decoration: BoxDecoration(
        // image: DecorationImage(
        // image: AssetImage("IMG_2240.jpeg"), fit: BoxFit.fill)),
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: height / 15, right: width / 1.15),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
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
                ///////////////////////// Coté gauche ///////////////////////////////////////////
                Container(
                    margin:
                        EdgeInsets.only(top: height / 2.20, left: width / 35),
                    child: Column(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
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
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
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
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
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
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            iconSize: 30,
                            icon: Icon(Icons.arrow_downward),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: height / 5,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          blurRadius: 25.0, // soften the shadow
                          spreadRadius: 15.0, //extend the shadow
                        )
                      ],
                    ),
                    margin:
                        EdgeInsets.only(top: height / 2.10, right: width / 20),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        side: BorderSide(
                            color: Colors.black, width: 3),
                        primary: Colors.black,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                        minimumSize: Size(width / 8, width / 8),
                      ),
                      child: Text(
                        "TENIR",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Conthrax',
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                //////////////////////////////////////// Coté droit ////////////////////////////////////////////
                // Bouton Hold //
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: height / 5,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          blurRadius: 25.0, // soften the shadow
                          spreadRadius: 15.0, //extend the shadow
                        )
                      ],
                    ),
                    margin:
                        EdgeInsets.only(top: height / 2.10, left: width / 3.03),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        side: BorderSide(
                            color: Colors.black, width: 3),
                        primary: Colors.black,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                        minimumSize: Size(width / 8, width / 8),
                      ),
                      child: Text(
                        "TENIR",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Conthrax',
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                // Fleche bras //
                Container(
                    margin: EdgeInsets.only(top: height / 2.20),
                    child: Column(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
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
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            iconSize: 30,
                            icon: Icon(Icons.arrow_downward),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )),
                // Fleche moteur //
                Container(
                    margin:
                        EdgeInsets.only(top: height / 2.20, left: width / 100),
                    child: Row(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.keyboard_arrow_left),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: width / 100,
                          height: height / 20,
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(0x66, 0xFF, 0xFF, 0xFF),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.keyboard_arrow_right),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xFFE5DCCA),
          ),
          child: Container(
            width: sizeDrawer,
            child: Drawer(
                ////////////////////////////// SIDE MENU /////////////////////////////
                child: Column(
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
                            onTap: () => {print("6")},
                            child: ReusableContainer(
                                width: sizeDrawer / 4,
                                height: 50.0,
                                text: "6")),
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
                /*Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30.0, top: 10.0),
                              width: sizeDrawer / 1.25,
                              child: Text('SON :', style: TextStyle(fontSize: 20.0, fontFamily: 'Conthrax'),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ReusableContainer(
                                width: sizeDrawer / 4,
                                height: 30.0,
                                text: "1"
                            ),
                            ReusableContainer(
                                width: sizeDrawer / 4,
                                height: 30.0,
                                text: "2"
                            ),
                            ReusableContainer(
                                width: sizeDrawer / 4,
                                height: 30.0,
                                text: "3"
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ReusableContainer(
                                width: sizeDrawer / 4,
                                height: 30.0,
                                text: "4"
                            ),
                            ReusableContainer(
                                width: sizeDrawer / 4,
                                height: 30.0,
                                text: "5"
                            ),
                            ReusableContainer(
                                width: sizeDrawer / 4,
                                height: 30.0,
                                text: "6"
                            ),
                          ],
                        )
                      ],
                    )*/
              ],
            )),
          )),
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
