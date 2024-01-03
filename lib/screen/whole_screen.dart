import 'package:divar_ui/screen/add_page.dart';
import 'package:divar_ui/screen/home_screen.dart';
import 'package:divar_ui/screen/profile_screen.dart';
import 'package:divar_ui/util/colors.dart';
import 'package:flutter/material.dart';

class WholeScreen extends StatefulWidget {
  const WholeScreen({super.key});

  @override
  State<WholeScreen> createState() => _WholeScreenState();
}

class _WholeScreenState extends State<WholeScreen> {
  int selecttednavigationitem = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: AppColor.grey,
        child: BottomNavigationBar(
          currentIndex: selecttednavigationitem,
          selectedItemColor: AppColor.red,
          unselectedItemColor: AppColor.grey,
          selectedLabelStyle: Theme.of(context).textTheme.labelMedium,
          unselectedLabelStyle: Theme.of(context).textTheme.headlineMedium,
          onTap: (int index) {
            setState(() {
              selecttednavigationitem = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/profile-circle-notactive.png',
                height: 24,
                width: 24,
              ),
              activeIcon: Image.asset(
                'assets/images/profile-circle.png',
                height: 24,
                width: 24,
              ),
              label: 'آویز من',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/add-circle.png',
                height: 24,
                width: 24,
              ),
              activeIcon: Image.asset(
                'assets/images/add-circle (1).png',
                height: 24,
                width: 24,
              ),
              label: 'افزودن آویز',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/search-normal.png',
                height: 24,
                width: 24,
              ),
              activeIcon: const Icon(
                Icons.search,
                color: AppColor.red,
              ),
              label: 'جستجو',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/homebottom.png',
                height: 24,
                width: 24,
              ),
              activeIcon: Image.asset(
                'assets/images/homebottomactive.png',
                height: 24,
                width: 24,
              ),
              label: 'آویز آگهی ها',
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: selecttednavigationitem,
        children: screenlist(),
      ),
    );
  }
}

List<Widget> screenlist() {
  return <Widget>[
    const ProfileScreen(),
    const AddPage(),
    const ProfileScreen(),
    const HomeScreen(),
  ];
}
