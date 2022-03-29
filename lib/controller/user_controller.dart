import 'dart:convert';

import 'package:teste_bd_aut/constants/routes.dart';
import 'package:teste_bd_aut/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserController {
  Future<List<Data>> GetUser() async {
    try {
      List<Data> lista = [];
      final url = Uri.parse(Routes.user);
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        result['data'].forEach(
          (item) => lista.add(
            Data.fromJson(item),
          ),
        );
        return lista;
      } else {
        throw Exception('erro ao acessar os dados');
      }
    } catch (e) {
      throw Exception('Erro ao acessar os dados');
    }
  }
}
