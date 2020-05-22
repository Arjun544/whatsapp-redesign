import 'package:flutter/material.dart';

class IconsInfo{
  String title;
  IconData mainIcon;

  IconsInfo( {this.title, this.mainIcon});
}

List<IconsInfo> iconsList = [

  IconsInfo(title: 'Account', mainIcon: Icons.vpn_key),
  IconsInfo(title: 'Chats', mainIcon: Icons.chat_bubble),
  IconsInfo(title: 'Notifications', mainIcon: Icons.notifications_active),
  IconsInfo(title: 'Whats Pay', mainIcon: Icons.payment),
  IconsInfo(title: 'Help', mainIcon: Icons.info),
  IconsInfo(title: 'Logout', mainIcon: Icons.exit_to_app),

];