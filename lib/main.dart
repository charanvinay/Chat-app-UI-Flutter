import 'package:chat_app_ui/screens/welcome/welcome_screen.dart';
import 'package:chat_app_ui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freedom',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: WelcomeScreen(),
    );
  }
}
