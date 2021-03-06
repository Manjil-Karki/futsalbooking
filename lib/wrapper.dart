import 'package:flutter/material.dart';
import 'package:futsal/modals/bfc.dart';
import 'package:futsal/screens/bottom_navigations.dart';
import 'package:futsal/services/database.dart';
import 'package:provider/provider.dart';
import 'package:futsal/setup/authenticate.dart';
import 'package:futsal/modals/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    // TODO return either home or signin

    // return Register();
    // return Authenticate();
    // return SignIn();
    if (user == null) {
      return Authenticate();
    } else {
      return StreamProvider<BFC>.value(
        value: DatabaseService(uid: user.uid).bfc,
        child: BNB());
    }
  }
}
