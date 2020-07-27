import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SocialMediaBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color bgcolor;

  SocialMediaBar(this.bgcolor, this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: bgcolor,
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
    );
  }
}
