import 'package:flutter/material.dart';
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
                padding: EdgeInsets.fromLTRB(20, 230, 20, 0),
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
                      color: Colors.white,
                    )
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
