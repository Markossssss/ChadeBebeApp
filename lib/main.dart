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

  //Variáveis
  var nomeBebe      = TextEditingController();
  var nomeMae       = TextEditingController();
  var nomePai       = TextEditingController();
  var nomeConvidado = TextEditingController();
  var sexo          = TextEditingController();
  var item          = TextEditingController();
  var data          = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, //Evita com que o aparecimento do teclado comprima os elementos flutuantes
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
                                                "Bem-vindo ao aplicativo!",
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
                                                controller: nomeBebe,
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
                                                controller: sexo,
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
                                        Row(
                                          children: <Widget>[
                                            Flexible(
                                              child: TextFormField(
                                                controller: nomeMae,
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
                                                controller: nomeConvidado,
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
                                                controller: nomePai,
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
                                                controller: data,
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
                                              child:TextFormField(
                                                controller: item,
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
                                              child: NovoBotao(onPressed: (){

                                              })
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
                                  color: Colors.green.withOpacity(0.0),
                                  child: Padding(padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                                    child: listaDeCards(),
                                ),
                              )
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
//
//  var dados = {
//    'nomeBebe':Text(nomeBebe.text),
//    'nomeMae':nomeMae,
//    'nomeConvidado':nomeConvidado,
//    'sexo':sexo,
//    'data':data,
//    'item':item
//  };
//
}

class listaDeCards extends StatefulWidget {
  @override
  _listaDeCardsState createState() => _listaDeCardsState();
}

class _listaDeCardsState extends State<listaDeCards> {

  List<Object> _listViewOutput = [
  ];
  _onSubmit(){
    setState(() {
      _listViewOutput.add(Card());
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _listViewOutput.reversed.map(){,
            return Dismissible(key: key, child: null);
          }
        ]
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

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
          child: Row(
            children: <Widget>[
              Flexible(
                child: Text('Carrinho de bebê',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 25.0
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Text('Nome do bebê',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text('Data',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text('Sexo do bebê',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
            Container(
              height: 1.0,
            ),
            Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                  child: Row(
                      children: <Widget>[
                        Flexible(
                          child: Text('Convidado',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12.0
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text('Nome do pai',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12.0
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text('Nome da mãe',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12.0
                            ),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween
                  ),
                )
              ],
            )
          ],
        ),
        Row(
            children: <Widget>[
              Container(
                width: 0.0,
                height: 20.0,
                color: Colors.black26,
              ),
              Container(
                width: 200.0,
                height: 1.0,
                color: Colors.black26,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center
        ),
      ],
    );
  }
}
