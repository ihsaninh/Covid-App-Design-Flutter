import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:covidflutter/home.dart';
import 'package:covidflutter/statistics.dart';

class BottomTab extends StatefulWidget {
  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int _selectedTabIndex = 0;

  List _pages = [
    Home(),
    Statistics(),
    Text('tab 3'),
    Text('tab 4'),
    Text('tab 5'),
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _pages[_selectedTabIndex]
      ),
      bottomNavigationBar: buildBottomNavigationBar()
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(
              color: Color(0xff4C79FF),
              borderRadius: BorderRadius.circular(50)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: SvgPicture.asset(
                'assets/images/ic_round-home.svg',
                width: 24,
                height: 24,
              ),
            )
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/gridicons_stats.svg',
          ),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/ion_newspaper.svg'),
          title: Text('Star'),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/ant-design_info-circle-filled.svg'),
          title: Text('User'),
        ),
      ],
      onTap: _changeIndex,
      currentIndex: _selectedTabIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
    );
  }
}