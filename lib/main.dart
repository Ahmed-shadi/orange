import 'package:flutter/material.dart';
import 'package:odc/presentation/constant/constants.dart';
import 'package:odc/presentation/splash/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'ODC',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(primaryColor))
        ),
        outlinedButtonTheme:OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              primary: primaryColor,
              side:  BorderSide(color: primaryColor),
            )
        ),
        backgroundColor: Colors.teal,
        primarySwatch: Colors.blue,
      ),

      home: SplashScreen(),

    );
  }
}