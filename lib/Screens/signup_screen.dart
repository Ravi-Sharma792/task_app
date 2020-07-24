import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Stack(
          children: <Widget>[
            Container(
              //padding: EdgeInsets.all(100.0),
              margin: EdgeInsets.only(bottom: 30.0),
              height: deviceHeight,
              width: deviceWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(700.0, 300.0),
                  bottomRight: Radius.elliptical(700.0, 300.0),
                ),
                color: Theme.of(context).accentColor,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 60,
                    child: Icon(
                      Icons.email,
                      color: Theme.of(context).primaryColor,
                      size: 20,
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                      ),
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
