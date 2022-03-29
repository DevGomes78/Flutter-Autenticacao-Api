import 'dart:convert';

import 'package:teste_bd_aut/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserController {
  Future<List<Data>> GetUser() async {
    List<Data> lista = [];
    final url = Uri.parse('https://reqres.in/api/users?page=2');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      result['data'].forEach(
        (item) => lista.add(
          Data.fromJson(item),
        ),
      );
      return lista;
    }else{
      throw Exception('erro ao acessar os dados');
    }
  }
}
