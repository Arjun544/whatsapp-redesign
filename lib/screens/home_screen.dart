import 'package:flutter/material.dart';
import 'package:whatsappclone/home_screen_widgets/calls_tab.dart';
import 'package:whatsappclone/home_screen_widgets/chats_tab.dart';
import 'package:whatsappclone/home_screen_widgets/story_tab.dart';
import 'package:whatsappclone/model/custom_colors.dart';
import 'package:whatsappclone/home_screen_widgets/custom_navi_bar.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0), // here the desired height
        child: AppBar(
         elevation: 0,
         backgroundColor: Colors.white,
         bottom: TabBar(
           unselectedLabelColor: Colors.black26,
           labelColor: CustomColors().darkBlack,
           labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
           tabs: [
             new Tab(
               text: 'Story',
             ),
             Row(
               children: <Widget>[
                 new Tab(
                   text: 'Chats',
                 ),
                 Container(
                   margin: EdgeInsets.only(left: 5),
                   height: 30,
                   width: 30,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: CustomColors().darkGreen,
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 7),
                     child: Text(
                       '18',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         fontSize: 14,
                         color: Colors.white,
                       ),
                     ),
                   ), // display sum of chats
                 ),
               ],
             ),
             new Tab(
               text: 'Calls',
             ),
           ],
           controller: _tabController,
           indicatorColor: Colors.transparent,
           indicatorSize: TabBarIndicatorSize.tab,
         ),
         bottomOpacity: 1,
          ),
      ),
      body: Material(
        color: Colors.white,
        child: TabBarView(
          children: [
            StoryTab(),
            ChatsTab(),
            CallsTab(),
          ],
          controller: _tabController,
        ),
      ),


      extendBody: true,  //If you want to show body behind the navbar, it should be true
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
