// import 'package:firebase_auth/firebase_auth.dart';

// class AuthServices {
//   static FirebaseAuth _auth = FirebaseAuth.instance;

//   static Future<FirebaseUser> signInAnonymouse() async {
//     try {
//       AuthResult result = await _auth.signInAnonymously();
//       FirebaseUser firebaseUser = result.user;
//       return firebaseUser;
//     } catch (err) {
//       print(err.toString());
//       return null;
//     }
//   }

//   static Future signOut() async {
//     _auth.signOut();
//   }

//   static Stream<FirebaseUser> get firebaseUserStream =>
//       _auth.onAuthStateChanged;
// }
