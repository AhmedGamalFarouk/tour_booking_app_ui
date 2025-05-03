import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/symbols.dart';

class LocationView extends StatelessWidget {
  const LocationView({
    super.key,
    required this.imageUrl,
    required this.rating,
    required this.locationName,
    required this.locationSubtitle,
  });

  final String imageUrl;
  final double rating;
  final String locationName;
  final String locationSubtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8.0,
            right: 8.0,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 14.0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  locationName,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Symbols.location_on,
                      color: Colors.white70,
                      size: 15,
                    ),
                    Text(
                      locationSubtitle,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
