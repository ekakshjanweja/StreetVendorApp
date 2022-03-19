import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthClass {
  //Current User

  static final user = FirebaseAuth.instance.currentUser!;

  //Sign In With Email And Password

  static Future signInWithEmailAndPassword(
      String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print(e);
    }
  }

  //Sign Up With Email And Password

  static Future signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print(e);
    }
  }

  //Sign Out

  static Future signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
