import 'package:coffee_app/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //custom user for uid

  CustomClassName? _userFromFirebaseUser(User user){
    return user != null ? CustomClassName(uid: user.uid) : null;
  }

  Future signInAnon() async{
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
     return _userFromFirebaseUser(user!);
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}