import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/model/custom_colors.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = 'welcomeScreen'; // route name

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double textSize = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 160, left: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/logo.png',
                  color: CustomColors().darkGreen,
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.2,
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Text(
            'Simple. Secure.',
            style: TextStyle(
              fontSize: 25,
              color: CustomColors().darkBlack,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Reliable messaging.',
            style: TextStyle(
              fontSize: 25,
              color: CustomColors().darkBlack,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RichText(
                  maxLines: 2,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Read our ', style: TextStyle(
                          color: CustomColors().darkBlack,
                          fontSize: textSize * 15 ,
                        ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy. ', style: TextStyle(
                          color: Colors.blue,
                          fontSize: textSize * 15 ,
                        ),
                        ),
                        TextSpan(
                          text: 'Tap "Agree" to accept\n                     the ', style: TextStyle(
                          color: CustomColors().darkBlack,
                          fontSize: textSize * 15 ,
                        ),
                        ),
                        TextSpan(
                          text: 'Terms of Service. ', style: TextStyle(
                          color: Colors.blue,
                          fontSize: textSize * 15 ,
                        ),
                        ),
                      ],
                    ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Material(
            color: CustomColors().darkGreen,
            borderRadius: BorderRadius.circular(10),
            elevation: 5,
            child:MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, 'registerNumberScreen');
              },
              minWidth: screenWidth * 0.8,
              height: screenHeight * 0.085,
              child: Text(
                'AGREE AND CONTINUE',
               style: TextStyle(
                 fontSize: 18,
                 color: Colors.white,
               ),),
            ),
          ),
        ],
      ),
    );
  }
}
