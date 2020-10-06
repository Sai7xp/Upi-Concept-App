import 'package:flutter/material.dart';

class FeatureSection extends StatefulWidget {
  FeatureSection({Key key}) : super(key: key);

  @override
  _FeatureSectionState createState() => _FeatureSectionState();
}

class _FeatureSectionState extends State<FeatureSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          //Todo: First Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildFeature("user-interface", 28.0, "Prepaid Bills"),
              buildFeature("dth", 28.0, "DTH Bills"),
              buildFeature("bulb", 28.0, "Electricity"),
              buildFeature("connection", 28.0, "Broadband"),
            ],
          ),
          SizedBox(
            height: 28.0,
          ),
          // Todo: Secons Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildFeature("car-repair", 28.0, "Car Insurance"),
              buildFeature("credit-card", 28.0, "Credit Card"),
              buildFeature("picnic", 28.0, "Big Basket"),
              buildFeature("menu", 22.0, "More"),
            ],
          ),
        ],
      ),
    );
  }

  Column buildFeature(String icon, double iconWidth, String featureName) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0x20957CEB),
          radius: 28.0,
          child: Image.asset('assets/$icon.png', width: iconWidth),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(featureName,
            style: TextStyle(color: Color(0xff111111), fontSize: 13.0))
      ],
    );
  }
}
