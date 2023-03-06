import 'package:flutter/material.dart';
import '../../../models/doctor.dart';

class DoctorImage extends StatefulWidget {
  const DoctorImage({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  final Doctor doctor;

  @override
  State<DoctorImage> createState() => _DoctorImageState();
}

class _DoctorImageState extends State<DoctorImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 240,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.doctor.images!),
          ),
        ),
      ],
    );
  }
}
