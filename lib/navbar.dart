import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:upi_app_ui/homepage.dart';

class NavBarWidget extends StatefulWidget {
  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  static double _width = 0.0;

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static TextStyle btnstyle = TextStyle(
      fontFamily: 'euclid', color: Color(0xff8E74EA), fontSize: _width / 28.4);
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: Likes',
      style: optionStyle,
    ),
    Text(
      'Index 2: Search',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var swidth = size.width;
    setState(() {
      _width = swidth;
    });
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
                gap: 8,
                activeColor: Color(0xff8E74EA),
                color: Color(0xffcfcfcf),
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Color(0x3f957CEB),
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Homeeeee',
                    textStyle: btnstyle,
                  ),
                  GButton(
                    icon: LineIcons.history,
                    text: 'History',
                    textStyle: btnstyle,
                  ),
                  GButton(
                    icon: LineIcons.rebel,
                    text: 'Wallet',
                    textStyle: btnstyle,
                  ),
                  GButton(
                    icon: LineIcons.code,
                    text: 'Offers',
                    textStyle: btnstyle,
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
