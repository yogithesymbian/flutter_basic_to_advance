import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<FirebaseUser> signUp(String email, String pass) async {
    try {
      AuthResult authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: pass);
      FirebaseUser firebaseUser = authResult.user;
      return firebaseUser;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  static Future<FirebaseUser> signIn(String email, String pass) async {
    try {
      AuthResult authResult =
          await _auth.signInWithEmailAndPassword(email: email, password: pass);
      FirebaseUser firebaseUser = authResult.user;
      return firebaseUser;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  static Future<FirebaseUser> signInAnonymouse() async {
    try {
      AuthResult authResult = await _auth.signInAnonymously();
      FirebaseUser firebaseUser = authResult.user;
      return firebaseUser;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  static Future signOut() async {
    _auth.signOut();
  }

  static Stream<FirebaseUser> get firebaseUserStream =>
      _auth.onAuthStateChanged;
}
