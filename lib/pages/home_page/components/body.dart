import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'features.dart';
import 'header_text_with_icon.dart';
import 'popular_doctors.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: getProportionateScreenHeight(34),
            right: getProportionateScreenHeight(18),
            left: getProportionateScreenWidth(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header Text wiht Icon
              const HeaderTextWithIcon(
                greeting: "Hi User",
                text: "What do you want to do today?",
              ),

              const SizedBox(height: 10),

              Divider(thickness: 1, color: Colors.grey[300]),
              SizedBox(height: getProportionateScreenHeight(10)),

              // Features with Appiointment and video call
              const Features(),
              SizedBox(height: getProportionateScreenHeight(20)),

              // Departments
              const Categories(),
              SizedBox(height: getProportionateScreenHeight(20)),

              // Popular Doctors List
              const PopularDoctors(),
            ],
          ),
        ),
      ),
    );
  }
}
