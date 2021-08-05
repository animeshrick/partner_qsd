import 'package:flutter/material.dart';
import 'package:partner_qsd/util/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'inside_tabs/faq.dart';
import 'inside_tabs/jobs.dart';
import 'inside_tabs/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final _widgetOptions = [const Jobs(), const Faq(), const Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.near_me_outlined),
              color: black,
            ),
            customText('1901 Thornridge Cir. Shiloh ▼', black, 15,
                fontWeight: FontWeight.w400),
          ],
        ),
        backgroundColor: white,
        elevation: 0.5,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
            color: black,
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.work_outlined),
                label: 'Jobs',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                label: 'Faq',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            elevation: 1,
            backgroundColor: commonColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: white,
            unselectedItemColor: Colors.white38,
            onTap: _onItemTapped,
          ),
        ],
      ),
    );
  }
}
