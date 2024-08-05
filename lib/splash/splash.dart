import 'package:flutter/material.dart';
import 'package:seggtech/splash/page1.dart';
import 'package:seggtech/splash/page2.dart';
import 'package:seggtech/splash/page3.dart';
import 'package:seggtech/splash/page4.dart';
import 'package:seggtech/utils/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splash extends StatelessWidget {
  Splash({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: appDColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 850,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: const ExpandingDotsEffect(
              activeDotColor: appCColor,
              dotColor: appEColor,
              dotHeight: 10,
              dotWidth: 20,
            ),
          ),
        ],
      ),
    );
  }
}
