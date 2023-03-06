import 'package:flutter/material.dart';

class ExpansionCard extends StatelessWidget {
  const ExpansionCard({
    Key? key,
    required this.record,
    required this.list,
    required this.icon,
  }) : super(key: key);

  final String? record;
  final List? list;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        record!,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      leading: Icon(icon, color: Colors.black),
      backgroundColor: Colors.white,
      collapsedBackgroundColor: Colors.white,
      children: [
        for (var element in list!)
          ListTile(
            title: Text(
              element,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
            subtitle: Text(
              element,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade800,
              ),
            ),
          ),
      ],
    );
  }
}
