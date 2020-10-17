import 'package:flutter/material.dart';
import 'package:order_app/OrderConfirmPage.dart';
import 'package:order_app/StyleScheme.dart';

class PickUpTimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pickUpTimePage(),
    );
  }
}

class pickUpTimePage extends StatefulWidget {
  @override
  _pickUpTimePageState createState() => _pickUpTimePageState();
}

class _pickUpTimePageState extends State<pickUpTimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Select DATE & TIME",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pick up Date",
              style: headingStyle,
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dateWidget("wed", "07 Aug", true),
                  dateWidget("Thu", "08 Aug", false),
                  dateWidget("Fri", "09 Aug", false),
                  dateWidget("Sat", "10 Aug", false),
                  dateWidget("Mon", "11 Aug", false),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Pick up Time",
              style: headingStyle,
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("12:00 PM to 02:00 PM", true),
                  timeWidget("02:00 PM to 04:00 PM", false),
                  timeWidget("10:00 PM to 06:00 PM", false),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Delivery Date",
              style: headingStyle,
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dateWidget("wed", "09 Aug", true),
                  dateWidget("Thu", "10 Aug", false),
                  dateWidget("Fri", "11 Aug", false),
                  dateWidget("Sat", "12 Aug", false),
                  dateWidget("Mon", "13 Aug", false),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Delivery Time",
              style: headingStyle,
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("12:00 PM to 02:00 PM", true),
                  timeWidget("02:00 PM to 04:00 PM", false),
                  timeWidget("10:00 PM to 06:00 PM", false),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Amount Payable",
                  style: headingStyle,
                ),
                Text(
                  "\$225",
                  style: headingStyle,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderConfirmPage()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  gradient: gradientStyle,
                ),
                child: Center(
                  child: Text(
                    "PLACE ORDER",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container timeWidget(String time, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: (isActive) ? Colors.orange : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: contentStyle.copyWith(
                color: (isActive) ? Colors.white : Colors.black),
          )
        ],
      ),
    );
  }

  Container dateWidget(String day, String date, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: (isActive) ? Colors.orange : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: contentStyle.copyWith(
              color: (isActive) ? Colors.white : Colors.black,
              fontSize: 16,
            ),
          ),
          Text(
            date,
            style: contentStyle.copyWith(
              color: (isActive) ? Colors.white : Colors.black,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
