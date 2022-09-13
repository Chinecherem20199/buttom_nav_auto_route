import 'package:flutter/material.dart';

import '../data/app_data.dart';
import '../widgets.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = User.users;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < users.length; i++)
              UserAvatar(
                avatarColor: users[i].color,
                username: 'user${users[i].id}',
                onAvatarTap: () {},
              ),
          ],
        ),
      ),
    );
  }
}
