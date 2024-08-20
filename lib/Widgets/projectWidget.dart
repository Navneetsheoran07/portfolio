import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProjectWidget extends StatelessWidget {
  final List<String> images;
  final String title;
  final String description;

  ProjectWidget({
    required this.images,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.black, // Black text color for better readability
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 150, // Fixed height for images
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: images.map((image) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: SizedBox(
                  width: 150, // Fixed width for images
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}