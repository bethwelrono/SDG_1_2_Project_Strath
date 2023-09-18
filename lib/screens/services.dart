import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});
  @override
  State<ServicesPage> createState() => ServicesPageState();
}

class ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Background Photo with Opacity
        Opacity(
          opacity: 0.5, // Adjust the opacity as needed
          child: Container(
            width: 1469,
            height: 1994,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/tractor1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        // Page Content
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100), // Adjust the spacing from the top as needed

            // Title
            const SizedBox(
              width: 407,
              height: 97,
              child: Text(
                'Services',
                style: TextStyle(
                    fontFamily: 'IndieFlower',
                    fontSize: 54,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    backgroundColor: Colors.yellowAccent),
              ),
            ),

           const SizedBox(height: 20), // Add spacing between title and description

            // Description
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'This page is for farmers who are interested in receiving maximum produce from their farms and attaining the best market prices '
                'Fill out this form to enable FarmAware to provide you with customservices :',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 30),

            OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Form');
                },
                child: const Text(
                    'Apply For Customized Services Here')) //This button leads you to the services form
          ],
        ),
      ],
    ));
  }
}
