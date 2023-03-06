import 'package:flutter/material.dart';
import '../../models/doctor.dart';

class DetialPage extends StatelessWidget {
  const DetialPage({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Center(
        child: Text(doctor.title!),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      title: const Text(
        "About Doctor",
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
    );
  }
}
