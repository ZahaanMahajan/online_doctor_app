import 'package:flutter/material.dart';
import '../../../size_config.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getProportionateScreenHeight(20),
        left: getProportionateScreenWidth(24),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: getProportionateScreenHeight(28),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
