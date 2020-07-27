import 'package:flutter/material.dart';

class LoginBars extends StatelessWidget {
  final IconData icon;
  final String title;

  LoginBars(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 60,
            child: Icon(
              icon,
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
                hintText: title,
                hintStyle: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
