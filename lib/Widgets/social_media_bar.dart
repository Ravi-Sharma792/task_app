import 'package:flutter/material.dart';

class SocialMediaBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color bgcolor;

  SocialMediaBar(this.bgcolor, this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      height: 50,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Expanded(
        child: Row(
          children: <Widget>[
            Container(
              width: 60,
              child: Icon(
                icon,
                color: Colors.white,
                size: 35,
              ),
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 20, fontFamily: 'Raleway', color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
