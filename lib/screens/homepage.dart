import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: buildDrawer(context),
      body: buildBody(context),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        'FarmAware HomePage',
        style: TextStyle(color: Color.fromARGB(255, 255, 163, 25)),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 16, 204, 22),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          buildDrawerItem(context, 'Testimonials', '/Testimonials'),
          buildDrawerItem(context, 'Blogs', '/Blogs'),
          buildDrawerItem(context, 'Chat', '/Chats'),
        ],
      ),
    );
  }

  ListTile buildDrawerItem(BuildContext context, String title, String route) {
    return ListTile(
      leading: const Icon(Icons.comment),
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }

  Widget buildBody(BuildContext context) {
    return Stack(
      children: [
        buildBackgroundImage(),
        buildCenterContent(context),
      ],
    );
  }

  Widget buildBackgroundImage() {
    return Opacity(
      opacity: 0.5,
      child: Container(
        width: 1600,
        height: 1140,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/farm2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget buildCenterContent(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 1140,
              height: 140,
              padding: const EdgeInsets.all(
                16.0,
              ), // Padding values for top, right, bottom, and left, respectively.
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: const DecorationImage(
                  image: AssetImage('images/Harvest1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/About');
                      },
                      child: const Text(
                        'About Us',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'IndieFlower',
                            fontSize: 34,
                            fontWeight: FontWeight.normal),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Stats');
                      },
                      child: const Text(
                        'Stats',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'IndieFlower',
                            fontSize: 34,
                            fontWeight: FontWeight.normal),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Services');
                      },
                      child: const Text(
                        'Services',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'IndieFlower',
                            fontSize: 34,
                            fontWeight: FontWeight.normal),
                      )),
                ],
              ),
            ),
            Opacity(
              opacity: 0.8,
              child: Container(
                width: 1140,
                height: 673,
                //bg image
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: const DecorationImage(
                      image: AssetImage('images/shiny_farm.jpg'),
                      fit: BoxFit.cover,
                    )),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 861,
                      height: 216,
                      child: const Text(
                        'Every region worldwide has the potential to produce food regardless of the climatic conditions.A simple study of the right crops is the main ingredient to success.',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ), // For bottom
                    Container(
                      width: 1070,
                      height: 296,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.green.withOpacity(0.5),
                      ),
                      child: const Center(
                        child: Text(
                          'At FarmAware, we empower farmers from all walks of life to continually acheive maximum production at all times of the year.',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 32,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 974,
              height: 186,
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                  'We also understand that each successful harvest requires a ready market. Therefore, we have optimized our services to connect farmers to the ever-hungry population.',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'IndieFlower',
                      fontSize: 36,
                      fontWeight: FontWeight.normal)),
            ),
          ],
        ),
      ),
    );
  }
}

// Define AboutPage, StatsPage, ServicesPage similarly...
