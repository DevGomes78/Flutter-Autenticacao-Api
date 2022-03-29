import 'package:flutter/material.dart';
import 'package:teste_bd_aut/controller/user_controller.dart';
import 'package:teste_bd_aut/model/user_model.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<Data> lista = [];

  @override
  void initState() {
    super.initState();
    UserController().GetUser().then((map) {
      setState(() {
        lista = map;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuarios'),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
      ),
      body: RefreshIndicator(
        onRefresh: UserController().GetUser,
        child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      lista[index].avatar.toString(),
                    ),
                  ),
                  title: Text(
                    lista[index].firstName.toString(),
                  ),
                  subtitle: Text(
                    lista[index].email.toString(),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
