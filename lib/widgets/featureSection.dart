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
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0x20957CEB),
                    radius: 28.0,
                    child: Image.asset('assets/phone.png', width: 28.0),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text("Prepaid Bills",
                      style:
                          TextStyle(color: Color(0xff111111), fontSize: 13.0))
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0x25957CEB),
                    radius: 28.0,
                    child: Image.asset('assets/dth.png', width: 28.0),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text("DTH Bills",
                      style:
                          TextStyle(color: Color(0xff111111), fontSize: 13.0))
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0x25957CEB),
                    radius: 28.0,
                    child: Image.asset('assets/bulb.png', width: 28.0),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text("Electricity",
                      style:
                          TextStyle(color: Color(0xff111111), fontSize: 13.0))
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0x20957CEB),
                    radius: 28.0,
                    child: Image.asset('assets/connection.png', width: 28.0),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text("Broadband",
                      style:
                          TextStyle(color: Color(0xff111111), fontSize: 13.0))
                ],
              ),
            ],
          ),
          SizedBox(
            height: 28.0,
          ),
          // Todo: Secons Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0x20957CEB),
                    radius: 28.0,
                    child: Image.asset('assets/car-repair.png', width: 28.0),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text("Car Insurance",
                      style:
                          TextStyle(color: Color(0xff111111), fontSize: 13.0))
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0x25957CEB),
                    radius: 28.0,
                    child: Image.asset('assets/credit-card.png', width: 28.0),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text("Credit Card",
                      style:
                          TextStyle(color: Color(0xff111111), fontSize: 13.0))
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0x25957CEB),
                    radius: 28.0,
                    child: Image.asset('assets/picnic.png', width: 28.0),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text("Big Basket",
                      style:
                          TextStyle(color: Color(0xff111111), fontSize: 13.0))
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0x20957CEB),
                    radius: 28.0,
                    child: Image.asset('assets/menu.png', width: 26.0),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text("More",
                      style:
                          TextStyle(color: Color(0xff111111), fontSize: 13.0))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
