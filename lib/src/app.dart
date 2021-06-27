import 'package:flutter/material.dart';
import 'package:flutter_todoebloc/src/ui/screens/HomeScreen.dart';
import 'package:flutter_todoebloc/src/ui/screens/LoginScreen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => MyHomePage(title: 'TodoeBLoC'),
      },
    );
  }
}
