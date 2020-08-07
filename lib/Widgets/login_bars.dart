import 'package:flutter/material.dart';

class LoginBars extends StatelessWidget {
  final IconData icon;
  final String title;

  LoginBars(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontFamily: 'Raleway',
        color: Colors.black,
      ),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
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
    );
  }
}
