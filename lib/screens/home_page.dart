import 'package:colorfilter_generator/addons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:tour_booking_app_ui/screens/booking_page.dart';
import 'package:tour_booking_app_ui/views/card_view.dart';
import 'package:tour_booking_app_ui/views/location_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1f29),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [
              Row(children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/pics/profile.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome Back',
                        style: TextStyle(
                            color: Color(0xff575b66),
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontSize: 12)),
                    Text('Ahmed Gamal',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontSize: 18))
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white70),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.bell,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ]),
              SizedBox(height: 20),
              SearchBar(
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 16)),
                backgroundColor: WidgetStatePropertyAll(Color(0xff131316)),
                leading: FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white,
                ),
                hintText: ('Search'),
                hintStyle: WidgetStatePropertyAll(TextStyle(
                    fontSize: 20, fontFamily: GoogleFonts.inter().fontFamily)),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                trailing: [
                  Icon(
                    Symbols.page_info,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Suggestions for you',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FaIcon(
                    FontAwesomeIcons.chevronRight,
                    size: 12,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.matrix(
                        ColorFilterAddons.saturation(0.3),
                      ),
                      child: InkWell(
                        onDoubleTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookingPage()));
                        },
                        child: LocationView(
                          imageUrl: 'assets/pics/sea_pic.png',
                          locationName: 'Nusa Pedina',
                          rating: 4.5,
                          locationSubtitle: 'Bali, Indonesia',
                        ),
                      ),
                    ),
                    ColorFiltered(
                      colorFilter: ColorFilter.matrix(
                        ColorFilterAddons.saturation(0.3),
                      ),
                      child: LocationView(
                        imageUrl: 'assets/pics/forest_pic.png',
                        locationName: 'Wachu Forest',
                        rating: 4.8,
                        locationSubtitle: 'river Danube, Austria',
                      ),
                    ),
                    ColorFiltered(
                      colorFilter: ColorFilter.matrix(
                        ColorFilterAddons.saturation(0.3),
                      ),
                      child: LocationView(
                        imageUrl: 'assets/pics/arura_pic.png',
                        locationName: 'Nusa Pedina',
                        rating: 4.5,
                        locationSubtitle: 'Bali, Indonesia',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Text(
                    'The Best Destinations',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                spacing: 10,
                children: [
                  CardView(
                    locationName: 'Western Desert',
                    imageUrl: 'assets/pics/desert_pic.png',
                    rating: '4.9',
                    bookingDate: '12 - 18 Jan 2021',
                    price: '450',
                    country: 'Egypt',
                  ),
                  CardView(
                    locationName: 'Rockey Mountain',
                    imageUrl: 'assets/pics/mountain_pic.png',
                    rating: '4.8',
                    bookingDate: '14 - 20 Jan 2021',
                    price: '200',
                    country: 'Canada',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    color: Color(0xff131316),
                    border: Border.all(color: Colors.grey.shade800, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  spacing: 12,
                  children: [
                    Image.asset(
                      'assets/icons/home.png',
                      width: 40,
                      height: 40,
                    ),
                    Image.asset(
                      'assets/icons/category.png',
                      width: 40,
                      height: 40,
                    ),
                    Image.asset(
                      'assets/icons/archive.png',
                      width: 40,
                      height: 40,
                    ),
                    Image.asset(
                      'assets/icons/profile-circle.png',
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
