import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seetec/conection/login_api.dart';
import 'package:seetec/pages/sucesso_page.dart';

import 'erro_page.dart';


class Home extends StatelessWidget{

  TextEditingController login = TextEditingController();
  TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),

        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.person_outline, size: 120.0, color: Colors.purple),
              TextField(keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Usuário",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                      )
                  ),
                  controller: login
              ),
              TextField(keyboardType: TextInputType.number, obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                      )
                  ) ,
                  controller: senha
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Container(
                  child: RaisedButton(
                    onPressed: () async{
                      bool retorno = await LoginApi.postLogin(login.text, senha.text);
                      if(retorno==true){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BemVindo()));
                      }else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ErroLogin()));
                      }
                    },
                    child: Text("Logar"),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}