import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class METExpFirebaseUser {
  METExpFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

METExpFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<METExpFirebaseUser> mETExpFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<METExpFirebaseUser>((user) => currentUser = METExpFirebaseUser(user));
