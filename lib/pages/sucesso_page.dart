import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const req = "https://api-seetec.herokuapp.com/aluno/listar";

class BemVindo extends StatelessWidget{

  TextEditingController _controlleNome = TextEditingController();
  TextEditingController _controlleQtd = TextEditingController();
  TextEditingController _controlleXpto = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Solicitação de Documentos"),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Nome"
              ),
              controller: _controlleNome,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Quantidade"
              ),
              controller: _controlleQtd,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Xpto"
              ),
              controller: _controlleXpto,
            ),
            RaisedButton(
              child: Text("Enviar"),
              onLongPress: (){},
            )
          ],
        )


    );
  }



}


