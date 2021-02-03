import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  final FirebaseAuth _firebaseAuth;

  FirebaseService(this._firebaseAuth);

  bool isUserLogon() {
    return _firebaseAuth.currentUser != null;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<bool> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return true;
    } on FirebaseAuthException {
      return false;
    }
  }

  Future<bool> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return true;
    } on FirebaseAuthException {
      return false;
    }
  }
}
