// import 'package:flutter/material.dart';

// class AboutPage extends StatelessWidget {
//   const AboutPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Colors.greenAccent.withOpacity(0.5),
//       //   centerTitle: true,
//       //   title:
//       // ),
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Opacity(
//               opacity: 0.5,
//               child: Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   width: 1454,
//                   height: 1175,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image: const DecorationImage(
//                           image: AssetImage('images/tractor1.jpg'))),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: Container(
//                 width: 566,
//                 height: 97,
//                 child: const Text(
//                   'About Us',
//                   style: TextStyle(
//                       color: Colors.green,
//                       backgroundColor: Colors.yellowAccent,
//                       fontFamily: 'IndieFlower',
//                       fontSize: 60,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 100,
//               left: 200,
//               //start of main column.
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                       width: 1170,
//                       height: 344,
//                       decoration: BoxDecoration(
//                         color: Colors.green.withOpacity(0.6),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           'We are the turn-to revolutionary website, where we dedicate time and resources to transforming the world of farming through the power of knowledge and connections. Our mission is to empower farmers by providing them with the precise information they need on specific crops, regions, and market conditions to achieve optimal production and gain instant access to lucrative markets for their produce. Through our platform, farmers can connect with expert partners in planting and distribution, ensuring efficient and seamless operations.With a comprehensive range of services, including agriculture statistics, testimonials, and additional resources, we are committed to supporting farmers in every aspect of their journey towards sustainable and prosperous farming practices. Join us today and be a part of the future of aware farming.',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'Itim',
//                               fontSize: 24,
//                               fontWeight: FontWeight.normal),
//                         ),
//                       )),
//                   //2nd container with the circular containers.
//                   Container(
//                     width: 984,
//                     height: 661,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         //start of the first main column of the row
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Container(
//                               width: 365,
//                               height: 325,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Colors.green,
//                               ),
//                               child: const Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Text(
//                                     'AgriStats',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontFamily: 'Itim',
//                                         fontSize: 40,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                   Text(
//                                     'Food Crops',
//                                     style: TextStyle(
//                                         color: Colors.yellowAccent,
//                                         fontFamily: 'Itim',
//                                         fontSize: 24,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                   Text(
//                                     'Cash Crops',
//                                     style: TextStyle(
//                                         color: Colors.yellowAccent,
//                                         fontFamily: 'Itim',
//                                         fontSize: 24,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                   Text(
//                                     'Regions',
//                                     style: TextStyle(
//                                         color: Colors.yellowAccent,
//                                         fontFamily: 'Itim',
//                                         fontSize: 24,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                   Text(
//                                     'Soil Types',
//                                     style: TextStyle(
//                                         color: Colors.yellowAccent,
//                                         fontFamily: 'Itim',
//                                         fontSize: 24,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                   Text(
//                                     'Seasons',
//                                     style: TextStyle(
//                                         color: Colors.yellowAccent,
//                                         fontFamily: 'Itim',
//                                         fontSize: 24,
//                                         fontWeight: FontWeight.normal),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             //2nd container of the first column in the row: rep the Testimonials page which
//                             //is clickable and leads to the Testimonials page
//                             Container(
//                               width: 365,
//                               height: 325,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Colors.green,
//                               ),
//                               child: const Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Text(
//                                     'Testimonials',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontFamily: 'Itim',
//                                         fontSize: 40,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                   Text(
//                                     'Attend to the success stories from farmers across the world. FarmAware is not all about talk and numbers. We have demonstrated the power of aware farming by tangible food products and real cash in pockets of farmers.',
//                                     overflow: TextOverflow.clip,
//                                     style: TextStyle(
//                                         color: Colors.yellowAccent,
//                                         fontFamily: 'Itim',
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ), //end of first column of the main row

//                         Column(
//                           //start of 2nd main column of the row
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Container(
//                               width: 365,
//                               height: 325,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Colors.green,
//                               ),
//                               child: const Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Text(
//                                     'Services',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontFamily: 'Itim',
//                                         fontSize: 40,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                   Text(
//                                     'We provide advisory services to farmers across the region for optimum production. As a farmer,receive specific insights based on the location of your farm, the crop of your choice and the potential performance in the food and cashmarket. ',
//                                     style: TextStyle(
//                                         color: Colors.yellowAccent,
//                                         fontFamily: 'Itim',
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               width: 365,
//                               height: 325,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Colors.green,
//                               ),
//                               child: const Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Text(
//                                     'Blogs',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontFamily: 'Itim',
//                                         fontSize: 40,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                   Text(
//                                     'Stay updated on trends in the Agronomy sector with our weekly articles from experts in the industry.  ',
//                                     style: TextStyle(
//                                         color: Colors.yellowAccent,
//                                         fontFamily: 'Itim',
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                   Text(
//                                     'Rightfully interpreted data gives you a headstart in the dynamic field of agriculture and business. ',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontFamily: 'Itim',
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.normal),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ) //end of 2nd column of the row.
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: screenWidth, // Use screen width
                  height: screenWidth * 0.8, // Adjust the aspect ratio as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('images/tractor1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: screenWidth * 0.4, // Adjust as needed
                height: screenWidth * 0.1, // Adjust as needed
                child: const Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.green,
                    backgroundColor: Colors.yellowAccent,
                    fontFamily: 'IndieFlower',
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenWidth * 0.1, // Adjust as needed
              left: screenWidth * 0.13, // Adjust as needed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.8, // Use screen width
                    // Height can be determined by the content, no need for a fixed height
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'We are the turn-to revolutionary website, where we dedicate time and resources to transforming the world of farming through the power of knowledge and connections. Our mission is to empower farmers by providing them with the precise information they need on specific crops, regions, and market conditions to achieve optimal production and gain instant access to lucrative markets for their produce. Through our platform, farmers can connect with expert partners in planting and distribution, ensuring efficient and seamless operations. With a comprehensive range of services, including agriculture statistics, testimonials, and additional resources, we are committed to supporting farmers in every aspect of their journey towards sustainable and prosperous farming practices. Join us today and be a part of the future of aware farming.',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Itim',
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  // 2nd container with the circular containers.
                  Container(
                    width: screenWidth * 0.9, // Use screen width
                    // Height can be determined by the content, no need for a fixed height
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Start of the first main column of the row
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: screenWidth * 0.3, // Adjust as needed
                              // Height can be determined by the content, no need for a fixed height
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'AgriStats',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Itim',
                                      fontSize: 40,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    'Food Crops',
                                    style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontFamily: 'Itim',
                                      fontSize: 24,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    'Cash Crops',
                                    style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontFamily: 'Itim',
                                      fontSize: 24,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    'Regions',
                                    style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontFamily: 'Itim',
                                      fontSize: 24,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    'Soil Types',
                                    style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontFamily: 'Itim',
                                      fontSize: 24,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    'Seasons',
                                    style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontFamily: 'Itim',
                                      fontSize: 24,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // 2nd container of the first column in the row: represents the Testimonials page
                            Container(
                              width: screenWidth * 0.3, // Adjust as needed
                              // Height can be determined by the content, no need for a fixed height
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Testimonials',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Itim',
                                      fontSize: 40,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    'Attend to the success stories from farmers across the world. FarmAware is not all about talk and numbers. We have demonstrated the power of aware farming by tangible food products and real cash in pockets of farmers.',
                                    overflow:TextOverflow.clip,
                                    style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontFamily: 'Itim',
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ), 
                                     Column(
                          // Start of the 2nd main column of the row
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: screenWidth * 0.3, // Adjust as needed
                              // Height can be determined by the content, no need for a fixed height
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Services',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Itim',
                                      fontSize: 40,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    'We provide advisory services to farmers across the region for optimum production. As a farmer, receive specific insights based on the location of your farm, the crop of your choice and the potential performance in the food and cash market. ',
                                    style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontFamily: 'Itim',
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.3, // Adjust as needed
                              // Height can be determined by the content, no need for a fixed height
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Blogs',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Itim',
                                      fontSize: 40,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    'Stay updated on trends in the Agronomy sector with our weekly articles from experts in the industry.  ',
                                    style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontFamily: 'Itim',
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    'Rightfully interpreted data gives you a headstart in the dynamic field of agriculture and business. ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Itim',
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ), // End of the 2nd column of the row.
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
