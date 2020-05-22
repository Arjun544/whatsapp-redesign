
import 'package:flutter/material.dart';
import 'package:whatsappclone/model/custom_colors.dart';
import 'package:whatsappclone/profile_screen_widgets/profile_tab_widget.dart';
import 'package:whatsappclone/profile_screen_widgets/settings_tab_widget.dart';

class ProfileScreenTabBar extends StatefulWidget {
  @override
  _ProfileScreenTabBarState createState() => _ProfileScreenTabBarState();
}

class _ProfileScreenTabBarState extends State<ProfileScreenTabBar> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 10),
          child: TabBar(
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: CustomColors().darkGreen,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 20, vertical: -10),
            isScrollable: false,
            tabs: <Widget>[
              Text('Profile', style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
              ),
              Text('Settings', style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
              ),
            ],
          ),
        ),
//                      ProfileScreenTabBar(),
        Expanded(
          child: Container(
            child: TabBarView(
              children: [
                ProfileTab(),
                SettingsTab(),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ],
    );
  }
}
