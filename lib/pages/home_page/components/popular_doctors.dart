import 'package:flutter/material.dart';
import '../../../models/doctor.dart';
import '../../../size_config.dart';
import '../../detail_page/detail_page.dart';

class PopularDoctors extends StatelessWidget {
  const PopularDoctors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Popular Doctors",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                doctorList.length,
                (index) => DoctorCard(
                  doctor: doctorList[index],
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetialPage(
                        doctor: doctorList[index],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key,
    required this.doctor,
    required this.onTap,
  }) : super(key: key);

  final Doctor doctor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AspectRatio(
                aspectRatio: 1.1,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1D07A9).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    doctor.images!,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                doctor.title!,
                style: const TextStyle(
                  color: Colors.black87,
                ),
                maxLines: 2,
              ),
              Text(
                doctor.name!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
            ],
          ),
        ),
      ),
    );
  }
}
