import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1f29),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: AssetImage('assets/pics/beach_pic.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          GlassContainer.clearGlass(
                            borderColor: Colors.white,
                            borderWidth: 0.8,
                            margin: EdgeInsets.all(15),
                            borderRadius: BorderRadius.circular(15),
                            height: 50,
                            width: 50,
                            blur: 2,
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.chevronLeft,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          GlassContainer.clearGlass(
                            borderColor: Colors.white,
                            borderWidth: 0.8,
                            margin: EdgeInsets.all(15),
                            borderRadius: BorderRadius.circular(15),
                            height: 50,
                            width: 50,
                            blur: 2,
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.bookmark,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nusa Pedina',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: GoogleFonts.inter().fontFamily,
                              color: Colors.white),
                        ),
                        Row(spacing: 8, children: [
                          Image.asset(
                            'assets/icons/location.png',
                            color: Colors.white,
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            'Bali, Indonesia',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: GoogleFonts.inter().fontFamily,
                                color: Colors.white),
                          ),
                        ])
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Color(0xff131316),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 10,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.indigo,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Image.asset(
                              'assets/pics/beach_pic.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Image.asset(
                            'assets/pics/morePics1.png',
                            width: 60,
                            height: 60,
                          ),
                          Image.asset(
                            'assets/pics/morePics2.png',
                            width: 60,
                            height: 60,
                          ),
                          Image.asset(
                            'assets/pics/morePics3.png',
                            width: 60,
                            height: 60,
                          ),
                          Image.asset(
                            'assets/pics/morePics4.png',
                            width: 60,
                            height: 60,
                          ),
                          Image.asset(
                            'assets/pics/morePics5.png',
                            width: 60,
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Travel summary',
                        style: TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'See more',
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 15),
                          FaIcon(
                            FontAwesomeIcons.chevronRight,
                            size: 15,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    spacing: 20,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff131316),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(10),
                        child: FaIcon(
                          FontAwesomeIcons.solidClock,
                          color: Colors.indigo,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Duration',
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '5 Days',
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff131316),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(10),
                        child: FaIcon(
                          FontAwesomeIcons.route,
                          color: Colors.indigo,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Distance',
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '411 KM',
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff131316),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(10),
                        child: FaIcon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.indigo,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Rating',
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      'if you wish to experience breezy. beaches, swaying palm trees, and quirky beach shacks, make your way to Bali. Our Bali tour is dotted with volcanic mountains, iconic rice paddies, and vibrant nightlife. Now that you have booked your experiential tour package.',
                      style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        '\$250 / Day',
                        style: TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text('Book Now',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
