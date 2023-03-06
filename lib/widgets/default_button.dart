import 'package:flutter/material.dart';
import 'package:online_doctor_app/constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: getProportionateScreenHeight(60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
