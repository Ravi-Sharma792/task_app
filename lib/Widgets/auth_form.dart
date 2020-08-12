import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:task_app/Widgets/social_media_bar.dart';

class AuthForm extends StatefulWidget {
  AuthForm(
    this.submitFn,
    this.isLoading,
  );

  final void Function(
    String email,
    String password,
    String username,
    bool isLogin,
    BuildContext ctx,
  ) submitFn;
  final bool isLoading;
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formkey = GlobalKey<FormState>();
  String _userName = '';
  String _userEmail = '';
  String _userPassword = '';
  bool _isLogin = false;

  void _trySubmit() {
    final isValid = _formkey.currentState.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formkey.currentState.save();
      widget.submitFn(
        _userEmail.trim(),
        _userPassword.trim(),
        _userName.trim(),
        _isLogin,
        context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  key: _formkey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      if (!_isLogin)
                        TextFormField(
                          key: ValueKey('username'),
                          validator: (value) {
                            if (value.isEmpty || value.length < 4) {
                              return 'Please enter at least 4 characters';
                            }

                            return null;
                          },
                          onSaved: (value) {
                            _userName = value;
                          },
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2,
                              ),
                            ),
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.black,
                            ),
                            prefixIcon: Icon(
                              Icons.verified_user,
                              color: Theme.of(context).primaryColor,
                              size: 23,
                            ),
                          ),
                        ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        key: ValueKey('email'),
                        validator: (value) {
                          if (value.isEmpty || !value.contains('@')) {
                            return 'Please enter a valid email address.';
                          }

                          return null;
                        },
                        onSaved: (value) {
                          _userEmail = value;
                        },
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                          ),
                          labelText: 'E-mail',
                          labelStyle: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.black,
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Theme.of(context).primaryColor,
                            size: 23,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        key: ValueKey('password'),
                        validator: (value) {
                          if (value.isEmpty || value.length < 7) {
                            return 'Password must be at least 7 characters long.';
                          }

                          return null;
                        },
                        onSaved: (value) {
                          _userPassword = value;
                        },
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.black,
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Theme.of(context).primaryColor,
                            size: 23,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (widget.isLoading) CircularProgressIndicator(),
                      if (!widget.isLoading)
                        RaisedButton(
                          color: Theme.of(context).primaryColor,
                          onPressed: _trySubmit,
                          child: Text(
                            _isLogin ? 'Login' : 'Signup',
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
                            _isLogin = !_isLogin;
                          });
                        },
                        child: Text(
                          _isLogin
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
