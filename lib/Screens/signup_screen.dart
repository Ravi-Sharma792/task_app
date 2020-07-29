import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:task_app/Widgets/login_bars.dart';
import 'package:task_app/Widgets/social_media_bar.dart';
// import 'package:flare_flutter/flare_actor.dart';

class SignUpScreen extends StatelessWidget {
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
                child: Column(
                  children: <Widget>[
                    // FlareActor(
                    //   'assets/flare/teddy_test.flr',
                    //   alignment: Alignment.center,
                    //   fit: BoxFit.contain,
                    //   animation: 'idle',
                    // ),
                    LoginBars(Icons.account_circle, 'Username'),
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
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/login'),
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
            ],
          ),
        ),
      ),
    );
  }
}
