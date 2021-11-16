import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj
  // MyUser? _userFromFirebaseUser(MyUser user) {
  //   return user != null ? MyUser(uid: user.uid) : null;
  // }

  //sign in anonymously
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user.uid;
    } catch (e) {
      print(e.toString());
      return null;
    }

    // Email and Pwd

    // Registering

    // Sign out
  }
}
