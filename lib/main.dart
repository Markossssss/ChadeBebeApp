import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),)
  );
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
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child:AppBar(
          backgroundColor: ThemeColor,
          centerTitle: true,
          title: Padding(padding: EdgeInsets.only(top: 30.0),
              child: Text('Chá de Bebê!',
                style: (TextStyle(
                color: Colors.white,
                fontFamily: 'Pacifico',
                fontSize: 28.0
                )
              ),
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
          Column(

            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  width: 500,
                  height: 590,
                  child: Container(
                    color: Colors.black, //????????????????????????
                    width: 20,
                    height: 20,
                    child: Text('Olá mundo!',
                      textAlign: TextAlign.center,
                      style: (TextStyle(
                        color: Colors.black,
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
