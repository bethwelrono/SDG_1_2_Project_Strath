import 'package:farm_aware/screens/homepage.dart';
import 'package:farm_aware/screens/about.dart';
import 'package:farm_aware/screens/services.dart';
import 'package:farm_aware/screens/agristats.dart';
import 'package:farm_aware/screens/servicesform.dart';
import 'package:farm_aware/screens/testimonials.dart';
import 'package:farm_aware/screens/blogs.dart';
import 'package:farm_aware/screens/chatSection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/Services': (context) => const ServicesPage(),
        '/About': (context) => const AboutPage(),
        '/Stats': (context) => const StatsPage(),
        '/Form': (context) => const ServicesForm(),
        '/Testimonials': (context) => const TestimonialsPage(), 
        '/Blogs': (context) => const BlogsPage(), 
        '/Chats': (context) => const ChatsPage(), 
         // '/second': (context) => SecondScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
