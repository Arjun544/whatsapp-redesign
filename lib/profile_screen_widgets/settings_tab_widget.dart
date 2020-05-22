import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/model/profile_page_details.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: 15),
      height: screenHeight ,
      width: screenWidth,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: iconsList.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        iconsList[index].mainIcon,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 25),
                    Text(
                      iconsList[index].title,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
