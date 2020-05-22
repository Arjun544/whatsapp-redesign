import 'package:flutter/material.dart';
import 'package:whatsappclone/model/custom_colors.dart';

class MyStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20, top: 20, left: 35),
              width: 70,
              height: 70,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/Alice.jpg'),
                ),
              ),
            ),
            Positioned(
              left: 80,
              top: 60,
              child: Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  color: CustomColors().darkGreen,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
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
                'My Story',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Add to my status',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
