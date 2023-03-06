// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:online_doctor_app/pages/detail_page/components/doctor_description.dart';
import 'package:online_doctor_app/pages/detail_page/components/doctor_image.dart';
import 'package:online_doctor_app/size_config.dart';
import '../../../models/doctor.dart';
import '../../../widgets/default_button.dart';
import 'top_rounded_corners.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.doctor,
  });
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          DoctorImage(doctor: doctor),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                DoctorDescription(doctor: doctor),
                SizedBox(height: getProportionateScreenHeight(20)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: DefaultButton(
                    text: "Book Appointment",
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
