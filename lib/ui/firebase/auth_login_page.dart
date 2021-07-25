import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'auth_services.dart';

class AuthLoginPage extends StatelessWidget {
  const AuthLoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
          child: RaisedButton(
        child: Text("Sign In Anonymouse"),
        onPressed: () async {
          await AuthServices.signInAnonymouse();
        },
      )),
    );
  }
}
