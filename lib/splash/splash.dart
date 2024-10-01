import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/images_asset.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Naviguer vers la Page2 après 5 secondes
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(
          '/pageview'); // Assurez-vous que cela correspond à votre route
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset(ImagesAsset.logoApp1)),
    );
  }
}
