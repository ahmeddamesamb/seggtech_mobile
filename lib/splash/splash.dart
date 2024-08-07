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
    // Obtenir les dimensions de l'écran
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: appDColor,
      body: Column(
        children: [
          // Ajuster la hauteur du PageView en fonction de la hauteur de l'écran
          Expanded(
            flex: 9, // Prend 9/10 de l'espace vertical
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
          // Indicateur de page
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0), // Espacement autour de l'indicateur
            child: SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: const ExpandingDotsEffect(
                activeDotColor: appCColor,
                dotColor: appEColor,
                dotHeight: 10,
                dotWidth: 20,
                spacing: 5, // Espacement entre les points
              ),
            ),
          ),
        ],
      ),
    );
  }
}
