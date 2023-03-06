import '../../../models/record_attributes.dart';
import '../../../size_config.dart';
import 'package:flutter/material.dart';
import 'expansion_card.dart';
import 'header_text.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderText(title: "Records"),

              // Expansion Tiles
              Padding(
                padding: EdgeInsets.only(top: getProportionateScreenHeight(24)),
                child: Column(
                  children: [
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.85,
                      child: ListView.builder(
                        itemCount: about.length,
                        itemBuilder: (context, index) {
                          return ExpansionCard(
                            record: records[index],
                            list: about[index],
                            icon: icons[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
