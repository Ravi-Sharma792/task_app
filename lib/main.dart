import 'package:flutter/material.dart';
import 'package:task_app/Widgets/welcome_screen.dart';

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
      ),
      home: WelcomeScreen(),
    );
  }
}
