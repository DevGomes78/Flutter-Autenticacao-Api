import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste_bd_aut/components/btn_widget.dart';
import 'package:teste_bd_aut/components/container_widget.dart';
import 'package:teste_bd_aut/components/text_widget.dart';
import 'package:teste_bd_aut/controller/login_controller.dart';

class HomePage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildSingleChildScrollView(context),
    );
  }

  buildSingleChildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Column(
          children: [
            ContainerWidget(text: 'Login'),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  TextWidget(
                    'email',
                    'Digite o Email',
                    icon: const Icon(Icons.email),
                    obscureText: false,
                    controller: emailController,
                  ),
                  const SizedBox(height: 10),
                  TextWidget(
                    'Senha',
                    'Digite a Senha',
                    icon: const Icon(Icons.lock),
                    obscureText: true,
                    controller: senhaController,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  LoginController().login(
                    context,
                    emailController.text = 'eve.holt@reqres.in',
                    senhaController.text = 'cityslicka',
                  );
                },
                child: BtnWidget(
                  text: 'login',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerRight,
                height: 30,
                width: double.infinity,
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Esqueceu a senha?  ',
                        style: TextStyle(fontSize: 18,
                            color: Colors.black),
                      ),
                      Text(
                        'Clique aqui',
                        style: TextStyle(fontSize: 18,
                            color: Colors.blueAccent),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
