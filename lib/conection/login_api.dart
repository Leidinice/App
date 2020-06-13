import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginApi{

  static Future<bool> postLogin(String login, String senha) async {

    var client = http.Client();
    var jsonBody = jsonEncode({
      'email': login,
      'senha': senha
    });

    final encoding = Encoding.getByName('utf-8');

    var header = {'Content-Type': 'application/json',
      "Accept": "application/json",};

    var url = "https://api-seetec.herokuapp.com/aluno/logar";

    try{
     var response = await client.post(url, body: jsonBody, encoding: encoding, headers: header);

     if(response.body.isNotEmpty){
       Map mapResponse = json.decode(response.body);
       if(mapResponse['email']==login && mapResponse['senha']==senha){
         return true;
       }
     }

    }finally{
      client.close();
    }
    return false;
  }
}