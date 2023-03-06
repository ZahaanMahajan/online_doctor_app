import 'package:flutter/material.dart';
import 'package:online_doctor_app/models/doctor.dart';

class DoctorDescription extends StatefulWidget {
  const DoctorDescription({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  final Doctor doctor;

  @override
  State<DoctorDescription> createState() => _DoctorDescriptionState();
}

class _DoctorDescriptionState extends State<DoctorDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            widget.doctor.name!,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          child: Text(
            widget.doctor.title!,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            widget.doctor.description!,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey.shade700,
            ),
          ),
        ),
      ],
    );
  }
}
