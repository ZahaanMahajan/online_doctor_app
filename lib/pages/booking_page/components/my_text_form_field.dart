import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(20),
        horizontal: getProportionateScreenWidth(30),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Form
              buildFullName(),
              SizedBox(height: getProportionateScreenHeight(30)),
              buildProblemState(),
              SizedBox(height: getProportionateScreenHeight(30)),
              buildPhoneNumber(),
              SizedBox(height: getProportionateScreenHeight(30)),
              buildAddress(),
              SizedBox(height: getProportionateScreenHeight(30)),

              // Continue Button
              bookingButon(),
              SizedBox(height: getProportionateScreenHeight(20)),

              const Text(
                "By continuing, you will confirm that you"
                "\nagree with our Terms and Conditions.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell bookingButon() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: getProportionateScreenHeight(60),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: const Color(0xFF1D07A9)),
        child: const Center(
          child: Text(
            "Book Appointment",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildPhoneNumber() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildFullName() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Full Name",
        hintText: "Enter your full name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildProblemState() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Problem",
        hintText: "State your problem",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildAddress() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: const BorderSide(color: kTextColor),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: const BorderSide(color: kTextColor),
        gapPadding: 10,
      ),
    );
  }
}
