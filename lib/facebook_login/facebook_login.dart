import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class LoginWithFacebook extends StatefulWidget {
  @override
  _LoginWithFacebookState createState() => _LoginWithFacebookState();
}

class _LoginWithFacebookState extends State<LoginWithFacebook> {
  bool _isLogin = false;
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  FacebookLogin _facebookLogin = FacebookLogin();
  User _user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !_isLogin
          ? Center(
              child: OutlinedButton(
                onPressed: () async {
                  await _handleLogin();
                },
                child: Text(
                  "Login with facebook",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(_user.photoURL),
                  ),
                  Text(
                    _user.displayName,
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 30,),
                  OutlinedButton(
                    onPressed: () async {
                      await _sigOut();
                    },
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Future _handleLogin() async {
    FacebookLoginResult _facebookLoginResult =
        await _facebookLogin.logIn(["email"]);
    switch (_facebookLoginResult.status) {
      case FacebookLoginStatus.cancelledByUser:
        print('cancelledByUser');
        break;
      case FacebookLoginStatus.error:
        print('error');
        break;
      case FacebookLoginStatus.loggedIn:
        await _loginWithFacebook(_facebookLoginResult);
        break;
    }
  }

  Future _loginWithFacebook(FacebookLoginResult _facebookLoginResult) async {
    FacebookAccessToken _facebookAccessToken = _facebookLoginResult.accessToken;
    AuthCredential _authCredential =
        FacebookAuthProvider.credential(_facebookAccessToken.token);
    var a = await _firebaseAuth.signInWithCredential(_authCredential);
    setState(() {
      _isLogin = true;
      _user = a.user;
    });
  }

  Future _sigOut() async {
    await _firebaseAuth.signOut().then((value) {
      setState(() {
        _facebookLogin.logOut();
        _isLogin = false;
      });
    });
  }
}
