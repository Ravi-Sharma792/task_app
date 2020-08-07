import 'package:flutter/material.dart';
import '../Models/auth_form.dart';

class LoginBars extends StatelessWidget {
  final IconData icon;
  final String title;

  LoginBars(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (title == 'Username') {
          if (value.isEmpty || value.length < 4) {
            return 'Please enter at least 4 characters';
          }
        } else if (title == 'E-mail') {
          if (value.isEmpty || !value.contains('@')) {
            return 'Please enter a valid email address.';
          }
        } else if (title == 'Password') {
          if (value.isEmpty || value.length < 7) {
            return 'Password must be at least 7 characters long.';
          }
        }
        return null;
      },
      onSaved: (value) {
        if (title == 'Username') {
          username = value;
        } else if (title == 'E-mail') {
          email = value;
        } else if (title == 'Password') {
          password = value;
        }
      },
      style: TextStyle(
        fontFamily: 'Raleway',
        color: Colors.black,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
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
