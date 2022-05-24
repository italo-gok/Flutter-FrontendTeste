import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key, required this.usersCard})
      : super(key: key);

  final List<UserModel> usersCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: usersCard.length,
        itemBuilder: (context, index) {
          final user = usersCard[index];
          return Card(
              margin: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 5,
            child: Row(
              children: <Widget>[
                Container(
                  width: 64,
                  height: 64,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  // padding: const EdgeInsets.all(10),
                  child: Text(
                    '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          user.nome,
                          style: Theme.of(context).textTheme.headline6,
                          ),
                          Image.asset('assets/images/arrow_right.png')
                      ],
                    ),
                    const Text(
                     '',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              Image.asset('assets/images/trash.png'),
              ],
            ),
          );
        },
      ),
    );
  }
}
