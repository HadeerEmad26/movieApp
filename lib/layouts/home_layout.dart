import 'package:flutter/material.dart';
import 'package:movie_app/shared/styles/colors/app_colors.dart';
import 'package:movie_app/tabs/browse_tab.dart';
import 'package:movie_app/tabs/movie_home_tab.dart';
import 'package:movie_app/tabs/search_tab.dart';
import 'package:movie_app/tabs/watchList_tab.dart';
class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  static const String routeName = "HomeLayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}


class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> tabs = [
    MovieHomeTab(),
    SearchTab(),
    BrowseTab(),
    WatchListTab(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: yellowColor,
        unselectedItemColor: iconColor,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Home icon.png'),
                size: 20,
              ),
              label: 'Home',
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/search-2.png'),
                size: 20,
              ),
              label: 'Search',
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Icon material-movie.png'),
                size: 20,
              ),
              label: 'Browse',
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Icon ionic-md-bookmarks.png'),
                size: 20,
              ),
              label: 'WatchList',
              backgroundColor: primaryColor),
        ],
      ),
    );
  }
}
