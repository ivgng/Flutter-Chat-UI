import 'package:discovery/pages/home/explore_page.dart';
import 'package:discovery/pages/home/favorite_page.dart';
import 'package:discovery/pages/home/home_page.dart';
import 'package:discovery/pages/home/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:discovery/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/images/icon_home.png',
                  width: 26,
                  color: currentIndex == 0 ? redColor : null,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/images/icon_explore.png',
                  width: 26,
                  color: currentIndex == 1 ? redColor : null,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/images/icon_favorite.png',
                  width: 26,
                  color: currentIndex == 2 ? redColor : null,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15, right: 20),
                child: Image.asset(
                  'assets/images/icon_profile.png',
                  width: 26,
                  color: currentIndex == 3 ? redColor : null,
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ExplorePage();
          break;
        case 2:
          return FavoritePage();
          break;
        case 3:
          return ProfilePage();
          break;

        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: mainBackgroundColor,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
