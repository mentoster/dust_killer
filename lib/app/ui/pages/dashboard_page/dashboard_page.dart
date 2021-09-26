import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/dashboard_controller.dart';
import '../home_page/home_page.dart';
import '../statepage_page/statepage_page.dart';

class DashboardPage extends StatelessWidget {
  final int startedPage;
  const DashboardPage({
    Key? key,
    required this.startedPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (c) {
        c.changeDefaultPage(startedPage);
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: c.tabIndex,
              children: const [
                HomePage(),
                StatePage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: c.changeTabIndex,
            currentIndex: c.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: CupertinoIcons.home,
                label: 'Домой',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.info,
                label: 'Состояние',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
