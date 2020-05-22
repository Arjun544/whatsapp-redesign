import 'package:flutter/material.dart';
import 'package:whatsappclone/model/custom_colors.dart';
import 'package:whatsappclone/profile_screen_widgets/profile_screen_tabbar.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'profileScreen';

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
    double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              width: screenWidth,
              height: screenHeight * 0.3,
              child: Stack(
                children: <Widget>[
                  Positioned(
                        top: deviceHeight(context) * 0.08,
                        left: deviceWidth(context) * 0.08,
                    child: Container(
                      height: 120,
                      width: 120,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/Ali.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: deviceHeight(context) * 0.21,
                    left: deviceWidth(context) * 0.26,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors().darkGreen,
                      ),
                      child: Icon(Icons.edit, color: Colors.white, size: 24),
                    ),
                  ),
                  Positioned(
                    top: deviceHeight(context) * 0.14,
                    left: deviceWidth(context) * 0.45,
                    child: Text(
                      'Ali Ferraz',
                      style: TextStyle(
                        color: CustomColors().darkBlack,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Positioned(
                    top: deviceHeight(context) * 0.19,
                    left: deviceWidth(context) * 0.45,
                    child: Text(
                      'Created on April 2019',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          Expanded(
            child: Container(
              width: screenWidth,
              decoration: BoxDecoration(
                color: CustomColors().darkBlack,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Stack(
              alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 40),
                    height: 7,
                    width: screenWidth * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                  ProfileScreenTabBar(),
                ],
              ),
            ),
          ),

          ],
        ),
      ),
    );
  }
}