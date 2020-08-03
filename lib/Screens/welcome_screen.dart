import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/welcome.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 70, 30, 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      //fontStyle: FontStyle.normal,
                      fontSize: 70,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pretium turpis vitae nibh lobortis feugiat.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () =>
                        Navigator.of(context).pushReplacementNamed('/signup'),
                    child: Text(
                      'SignUp',
                      style: Theme.of(context).textTheme.button,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Already a member ?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  FlatButton(
                    //color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Theme.of(context).primaryColor, width: 3.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () =>
                        Navigator.of(context).pushReplacementNamed('/login'),
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
