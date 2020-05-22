import 'package:flutter/material.dart';
import 'package:whatsappclone/home_screen_widgets/my_story_widget.dart';
import 'package:whatsappclone/home_screen_widgets/search_bar_widget.dart';
import 'package:whatsappclone/home_screen_widgets/stories_updates_widget.dart';

class StoryTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBar(),
        MyStory(),
        Padding(
          padding: const EdgeInsets.only(left: 35, top: 20),
          child: Text(
            'Recent Updates',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          ),
        ),
        StoriesUpdates(),


      ],
    );
  }
}