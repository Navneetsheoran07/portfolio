
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SkillWidget extends StatelessWidget {
  final String skill;

  SkillWidget({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.check, color: Colors.cyanAccent),
          SizedBox(width: 10),
          Text(
            skill,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}