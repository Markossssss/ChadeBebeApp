import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

const ThemeColor = const Color(0xFF58BCFF);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: ThemeColor,
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Chá de Bebê!',
                style: (TextStyle(
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                    fontSize: 28.0)),
              ),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Image.asset(
              "images/bg/bgApp.png",
              fit: BoxFit.cover,
              alignment: Alignment.center,
              height: 900.0,
              width: 500.0,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  //Inputs de dados
                                  height: 100.0,
                                  width: 100.0,
                                  color: Colors.red),
                              Container(
                                  // output de dados
                                  height: 100.0,
                                  width: 100.0,
                                  color: Colors.green)
                            ],
                          ),
                          height: 539.0,
                          width: 1000.0,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadiusDirectional.only(
                                bottomStart: Radius.circular(10.0),
                                bottomEnd: Radius.circular(10.0)),
                          ),
                        )
                      ],
                    )
                  ],
                )
            )
          ],
        )
    );
  }
}
