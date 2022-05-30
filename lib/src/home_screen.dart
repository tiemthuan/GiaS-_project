import 'package:badminton_yard_booking_app/src/ultilities.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_text_size.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homeScreen';
  final BuildContext? context;

  const HomeScreen(this.context,{Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int selectedCatIndex = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var fullHeight = MediaQuery.of(context).size.height;
    final double itemHeight = (MediaQuery.of(context).size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = width / 2;
    @override
    void initState() {
      super.initState();
    }
    @override
    void dispose() {
      super.dispose();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: width,
              height: fullHeight*0.1,
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome", style: GoogleFonts.comfortaa(textStyle: TextStyle(color: Colors.grey,fontSize: MyTextSize(this.context).h6)),),
                            Text("Bayaboo", style: GoogleFonts.comfortaa(textStyle: TextStyle(color: const Color.fromRGBO(20, 160, 240, 1.0),fontSize: MyTextSize(this.context).h3), fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      flex: 3),
                  const Expanded(child: Icon(Icons.add_alert_rounded),flex: 1)
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width*0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Carousel(
                  boxFit: BoxFit.cover,
                  autoplay: true,
                  autoplayDuration: const Duration(seconds: 6),
                  radius: const Radius.circular(15.0),
                  animationCurve: Curves.fastOutSlowIn,
                  dotBgColor: Colors.transparent,
                  dotIncreasedColor: Colors.red,
                  dotSpacing: 20.0,
                  indicatorBgPadding: 5.0,
                  noRadiusForIndicator: false,
                  images: const [
                    ExactAssetImage('assets/ad1.jpg'),
                    ExactAssetImage('assets/ad2.jpg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(selectedCatIndex,this.context),
    );

  }

}
