// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hello_world/ui/firebase/auth_login_page.dart';
// import 'package:provider/provider.dart';

// import 'dashboard_page.dart';

// // auth wrapper | firebase home page, the stream is located in `/Users/yogiarifwidodo/Sites/mobile/flutter/flutter_basic_to_advance/lib/main.dart`
// class FirebaseHome extends StatelessWidget {
//   const FirebaseHome({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);

//     return (firebaseUser == null)
//         ? AuthLoginPage()
//         : DashboardPage(firebaseUser);
//   }
// }
