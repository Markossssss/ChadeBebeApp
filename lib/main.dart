import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

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

//  void reset (){
//    for (FormFieldState<dynamic> field in _fields)
//      field.reset();
//    _fieldDidChange();
//  }

//  void reset(){
//    setState(() {
//      _value = widget.initialValue;
//      _errorText = null
//    });
//  }

  //Variáveis
  var nomeBebe      = TextEditingController();
  var nomeMae       = TextEditingController();
  var nomePai       = TextEditingController();
  var nomeConvidado = TextEditingController();
  var sexo          = TextEditingController();
  var item          = TextEditingController();
  var data          = TextEditingController();
//  var dados         = _loadData();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(key: _formKey ,
      child: Scaffold(
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
                                                  validator:(value){
                                                    if (value.isEmpty){
                                                      return 'Digite algo.';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
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
                                                  validator:(value){
                                                    if (value.isEmpty){
                                                      return 'Digite algo.';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
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
                                                  validator:(value){
                                                    if (value.isEmpty){
                                                      return 'Digite algo.';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
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
                                                  validator:(value){
                                                    if (value.isEmpty){
                                                      return 'Digite algo.';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
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
                                                  validator:(value){
                                                    if (value.isEmpty){
                                                      return 'Digite algo.';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
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
                                                  validator:(value){
                                                    if (value.isEmpty){
                                                      return 'Digite algo.';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
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
                                                  validator:(value){
                                                    if (value.isEmpty){
                                                      return 'Digite algo.';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
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
                                                    if (_formKey.currentState.validate()){
                                                      _saveData(DataCha(nomeBebe.text, item.text, nomeMae.text, data.text, nomeConvidado.text, nomePai.text, sexo.text));
                                                      var dados = _loadData();
                                                      _formKey.currentState.reset();
                                                    }
                                                  }
                                                )
                                              ),
                                            ],
                                          ),
                                          Spacer()
                                        ],
                                      ),
                                    ),
                                    height: 280.0,
                                    width: 1000.0,
                                    color: Colors.red.withOpacity(0.0)),
                                Container(
                                  width: 300.0,
                                  height: 2.0,
                                  color: Colors.black38,
                                ),
                                Container(
                                  // output de dados
                                  height: 200.0,
                                  width: 1000.0,
                                  color: Colors.green.withOpacity(0.0),
                                  child: Padding(padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                                    child: RefreshIndicator(
                                        child: FutureBuilder(future: _loadData(),
                                          builder: (BuildContext context, AsyncSnapshot snapshot){
                                            return ListView.builder(
                                              itemCount: snapshot.data.length,
                                              itemBuilder: (BuildContext context, int index){
                                                return Card(
                                                  sexo: snapshot.data[index]['sexo'],
                                                  nomePai: snapshot.data[index]['nomePai'],
                                                  data: snapshot.data[index]['dia'],
                                                  item: snapshot.data[index]['item'],
                                                  nomeBebe: snapshot.data[index]['nome'],
                                                  nomeConvidado: snapshot.data[index]['nomeConvidado'],
                                                  nomeMae: snapshot.data[index]['nomeMae'],
                                                );
                                              },
                                            );
                                          },
                                        ),
                                        onRefresh: _refreshList,
                                    ),
                                  )
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
      ),
    );
  }
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

// Um item qualquer da lista
class Card extends StatefulWidget {

  var nomeBebe;
  var nomeMae;
  var nomePai;
  var nomeConvidado;
  var sexo;
  var item;
  var data;

  Card({this.nomeBebe,this.nomeMae,this.nomePai,this.nomeConvidado,this.sexo,this.item,this.data});

  @override
  _CardState createState() => _CardState();
}
class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
          child: Row(
            children: <Widget>[
              Flexible(
                child: Text('${widget.item}',
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
                    child: Text('${widget.nomeBebe}',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text('${widget.data}',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text('${widget.sexo}',
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
                          child: Text('${widget.nomeConvidado}',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12.0
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text('${widget.nomePai}',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12.0
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text('${widget.nomeMae}',
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



const jsonCode =const JsonCodec();

Future <void> _loadData() async {
//  var url = "https://chadebebe-60fe7.firebaseio.com/test/cha.json";
  var url = "https://chadebebe-f9f48.firebaseio.com/cha.json";

  http.Response response = await http.get(url);

  Map dataCha_ = jsonCode.decode(response.body);
  var list = dataCha_.values.toList();

//  print(list.first);
//  print(list.last);
//    print(list.last['sexo']);

  return list;

}

_saveData(DataCha data) async{
  var json = jsonCode.encode(data);


//  var url = "https://chadebebe-60fe7.firebaseio.com/test/cha.json"; // Fabio
  var url = "https://chadebebe-f9f48.firebaseio.com/cha.json"; // Marcos


  http.Response response = await http.post(url, body: json);

}

class DataCha{
  String nome;
  String item;
  String nomeMae;
  String nomePai;
  String sexo;
  String nomeConvidado;
  String dia;
  static int id=0;
  DataCha(this.nome,this.item,this.nomeMae, this.dia,this.nomeConvidado,this.nomePai,this.sexo){
    id +=1;
  }
  Map toJson(){
    return {"nome":nome,"item":item,"nomeMae":nomeMae,"nomeConvidado":nomeConvidado,"nomePai":nomePai,"sexo":sexo,"dia":dia};
  }
}

Future<Null> _refreshList () async{

  await Future.delayed(Duration(seconds: 2));

  _loadData();

//  FutureBuilder(future: _loadData(),
//    builder: (BuildContext context, AsyncSnapshot snapshot){
//      return ListView.builder(
//        itemCount: snapshot.data.length,
//        itemBuilder: (BuildContext context, int index){
//          return Card(
//            sexo: snapshot.data[index]['sexo'],
//            nomePai: snapshot.data[index]['nomePai'],
//            data: snapshot.data[index]['dia'],
//            item: snapshot.data[index]['item'],
//            nomeBebe: snapshot.data[index]['nome'],
//            nomeConvidado: snapshot.data[index]['nomeConvidado'],
//            nomeMae: snapshot.data[index]['nomeMae'],
//          );
//        },
//      );
//    },
//  );
  return null;
}