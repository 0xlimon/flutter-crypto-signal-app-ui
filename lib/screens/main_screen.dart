import 'package:animations/animations.dart';
import 'package:crypto_signal/screens/login_screen.dart';
import 'package:crypto_signal/screens/premium_screen.dart';
import 'package:crypto_signal/screens/profile_screen.dart';
import 'package:crypto_signal/screens/register_screen.dart';
import 'package:crypto_signal/screens/spot_signal_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  int _selectedBottomNavigationBar = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedBottomNavigationBar,
          selectedFontSize: 20,
          selectedIconTheme: IconThemeData(color: Colors.black),
          onTap: (value) {
            setState(() {
              _selectedBottomNavigationBar = value;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                  width: 25, child: Image.asset("assets/images/home.png")),
              activeIcon: SizedBox(
                  width: 25,
                  child: Image.asset("assets/images/home_active.png")),
              label: 'Item1',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                  width: 25, child: Image.asset("assets/images/news.png")),
              activeIcon: SizedBox(
                  width: 25,
                  child: Image.asset("assets/images/news_active.png")),
              label: 'Item2',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                  width: 25, child: Image.asset("assets/images/signal.png")),
              activeIcon: SizedBox(
                  width: 25,
                  child: Image.asset("assets/images/signal_active.png")),
              label: 'Item3',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                  width: 25, child: Image.asset("assets/images/setting.png")),
              activeIcon: SizedBox(
                  width: 25,
                  child: Image.asset("assets/images/setting_active.png")),
              label: 'Item4',
            ),
          ],
        ),
        body: PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
              SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.vertical,
            child: child,
          ),
          child: _getLayouts()[_selectedBottomNavigationBar],
        ));
  }

  List<Widget> _getLayouts() {
    return <Widget>[
      SpotSignalScreen(),
      PremiumScreen(),
      RegisterScreen(),
      ProfileScreen(),
    ];
  }
}
