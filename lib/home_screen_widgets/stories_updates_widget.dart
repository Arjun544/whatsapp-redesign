import 'package:flutter/material.dart';
import 'package:whatsappclone/model/custom_colors.dart';
import 'package:whatsappclone/model/users_model.dart';

class StoriesUpdates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Center(
        child: Container(
          width: screenWidth,
          color: Colors.white,

        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: user.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    width: screenWidth,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 20, top: 10),
                              width: 70,
                              height: 70,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 3.0,
                                    style: BorderStyle.solid,
                                    color: CustomColors().darkGreen
                                ),
                                image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(user[index].dp),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                user[index].name,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(user[index].status,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade100,
                    thickness: 2,
                    indent: 122,
                    endIndent: 40,
                  ),
                ],
              );
            }),
      ),
      ),
    );
  }
}
