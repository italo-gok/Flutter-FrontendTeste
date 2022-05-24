import 'package:flutter/material.dart';

import 'components/user_list.dart';
import 'models/user_model.dart';

main() => runApp(const FrontendApp());

class FrontendApp extends StatelessWidget {
  const FrontendApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _users= [
      UserModel(
        id: 't1',
        nome: 'John dos Santos',
        company: 'GO.K Digital',
        locale: 'São Paulo',
        userName: '@johndosantos',
        date: DateTime.now(),
      ),
      UserModel(
        id: 't2',
        nome: 'John dos Santos',
        company: 'GO.K Digital',
        locale: 'São Paulo',
        userName: '@johndosantos',
        date: DateTime.now(),
      ),
    ];

    return Scaffold(
      // appBar: AppBar(
      //   title:  const Text(
      //     'Github',
      //     style: TextStyle(),
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: Image.asset('assets/images/github.jpg'),
      //       onPressed: () => {},
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
               SizedBox(
              width: double.infinity,
              child: Card(
                child:  Image.asset('assets/images/github.jpg'),
              ),
            ),
            UserList(usersCard: _users),
          ],
        ),
      ),
    );
  }
}
