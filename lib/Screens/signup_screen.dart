import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:task_app/social_media_icons_icons.dart';
// import 'package:flare_flutter/flare_actor.dart';

class SignUpScreen extends StatelessWidget {
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
              // Container(
              //   padding: EdgeInsets.all(100.0),
              //   margin: EdgeInsets.only(bottom: 30.0),
              //   height: deviceHeight,
              //   width: deviceWidth,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.only(
              //       bottomLeft: Radius.elliptical(700.0, 300.0),
              //       bottomRight: Radius.elliptical(700.0, 300.0),
              //     ),
              //     color: Theme.of(context).accentColor,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 230, 20, deviceHeight),
                child: Column(
                  children: <Widget>[
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
                              Icons.account_circle,
                              color: Theme.of(context).primaryColor,
                              size: 23,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Username...',
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
                              Icons.email,
                              color: Theme.of(context).primaryColor,
                              size: 23,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email...',
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
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password...',
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
                      onPressed: () {},
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
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            child: Icon(
                              MdiIcons.facebook,
                              color: Color(0xff3b5998),
                              size: 30,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Sign in with facebook',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Raleway',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Padding(
              //   padding: EdgeInsets.fromLTRB(40, 510, 20, 20),
              //   child: Row(
              //     children: <Widget>[
              //       IconButton(
              //         icon: Icon(
              //           MdiIcons.facebook,
              //           size: 100,
              //           color: Color(0xff3b5998),
              //         ),
              //         onPressed: () {},
              //       ),
              //       SizedBox(
              //         width: 100,
              //       ),
              //       IconButton(
              //         icon: Icon(
              //           MdiIcons.googlePlus,
              //           size: 100,
              //           color: Color(0xffdb4a39),
              //         ),
              //         onPressed: () {},
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
