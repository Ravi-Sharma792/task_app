import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:flare_flutter/flare_actor.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
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
                padding: EdgeInsets.fromLTRB(20, 230, 20, deviceHeight),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            child: Icon(
                              Icons.email,
                              color: Theme.of(context).primaryColor,
                              size: 23,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'E-mail',
                                hintStyle: TextStyle(
                                  fontFamily: 'Raleway',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            child: Icon(
                              Icons.lock,
                              color: Theme.of(context).primaryColor,
                              size: 23,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontFamily: 'Raleway',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    RaisedButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/signup'),
                      child: Text(
                        'SignUp',
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
                      onPressed: () {},
                      child: Text(
                        'Login',
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
                      height: 45,
                      color: Color(0xff3b5998),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            child: Icon(
                              MdiIcons.facebook,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Sign in with Facebook',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Raleway',
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 45,
                      color: Color(0xffdb4a39),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            child: Icon(
                              MdiIcons.googlePlus,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Sign in with Google',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Raleway',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
