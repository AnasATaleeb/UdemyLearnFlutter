import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/user/user_model.dart';


class UsersScreen extends StatelessWidget {
  List<UserModel> user = [
    UserModel(
      id: 1,
      name: 'Anas taleeb',
      phone: '+970560000000',
    ),
    UserModel(
      id: 2,
      name: 'Mahdi Taleeb',
      phone: '+970560000000',
    ),
    UserModel(
      id: 3,
      name: 'Abdullah Mansour',
      phone: '+970560324000',
    ),
    UserModel(
      id: 1,
      name: 'Anas taleeb',
      phone: '+970560000000',
    ),
    UserModel(
      id: 1,
      name: 'Anas taleeb',
      phone: '+970560000000',
    ),
    UserModel(
      id: 2,
      name: 'Mahdi Taleeb',
      phone: '+970560000000',
    ),
    UserModel(
      id: 3,
      name: 'Abdullah Mansour',
      phone: '+970560324000',
    ),
    UserModel(
      id: 1,
      name: 'Anas taleeb',
      phone: '+970560000000',
    ),
    UserModel(
      id: 2,
      name: 'Mahdi Taleeb',
      phone: '+970560000000',
    ),
    UserModel(
      id: 3,
      name: 'Abdullah Mansour',
      phone: '+970560324000',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(user[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
          ),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: user.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
