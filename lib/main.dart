import 'package:flutter/material.dart';
import 'package:task_app/Screens/dashboard_screen.dart';
import 'package:task_app/Screens/login_screen.dart';
import 'package:task_app/Screens/welcome_screen.dart';
import 'Screens/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //var deviceAlignment = MediaQuery.of(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.purple[200],
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              button: TextStyle(
                fontFamily: 'NewHelvetica',
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
      ),
      home: SafeArea(child: WelcomeScreen()),
      routes: {
        '/signup': (ctx) => SignUpScreen(),
        '/login': (ctx) => LoginScreen(),
        '/dashboard': (ctx) => DashboardScreen(),
      },
    );
  }
}
