import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/utils/assets.dart';
import '../core/utils/themes.dart';
import 'home/persentation/views/home_screen.dart';
import 'more/persentation/views/more_screen.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          theme: themeProvider.themeData, // Set the theme from the provider
          home: Scaffold(
            body: PageView(
              controller: _pageController,
              children: _screens,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    _currentIndex == 0 ? AssetsData.home : AssetsData.unHome,
                    height: 24,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    _currentIndex == 1 ? AssetsData.more : AssetsData.unMore,
                    height: 24,
                  ),
                  label: 'More',
                ),
              ],
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                  _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.ease);
                });
              },
            ),
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }

  final List<Widget> _screens = [const HomeScreen(), const MoreScreen()];
}
