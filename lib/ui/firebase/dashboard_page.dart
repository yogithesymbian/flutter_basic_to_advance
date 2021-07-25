import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/ui/firebase/auth_services.dart';

class DashboardPage extends StatelessWidget {
  final FirebaseUser user;

  // const DashboardPage(FirebaseUser firebaseUser, {key, this.user})
  //     : super(key: key);
  DashboardPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard Page"),
        ),
        body: Center(
          child: Column(
            children: [
              Text(user.uid),
              RaisedButton(
                child: Text("Sign Out"),
                onPressed: () async {
                  await AuthServices.signOut();
                },
              )
            ],
          ),
        ));
  }
}
