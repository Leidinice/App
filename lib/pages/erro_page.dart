import 'package:flutter/material.dart';

class ErroLogin extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login inválido"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("Voltar!"),
          ),
        )
    );
  }
}