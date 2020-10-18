import 'package:fathers_charity/constants.dart';
import 'package:fathers_charity/screens/donation/donation.dart';
import 'package:fathers_charity/screens/explore/explore.dart';
import 'package:fathers_charity/screens/home/home_screen.dart';
import 'package:fathers_charity/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    ExploreScreen(),
    DonationScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Scaffold(
          body: _children.elementAt(_selectedIndex),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.black45.withOpacity(0.1),
                ),
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: GNav(
                  gap: 14,
                  activeColor: Colors.white,
                  iconSize: 23,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 5.0),
                  duration: Duration(milliseconds: 800),
                  tabBackgroundColor: kPrimaryColor,
                  tabs: [
                    GButton(
                      icon: AntDesign.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: AntDesign.find,
                      text: 'Explore',
                    ),
                    GButton(
                      icon: MaterialCommunityIcons.heart_circle_outline,
                      text: 'Donation',
                    ),
                    GButton(
                      icon: FontAwesome.user_circle_o,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
