import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta/src/dummy_datas/stories.dart';

import '../widgets/appbar.dart';
import '../widgets/story_circle.dart';
import 'feed_tab.dart';
import 'new_post_tab.dart';
import 'profile_tab.dart';
import 'search_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPageIndex = 0;

  void _onItemTapped(int index) => setState(() => _selectedPageIndex = index);

  final List<Widget> _pages = const [
    FeedTab(),
    SearchTab(),
    NewPostTab(),
    ProfileTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InstagramAppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 120.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (context, index) =>
                  StoryCircle(story: stories[index]),
            ),
          ),
          Expanded(child: _pages[_selectedPageIndex]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          iconSize: 18.0,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
              ),
              label: "search",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.plus),
              label: "New post",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidUser),
              label: "profile",
            ),
          ]),
    );
  }
}
