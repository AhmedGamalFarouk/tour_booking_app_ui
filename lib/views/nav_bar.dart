import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

bool showNavigationBar = true;

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Perform navigation or other actions based on the selected index.
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      decoration: BoxDecoration(
          color: Color(0xff131316),
          border: Border.all(color: Colors.grey.shade800, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          )),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/home.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/category.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/archive.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/profile-circle.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF8888FF),
        unselectedItemColor: Color(0xFF8888FF),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 2,
        onTap: _onItemTapped,
      ),
    );
  }
}
