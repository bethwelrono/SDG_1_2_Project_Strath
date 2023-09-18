// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ServicesPage extends StatefulWidget {
//   @override
//   _ServicesPageState createState() => _ServicesPageState();
// }

// class _ServicesPageState extends State<ServicesPage> {
//   double paymentAmount = 0.0;

//   void makePayment() async {
//     final paymentGatewayURL = 'YOUR_PAYMENT_GATEWAY_URL'; // Replace with your gateway's URL
//     final apiKey = 'YOUR_API_KEY'; // Replace with your API key

//     final response = await http.post(
//       Uri.parse(paymentGatewayURL),
//       headers: {
//         'Authorization': 'Bearer $apiKey', // Include any required headers
//       },
//       body: {
//         'amount': paymentAmount.toString(),
//         // Add other required parameters for your gateway
//       },
//     );

//     if (response.statusCode == 200) {
//       // Payment was successful, handle the response as needed
//       // You might want to show a success message, navigate to a confirmation page, etc.
//     } else {
//       // Payment failed or encountered an error
//       // Handle the error and provide feedback to the user
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Services Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(labelText: 'Payment Amount'),
//               onChanged: (value) {
//                 setState(() {
//                   paymentAmount = double.tryParse(value) ?? 0.0;
//                 });
//               },
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 makePayment();
//               },
//               child: Text('Make Payment'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
