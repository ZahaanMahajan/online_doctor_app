import 'package:flutter/material.dart';
import 'package:online_doctor_app/size_config.dart';
import 'my_text_form_field.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(12),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(24),
                ),
                child: Text(
                  "Book an appointment with the best \n"
                  "doctors for your health need.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade900,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(12),
                  vertical: getProportionateScreenHeight(24),
                ),
                height: SizeConfig.screenHeight * 0.7,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const MyTextFormField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
