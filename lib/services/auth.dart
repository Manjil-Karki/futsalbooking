import 'package:firebase_auth/firebase_auth.dart';
import 'package:futsal/services/database.dart';
import '../modals/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // creating object of user class
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  // // form fire base
  // Stream<FirebaseUser> get user{
  //   return _auth.onAuthStateChanged
  //   .map((FirebaseUser user) => _userFromFirebaseUser(user))
  // }

  // auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
        //.map((FirebaseUser user) => _userFromFirebaseUser(user))
        .map(_userFromFirebaseUser);
  }

  // Sign in anonymously
  Future signInAnonymously() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // ToDo sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(String username,
      String email, String contact, String password) async {
    print(username);
    print(email);
    print(contact);
    print(password);
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;

      // create a new document in database
      await DatabaseService(uid: user.uid)
          .updateUserData(username, 'N/A', 100, 0, 0, contact);

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
