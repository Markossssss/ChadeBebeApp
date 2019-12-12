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
                                  child: Padding(padding: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                "Bem-vindo a essa BOSTA de aplicativo!",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                vertical: 8.0,
                                              ),
                                            )
                                          ],
                                          mainAxisAlignment: MainAxisAlignment.center,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Flexible(
                                              child: TextFormField(
                                                decoration:  const InputDecoration(
                                                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(13.0)
                                                    ),
                                                  ),
                                                  hintText: 'Digite o nome da criança',
                                                  hintStyle: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  labelText: 'Nome',
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                ),
                                                keyboardType: TextInputType.text,
                                              ),
                                            ),
                                            Container(
                                              width: 10,
                                              height: 10,
                                            ),
                                            Flexible(
                                              child: TextFormField(
                                                decoration: const InputDecoration(
                                                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(13.0)
                                                    ),
                                                  ),
                                                  hintText: 'Digite o sexo da criança',
                                                  hintStyle: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  labelText: 'Sexo',
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                ),
                                                keyboardType: TextInputType.text,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
//                                        Row(
//                                          children: <Widget>[
//                                            Container(
//                                              height: 10.0,
//                                              width: 2.0,
//                                            )
//                                          ],
//                                        ),
                                        Row(
                                          children: <Widget>[
                                            Flexible(
                                              child: TextFormField(
                                                decoration:  const InputDecoration(
                                                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(13.0)
                                                    ),
                                                  ),
                                                  hintText: 'Digite o nome da mãe da criança',
                                                  hintStyle: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  labelText: 'Nome da mãe',
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                ),
                                                keyboardType: TextInputType.text,
                                              ),
                                            ),
                                            Container(
                                              width: 10,
                                              height: 10,
                                            ),
                                            Flexible(
                                              child: TextFormField(
                                                decoration: const InputDecoration(
                                                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(13.0)
                                                    ),
                                                  ),
                                                  hintText: 'Digite o nome do convidado',
                                                  hintStyle: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  labelText: 'Nome do convidado',
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                ),
                                                keyboardType: TextInputType.text,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Row(
                                          children: <Widget>[
                                            Flexible(
                                              child: TextFormField(
                                                decoration:  const InputDecoration(
                                                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(13.0)
                                                    ),
                                                  ),
                                                  hintText: 'Digite o nome do pai da criança',
                                                  hintStyle: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  labelText: 'Nome do pai',
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                ),
                                                keyboardType: TextInputType.text,
                                              ),
                                            ),
                                            Container(
                                              width: 10,
                                              height: 10,
                                            ),
                                            Flexible(
                                              child: TextFormField(
                                                decoration: const InputDecoration(
                                                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(13.0)
                                                    ),
                                                  ),
                                                  hintText: 'Digite a data do evento',
                                                  hintStyle: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  labelText: 'Data',
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                ),
                                                keyboardType: TextInputType.datetime,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Row(
                                          children: <Widget>[
                                            Flexible(
                                              child: TextFormField(
                                                decoration:  const InputDecoration(
                                                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(13.0)
                                                    ),
                                                  ),
                                                  hintText: 'Digite o item que será levado',
                                                  hintStyle: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  labelText: 'Item',
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                ),
                                                keyboardType: TextInputType.text,
                                              ),
                                            ),
                                            Container(
                                              width: 10,
                                              height: 10,
                                            ),
                                            Flexible(
                                              child: NovoBotao(onPressed: null)
                                            ),
                                          ],
                                        ),
                                        Spacer()
                                      ],
                                    ),
                                  ),
                                  height: 220.0,
                                  width: 1000.0,
                                  color: Colors.red.withOpacity(0.0)),
                              Container(
                                width: 300.0,
                                height: 2.0,
                                color: Colors.black38,
                              ),
                              Container(
                                  // output de dados
                                  height: 317.0,
                                  width: 1000.0,
                                  color: Colors.green.withOpacity(0.0))
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

class NovoBotao extends StatelessWidget {
  NovoBotao({@required this.onPressed});
  
  final GestureTapCallback onPressed;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
      fillColor: ThemeColor,
      splashColor: Colors.white,
      child: Padding(padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Container(
          child: Row(
            children: <Widget>[
              Icon(
                Icons.add_circle_outline,
                color: Colors.white,
              ),
              Spacer(),
              Text('ADICIONAR',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              Spacer(),
            ],
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
        )
      ),
      onPressed: onPressed,
      shape: StadiumBorder(),
      hoverColor: Colors.white,

    );
  }
}
