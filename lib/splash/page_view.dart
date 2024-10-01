import 'package:flutter/material.dart';
import 'package:seggtech/splash/page2.dart';

import '../pages/login.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          Page2(), // Votre Page2
          Login(), // Votre page de connexion
        ],
      ),
    );
  }
}
