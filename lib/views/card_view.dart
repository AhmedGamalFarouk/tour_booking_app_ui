import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardView extends StatelessWidget {
  const CardView(
      {super.key,
      required this.imageUrl,
      required this.locationName,
      required this.rating,
      required this.bookingDate,
      required this.price,
      required this.country});

  final String imageUrl;
  final String locationName;
  final String rating;
  final String bookingDate;
  final String price;
  final String country;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Color(0xff131316),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset(
            width: 110,
            height: 110,
            imageUrl,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                spacing: 30,
                children: [
                  Text(
                    locationName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Color(0xff1f1f29),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Row(
                          children: [
                            Text(
                              rating,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 14.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                spacing: 5,
                children: [
                  Image.asset(
                    height: 20,
                    width: 20,
                    'assets/icons/calendar.png',
                  ),
                  Text(
                    bookingDate,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 5,
                children: [
                  Image.asset(
                    height: 20,
                    width: 20,
                    'assets/icons/dollar-square.png',
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                  Text(
                    ' / Day',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontSize: 10),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Image.asset(
                        height: 20,
                        width: 20,
                        'assets/icons/location.png',
                      ),
                      Text(
                        country,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.inter().fontFamily,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
