
import 'package:flutter/material.dart';
import 'package:personalportfolio/mobileview/mobileappbar.dart';
import 'package:personalportfolio/mobileview/mobilefourth.dart';
import 'package:personalportfolio/mobileview/mobilehome.dart';
import 'package:personalportfolio/mobileview/mobilelastpage.dart';
import 'package:personalportfolio/mobileview/mobilesecondpage.dart';
import 'package:personalportfolio/mobileview/mobilethirdpage.dart';
import 'package:personalportfolio/mobileview/mobulefifthpage.dart';
import 'package:personalportfolio/portfolio/pages/fifthpage.dart';
import 'package:personalportfolio/portfolio/pages/fourthpage.dart';
import 'package:personalportfolio/portfolio/pages/home.dart';
import 'package:personalportfolio/portfolio/pages/lastpage.dart';
import 'package:personalportfolio/portfolio/pages/secondpage.dart';
import 'package:personalportfolio/portfolio/pages/thirdpage.dart';
import 'package:personalportfolio/portfolio/widgets/desktopappbar.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToPage(double offset) {
    _scrollController.animateTo(
      offset,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
   void _scrollToMobilePage(double offset) {
    _scrollController.animateTo(
      offset,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isDesktop = true;
    var width = MediaQuery.of(context).size.width;

    isDesktop = width >= 900;

    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 900) {
              return Scaffold(
                appBar:MobileAppbar(
                  height: 100,
                  scrollController: _scrollController,
                   scrollToHomePage: () => _scrollToMobilePage(0),
                  scrollToSecondPage: () => _scrollToMobilePage(630), // Adjust these offsets
                  scrollToThirdPage: () => _scrollToMobilePage(1700),
                  scrollToFourthPage: () => _scrollToMobilePage(2600),
                  
                  scrollToContact: () => _scrollToPage(6000),
                   ),
               
                
                body: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(children: [
                    SizedBox(height: 0),
                    MobileHomePage(),
                    MobileSecondPage(),
                    MobileThirdPage(),
                    MobileFourth(),
                    MobileFifthPage(),
                    MobileLastPage()
                  ],

                  ),
                ),
              );
            } else {
              return Scaffold(
                backgroundColor: Colors.white,
                appBar: DesktopAppbar(
                  height: 150,
                  scrollController: _scrollController,
                   scrollToHomePage: () => _scrollToPage(10),
                  scrollToSecondPage: () => _scrollToPage(770), // Adjust these offsets
                  scrollToThirdPage: () => _scrollToPage(1500),
                  scrollToFourthPage: () => _scrollToPage(2180),
                  
                  scrollToContact: () => _scrollToPage(3700),
                ),
                body: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      HomePage(),
                      SecondPage(),
                      ThirdPage(),
                      FourthPage(),
                      FifthPage(),
                      LastPage(),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
