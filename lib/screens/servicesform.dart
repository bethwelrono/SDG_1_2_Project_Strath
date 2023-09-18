import 'package:flutter/material.dart';

class ServicesForm extends StatefulWidget {
  const ServicesForm({super.key});
  @override
  State<ServicesForm> createState() => _ServicesFormState();
}

class _ServicesFormState extends State<ServicesForm> {
  // Define selectedValue and dropdownItems here
  String? selectedValue; // Initialize with the default selected value if needed
  List<String> dropdownItems = [
    'Loam Soil',
    'Clay soil',
    'Sand soil',
    'Upload Photo'
  ];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      // print('Form is Valid: Email: $_email, password: $_password');
      return true;
    } else {
      // ignore: avoid_print
      print('Form is not valid. Please fill all fields.');
      return false;
    }
  }

  Future<void> validateAndSubmit() async {
    if (validateAndSave()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        // Defining form fields and validation here
        // For example: TextFormField, DropdownButtonFormField, etc.
        // Wrapping form fields with appropriate InputDecorations and validators.
        key: _formKey, // Form key for validation
        child: Column(
          children: [
            // Other form fields
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Full Name:',
                  labelStyle: CustomTextStyle.labelTextStyle,
                  hintStyle: CustomTextStyle.hintTextStyle),
              validator: (value) {
                // if (value.isEmpty) {
                //   return 'Please enter your name.';
                // }
                // return null;
              },
              onSaved: (value) {
                // Save the input value
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email:',
                  hintText: '(optional)',
                  labelStyle: CustomTextStyle.labelTextStyle,
                  hintStyle: CustomTextStyle.hintTextStyle),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Phone Number:',
                  hintText: 'e.g. +254723087181',
                  labelStyle: CustomTextStyle.labelTextStyle,
                  hintStyle: CustomTextStyle.hintTextStyle),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'ID Number:',
                  labelStyle: CustomTextStyle.labelTextStyle,
                  hintStyle: CustomTextStyle.hintTextStyle,
                  hintText: 'e.g. 37152239'),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Country:',
                  hintText: 'e.g. Kenya',
                  labelStyle: CustomTextStyle.labelTextStyle,
                  hintStyle: CustomTextStyle.hintTextStyle),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Province:',
                  hintText: 'e.g. Eastern',
                  labelStyle: CustomTextStyle.labelTextStyle,
                  hintStyle: CustomTextStyle.hintTextStyle),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'County:',
                  hintText: 'e.g. Kitui',
                  labelStyle: CustomTextStyle.labelTextStyle,
                  hintStyle: CustomTextStyle.hintTextStyle),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Farm Size:',
                  hintText: 'e.g. 2 acres',
                  labelStyle: CustomTextStyle.labelTextStyle,
                  hintStyle: CustomTextStyle.hintTextStyle),
            ),
            DropdownButtonFormField<String>(
              value: selectedValue,
              items: dropdownItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue;
                });
              },
              decoration: InputDecoration(
                  labelText: 'Soil Type',
                  labelStyle: CustomTextStyle.labelTextStyle,
                  hintStyle: CustomTextStyle.hintTextStyle
                  // Other input decoration properties
                  ),
            ),

            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Farm Location:',
                  hintText: 'Turn On Location',
                  labelStyle: CustomTextStyle.labelTextStyle,
                  hintStyle: CustomTextStyle.hintTextStyle),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Create Password:',
                  hintText: 'Strong and memorable',
                  labelStyle: CustomTextStyle.labelTextStyle,
                  hintStyle: CustomTextStyle.hintTextStyle),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: const Text('Confirm New Password:'),
                labelStyle: CustomTextStyle.labelTextStyle,
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      Colors.amberAccent, // Text color when button is enabled
                  elevation: 5, // Button elevation (shadow)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Form is valid, submit data to the backend
                  // Send HTTP request to your backend with form data
                }
              },
              child: Text(
                'Submit Form',
                style: CustomTextStyle.labelTextStyle,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class CustomTextStyle {
  Color myColor = const Color(0xFF461F00);

  static TextStyle labelTextStyle = const TextStyle(
    color: Colors.white,
    fontFamily: 'Inter',
    fontSize: 24,
    fontWeight: FontWeight.normal,
    backgroundColor: Color(0xFF461F00),
    // You can apply other text style properties here as needed
  );
  static TextStyle hintTextStyle = const TextStyle(
    color: Colors.grey,
    fontSize: 14,
    // Add other properties for your hint text style here
  );
}
