import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:upi_app_ui/widgets/featureSection.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //  Color(0xff8E74EA)
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome!",
                          style: TextStyle(
                              color: Color(0xff8E74EA), fontSize: 20.0),
                        ),
                        Text("Jonathan Jack D".toUpperCase(),
                            style: TextStyle(
                                color: Color(0xff111111), fontSize: 12.0)),
                      ],
                    ),
                    IconButton(
                        icon: CircleAvatar(
                          backgroundColor: Color(0x8f957CEB),
                          radius: 28.0,
                          child: Image.asset('assets/man.png', width: 30.0),
                        ),
                        onPressed: () {})
                  ],
                ), // TODO: Top Header Row
                SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                      // color: Colors.black12,
                      border: Border.all(color: Color(0xffcfcfcf), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  padding: EdgeInsets.all(12.0),
                  height: 80.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                        'https://img.icons8.com/nolan/96/get-a-discount.png',
                        width: 35.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cashback Upto 60%",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text("For Scan & Pay, UPI Transcations*",
                              style: TextStyle(
                                  color: Color(0xff111111), fontSize: 11.0))
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xff8E74EA),
                      )
                    ],
                  ),
                ), // TODO: Cahsback And Offers Row

                //Todo: Wallet Money display
                SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff8E74EA),
                        Color(0xff957CEB),
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  padding: EdgeInsets.all(12.0),
                  height: 80.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Account Balance",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                          Text("₹ 50,071/-",
                              style: TextStyle(
                                  color: Color(0xfff6f6f6),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            color: Colors.white,
                          ),
                          Text("Add Money",
                              style: TextStyle(
                                  color: Color(0xffffffff), fontSize: 11.0))
                        ],
                      ),
                    ],
                  ),
                ), //Todo: Wallet Money display
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text(
                      "Recharge & Pay Bills",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),

                //Todo: Feature Section
                FeatureSection(),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    Text(
                      "Recent Transactions",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0x25957CEB),
                    radius: 24.0,
                    child: Image.asset('assets/happy.png', width: 30.0),
                  ),
                  trailing: Text("2,500/-"),
                  title: Text("Received From"),
                  subtitle: Text("Jonathan Verma"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0x25957CEB),
                    radius: 24.0,
                    child: Image.asset('assets/girl.png', width: 30.0),
                  ),
                  trailing: Text("7,200/-"),
                  title: Text("Received From"),
                  subtitle: Text("Priya Kate"),
                ),
                ListTile(
                  // enabled: false,
                  leading: CircleAvatar(
                    backgroundColor: Color(0x25957CEB),
                    radius: 24.0,
                    child: Image.asset('assets/old-man.png', width: 30.0),
                  ),
                  trailing: Text("6,850/-"),
                  title: Text("Paid To"),
                  subtitle: Text("Mat Cumin"),
                ),
                ListTile(
                  // enabled: false,
                  leading: CircleAvatar(
                    backgroundColor: Color(0x25957CEB),
                    radius: 24.0,
                    child: Image.asset('assets/user.png', width: 30.0),
                  ),
                  trailing: Text("6,850/-"),
                  title: Text("Received From"),
                  subtitle: Text("Paytm Inc."),
                ),
                /*  FittedBox(
                  child: Image.asset('assets/banner2.jpg'),
                  fit: BoxFit.fill,
                ), */
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/banner3.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
