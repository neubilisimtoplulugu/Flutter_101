import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter101/mainscreens/anasayfa.dart';
import 'package:flutter101/mainscreens/ikincisayfa.dart';
import 'package:flutter101/mainscreens/ucuncusayfa.dart';

class navigator extends StatefulWidget {
  const navigator({super.key});

  @override
  State<navigator> createState() => _navigatorState();
}

class _navigatorState extends State<navigator> {
  GlobalKey<CurvedNavigationBarState> _globalKey = GlobalKey();
  late PageController _pageController;
  int _page = 0;
  void onpage(int index) {
    _page = index;
  }

  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: onpage,
        children: [anasayfa_screen(), ikinci_sayfa(), ucuncu_sayfa()],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue,
        key: _globalKey,
        items: const <Widget>[
          Icon(
            Icons.home,
          ),
          Icon(Icons.ac_unit),
          Icon(Icons.access_alarm_sharp),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
            _pageController.jumpToPage(_page);
          });
        },
      ),
    ));
  }
}
