import 'package:conclase/app/screens/api_page/models/user.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  const UserWidget(this.user, {Key? key}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    print(user);
    debugPrint('object');
    return Center(
      child: Text(
        'My name is ${user.firstName} ${user.lastName}\n'
        'My email is ${user.email}',
        textAlign: TextAlign.center,
      ),
    );
  }
}
