import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tour_booking_app_ui/screens/landing_page.dart';
import 'package:tour_booking_app_ui/views/star_rush_background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // bottomNavigationBar: Container(
          //     margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
          //     child: CustomBottomNavigationBar()),
          backgroundColor: Color(0xff1f1f29),
          body: Stack(
            children: [
              StarRushBackground(
                speed: 20,
              ),
              LandingPage()
            ],
          ),
        ),
      );
    });
  }
}
