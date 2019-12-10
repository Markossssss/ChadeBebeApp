import 'package:flutter/material.dart';

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
                fontSize: 25.0
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
            height: 900.0,
          ),
          Column(
            children: <Widget>[
              Container(
                child: Text('Olá mundo!',
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
