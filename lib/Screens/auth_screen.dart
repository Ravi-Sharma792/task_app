import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:task_app/Widgets/login_bars.dart';
import 'package:task_app/Widgets/social_media_bar.dart';
import '../Models/auth_form.dart';

// import 'package:flare_flutter/flare_actor.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final formKey = GlobalKey<FormState>();

  void trysubmit() async {
    final isValid = formKey.currentState.validate();
    final auth = FirebaseAuth.instance;
    AuthResult authResult;

    if (isValid) {
      formKey.currentState.save();
      print(username);
      print(email);
      print(password);
      try {
        if (isLogin) {
          authResult = await auth.signInWithEmailAndPassword(
            email: email.trim(),
            password: password,
          );
        } else {
          authResult = await auth.createUserWithEmailAndPassword(
            email: email.trim(),
            password: password,
          );
        }
        await Firestore.instance
            .collection('users')
            .document(authResult.user.uid)
            .setData({
          'username': username,
          'email': email,
        });
      } on PlatformException catch (err) {
        print(err);
        // var message = 'An error occurred, pelase check your credentials!';

        // if (err.message != null) {
        //   message = err.message;
        // }

        // Scaffold.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text(message),
        //     backgroundColor: Colors.redAccent,
        //   ),
        // );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).accentColor,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 190, 20, 20),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      if (!isLogin) LoginBars(Icons.account_circle, 'Username'),
                      SizedBox(
                        height: 10.0,
                      ),
                      LoginBars(Icons.email, 'E-mail'),
                      SizedBox(
                        height: 10.0,
                      ),
                      LoginBars(Icons.lock, 'Password'),
                      SizedBox(
                        height: 10.0,
                      ),
                      RaisedButton(
                        color: Theme.of(context).primaryColor,
                        onPressed: trysubmit,
                        child: Text(
                          isLogin ? 'Login' : 'Signup',
                          style: Theme.of(context).textTheme.button,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 1,
                        width: deviceWidth,
                        color: Colors.grey[200],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RaisedButton(
                        color: Theme.of(context).primaryColor,
                        onPressed: () {
                          setState(() {
                            isLogin = !isLogin;
                          });
                        },
                        child: Text(
                          isLogin
                              ? 'Create new account'
                              : 'I already have an account',
                          style: Theme.of(context).textTheme.button,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SocialMediaBar(
                        Color(0xff3b5998),
                        MdiIcons.facebook,
                        'Sign in with Facebook',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SocialMediaBar(
                        Color(0xffdb4a39),
                        MdiIcons.googlePlus,
                        'Sign in with Google',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
