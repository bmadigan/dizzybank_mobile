import 'package:flutter/material.dart';
import 'package:dizzybank_mobile/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dizzybank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(76, 81, 191, 1.0),
        backgroundColor: Color.fromRGBO(240, 242, 249, 1.0),
        accentColor: Color.fromRGBO(102, 126, 234, 1.0),
      ),
      home: HomeScreen(),
    );
  }
}
