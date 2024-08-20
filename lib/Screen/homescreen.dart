
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widgets/experienceWidget.dart';
import '../Widgets/projectWidget.dart';
import '../Widgets/skillwidget.dart';
class HomeScreen extends StatelessWidget {
  final String linkedInUrl = 'https://www.linkedin.com/in/navneet-sheoran/';
  final String githubUrl = 'https://github.com/navneetsheoran07';

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images.jpeg'), // Ensure this path is correct
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop),
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/Navneet.jpg'), // Ensure this path is correct
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Hello, I\'m Navneet Sheoran',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '''Passionate Android & Flutter Developer and Trainer with a strong background
                in designing and implementing mobile applications. Bringing over 2+ years of
                hands-on development experience along with a proven ability to train and
                mentor junior developers. Committed to staying current with the latest tech
                nologies and fostering a collaborative learning environment.''',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Skills',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent,
                ),
              ),
              SizedBox(height: 10),
              SkillWidget(skill: 'Flutter'),
              SkillWidget(skill: 'Android'),
              SkillWidget(skill: 'Dart'),
              SkillWidget(skill: 'Kotlin'),
              SkillWidget(skill: 'Firebase'),
              SkillWidget(skill: 'Apis'),
              SkillWidget(skill: 'Advanced java'),
              SkillWidget(skill: 'hibernate'),
              SkillWidget(skill: 'Mysql'),
              SkillWidget(skill: 'spring'),
              SkillWidget(skill: 'Github'),
              SkillWidget(skill: 'Jsp'),
              SkillWidget(skill: 'JQuery'),
              SkillWidget(skill: 'Servlet'),


              SizedBox(height: 20),
              Text(
                'Experience',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent,
                ),
              ),
              SizedBox(height: 10),
              ExperienceWidget(
                company: 'ThinkNext technologies private limited',
                duration: 'May 2022 - Present',
                description:
                'Working as a Flutter developer, responsible for designing, building, and maintaining efficient, reusable, and reliable Flutter code.',
              ),
              SizedBox(height: 20),
              Text(
                'Projects',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent,
                ),
              ),
              SizedBox(height: 10),
              ProjectWidget(
                images: [
                  'assets/food1.jpg',
                  'assets/food2.jpg',
                  'assets/food3.jpg',
                ],
                title: 'Project 1: Food Delivery App',
                description:
                'Developed a full-featured food delivery app using Android, complete with real-time tracking, payment integration, and user authentication.',
              ),
              ProjectWidget(
                images: [
                  'assets/ecom1.jpg',
                  'assets/ecom2.jpg',
                  'assets/ecom3.jpg',
                ],
                title: 'Project 2: E-commerce Platform',
                description:
                'Built a scalable e-commerce platform using Flutter and API, including product listings, shopping cart, and order management.',
              ),
              ProjectWidget(
                images: [
                  'assets/socialmedia1.jpg',
                  'assets/socailmedia2.jpg',
                  'assets/socialmedia3.jpg',
                ],
                title: 'Project 3: Social Media App',
                description:
                'Created a social media app with features to download Instagram, Facebook, and Twitter reels, stories, and WhatsApp Status.',
              ),
              SizedBox(height: 20),
              Text(
                'Student Reviews',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent,
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Image.asset('assets/review1.png'), // Ensure this path is correct
                  SizedBox(height: 10),
                  Image.asset('assets/review2.png'), // Ensure this path is correct
                  SizedBox(height: 10),
                  Image.asset('assets/review3.png'), // Ensure this path is correct
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Contact',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Email: dev.navneet.chaudhary@gmail.com',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Text(
                'Phone: +91 8801700088',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Social Links',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.link, color: Colors.black),
                    onPressed: () => _launchURL(linkedInUrl),
                  ), SizedBox(width: 10),
                  Text(
                    'LinkedIn',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Icon(Icons.code, color: Colors.black),
                    onPressed: () => _launchURL(githubUrl),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'GitHub',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
