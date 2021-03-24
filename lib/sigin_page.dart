import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

import 'googlePage.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();

class SignInPage extends StatefulWidget {
  final String title = 'Registration';

  @override
  State<StatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return FlatButton(
                child: const Text('Sign out'),
                onPressed: () async {
                  final FirebaseUser user = await _auth.currentUser();
                  if (user == null) {
                    Scaffold.of(context).showSnackBar(SnackBar(
                        content: const Text('no one has a signed in')));
                  }
                  _signOut();
                  final String uid = user.uid;
                  Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(uid + 'has successfully signed out')));
                },
              );
            },
          )
        ],
      ),
      body: Builder(
        builder: (BuildContext context) {
          return ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              GoogleSignInSection(),
            ],
          );
        },
      ),
    );
  }

  void _signOut() async {
    await _auth.signOut();
  }
}

class GoogleSignInSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GoogleSignInSectionState();
}

class _GoogleSignInSectionState extends State<GoogleSignInSection> {
  bool _success;
  String _userID;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: const Text('test sign in with google'),
          padding: const EdgeInsets.all(15),
          alignment: Alignment.center,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              GoogleSignInButton(
                  onPressed: () {
                    _signInWithGoogle();
                  },
                  darkMode: true),
            ],
          ),
        )
      ],
    );
  }

  void _signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final FirebaseUser user = await _auth.signInWithCredential(credential);
    assert(user.displayName != null);
    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);
    setState(() {
      if (user != null) {
        _success = true;
        _userID = user.uid;
        Navigator.of(context).pushReplacement(
            CupertinoPageRoute(builder: (context) => MainGoogle()));
      }
    });
  }
}
