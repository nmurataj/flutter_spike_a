import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_spike_a/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on firebase user
  adkoUser? _adkoUserFromUser(User? user) {
    // ignore: unnecessary_null_comparison
    return user != null ? adkoUser(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<adkoUser?> get user {
    // try {
    //   return _auth
    //       .authStateChanges()
    //       .map((User? user) => _userFromFirebaseUser(user!));
    // } catch (e) {
    //   print(e.toString());
    //   print("User returned empty--perhaps they're logged off");
    //   return null;
    // }
    return _auth
        .authStateChanges()
        .map((User? user) => _adkoUserFromUser(user));
  }

  //sign in anon prohibited due to tracking issues
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _adkoUserFromUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email pass

  //register wil email pass

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
