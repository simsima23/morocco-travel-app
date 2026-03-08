import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/city.dart';
import '../data/morocco_data.dart';
import 'city_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<City> cities = getMoroccoCities();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF8F5),
      appBar: AppBar(
        title: Text(
          'Discover Morocco',
          style: GoogleFonts.newsreader(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 0.3,
          ),
        ),
        backgroundColor:Colors.white,
        elevation: 0,
        toolbarHeight: 72,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        itemCount: cities.length,
        itemBuilder: (context, index) {
          final city = cities[index];
          return CityCard(city: city);
        },
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  final City city;

  CityCard({required this.city});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CityDetailScreen(city: city),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 260,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // City image
              Image.asset(
                city.imagePath,
                fit: BoxFit.cover,
              ),
              // Dark gradient overlay
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.25),
                      Colors.black.withOpacity(0.72),
                    ],
                    stops: [0.3, 0.6, 1.0],
                  ),
                ),
              ),
              // Text overlay at bottom
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        city.name,
                        style: GoogleFonts.newsreader(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          height: 1.1,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        city.description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.85),
                          height: 1.4,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white.withOpacity(0.4)),
                        ),
                        child: Text(
                          '${city.activities.length} experiences',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}