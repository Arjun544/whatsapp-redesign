import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/home_screen.dart';
import 'package:whatsappclone/screens/register_number_screen.dart';
import 'package:whatsappclone/screens/verification_screen.dart';
import 'package:whatsappclone/screens/welcome_screen.dart';
import 'package:whatsappclone/screens/profile_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        RegisterNumberScreen.routeName: (context) => RegisterNumberScreen(),
        VerificationScreen.routeName: (context) => VerificationScreen(),
        ProfileScreen.routeName: (context) => ProfileScreen(),

      },
    );
  }
}
