import 'package:flutter/material.dart';
import 'package:hisword/constants/colors.dart';
import 'package:hisword/views/navs/favourite.dart';
import 'package:hisword/views/navs/home.dart';
import 'package:iconly/iconly.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> screens = [
    const Home(),
    const Favourites(),
    const Home(),
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        unselectedFontSize: 15,
        backgroundColor: dark,
        elevation: 1,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(color: light),
        unselectedIconTheme: IconThemeData(color: light.withOpacity(0.4)),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: light,
        unselectedItemColor: light.withOpacity(0.4),
        currentIndex: _index,
        items: const [
          BottomNavigationBarItem(icon: Icon(IconlyLight.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.category), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.setting), label: "settings"),
        ],
        onTap: (value) => setState(() => _index = value),
      ),
    );
  }
}


// buildBottomIconButton()=>IconButton(onPressed: (){}, icon: Icon(icon))
