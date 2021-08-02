import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbasic/components/button.dart';
import 'package:flutterbasic/ui/home/home.dart';

import 'auth_services.dart';

class AuthLoginPage extends StatelessWidget {
  // const AuthLoginPage({Key key}) : super(key: key);
  TextEditingController edtEmailController = TextEditingController(text: '');
  TextEditingController edtPassController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, top: 12),
            child: TextField(
              controller: edtEmailController,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, top: 12),
            child: TextField(
              controller: edtPassController,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                YoMatchParentBtn("Sign In Anonymouse", () async {
                  await AuthServices.signInAnonymouse();
                }),
                YoMatchParentBtn("Sign With Email", () async {
                  await AuthServices.signIn(
                      edtEmailController.text, edtPassController.text);
                }),
                YoMatchParentBtn("Sign Up", () async {
                  await AuthServices.signUp(
                      edtEmailController.text, edtPassController.text);
                }),
              ],
            ),
          ),
          Spacer(),
        ],
      )),
    );
  }
}
