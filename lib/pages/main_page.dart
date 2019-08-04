import 'package:flutter/material.dart';
import 'package:lndlly_alpha/pages/pagesHome/home.dart';
import 'package:lndlly_alpha/pages/pagesHome/profile.dart';
import 'package:lndlly_alpha/pages/pagesHome/settings.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 1000), curve: Curves.fastLinearToSlowEaseIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: builPageView(),
      bottomNavigationBar: BottomNavigationBar(
        items: navigationBarItems(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  List<BottomNavigationBarItem> navigationBarItems(){
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.vignette),
        title: Text("Home")
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.toc),
        title: Text("Settings")
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.supervised_user_circle),
        title: Text("Profile")
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true
  );

  void pageChanged(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget builPageView(){
    return PageView(
      controller: pageController,
      onPageChanged: (index){
        pageChanged(index);
      },
      children: <Widget>[
        HomePageSlider(),
        SettingsPageSlider(),
        ProfilePageSlider()
      ],
    );
  }

  @override
  void initState() { 
    super.initState();
  }
}