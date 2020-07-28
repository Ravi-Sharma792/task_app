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
        borderRadius: BorderRadius.circular(45),
      ),
      child: Expanded(
        child: TextField(
          style: TextStyle(
            fontFamily: 'Raleway',
            color: Colors.black,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: title,
            labelStyle: TextStyle(
              fontFamily: 'Raleway',
              color: Colors.black,
            ),
            prefixIcon: Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: 23,
            ),
          ),
        ),
      ),
    );
  }
}
