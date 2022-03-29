import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:teste_bd_aut/views/user_list.dart';

class LoginController {
  Future<void> login(
    context,
    String email,
    String password,
  ) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      final response = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        body: ({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserList(),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Login invalido'),
          ),
        );
      }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('campos em branco!'),
        ),
      );
    }
  }
}
