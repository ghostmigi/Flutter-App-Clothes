import 'package:flutter/material.dart';
import 'OrderPage.dart';
import 'StyleScheme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
          "IRON YARD",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("BLESS THIS MESS", style: headingStyle),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "We pick your clothes and give \nthem a fresh look",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 160,
                      width: 140,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/images/bannerImg.png'))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("SERVICES", style: headingStyle),
            Container(
              height: 140,
              color: Color(0xfff1ffff),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 140,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/images/servicesImg.png'))),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "IRON ONLY",
                            style: headingStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: openOrderPage,
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: gradientStyle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Text(
                                "Place Order",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "AVAILABILITY ",
                        style: contentStyle,
                      ),
                      Text(
                        "AVAILABLE",
                        style: contentStyle.copyWith(color: Colors.blue),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("We are open from 7.00 am to 8.00 pm")
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CHECK THE ESTIMATION",
                    style: contentStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "You can check time extimation with price",
                    style: contentStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: gradientStyle, shape: BoxShape.circle),
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 20,
        onTap: (value) => {openRelevantPage(value)},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            title: Text("Track Order"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            title: Text("My Orders"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }

  void openRelevantPage(int pageId) {
    print(pageId);
  }

  void openOrderPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OrderPage()));
  }
}