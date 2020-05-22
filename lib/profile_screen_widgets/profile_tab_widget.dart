import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/model/custom_colors.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          NewWidget(title: 'Name', subtitle: 'Ali Ferraz', icon: Icons.person),
          Divider(
            color: Colors.white12,
            thickness: 2,
            indent: 64,
          ),
          NewWidget(
              title: 'About', subtitle: 'Coding is love  :)', icon: Icons.info),
          Divider(
            color: Colors.white12,
            thickness: 2,
            indent: 64,
          ),
          NewWidget(
              title: 'Phone', subtitle: '+92 345 678 987', icon: Icons.phone),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  NewWidget(
      {@required this.title, @required this.subtitle, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon, size: 30, color: Colors.white),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      subtitle,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.edit,
                  color: CustomColors().darkGreen,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
