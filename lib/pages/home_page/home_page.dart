import 'package:flutter/material.dart';
import 'package:online_doctor_app/size_config.dart';
import 'components/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //For responsive layout
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
