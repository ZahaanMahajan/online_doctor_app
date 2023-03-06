import 'package:flutter/material.dart';
import '../../../size_config.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List categories = [
      // ["assets/images/physician.png", "Physician"],
      // ["assets/images/orthopedist.png", "Orthopedist"],
      // ["assets/images/skin.png", "Dermetologist"],
      // ["assets/images/head.png", "Ear, nose, Throat"],
      // ["assets/images/brain.png", "Phyciatrist"],
      // ["assets/images/more.png", "More"],

      ["assets/icons/stethoscope.png", "Physician"],
      ["assets/icons/skin.png", "Dermetologist"],
      ["assets/icons/bone.png", "Orthopedist"],
      ["assets/icons/more.png", "More"],
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          height: getProportionateScreenHeight(90),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (context, index) => CategoryCard(
              icon: categories[index][0],
              name: categories[index][1],
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.name,
    required this.onTap,
  });

  final String icon, name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: Column(
        children: [
          Flexible(
            child: Container(
              height: 62,
              width: 62,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                // color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  // BoxShadow(
                  //   color: Colors.grey,
                  //   blurRadius: 15.0,
                  //   offset: Offset(0.0, 0.75),
                  // ),
                ],
              ),
              child: Image.asset(icon),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
