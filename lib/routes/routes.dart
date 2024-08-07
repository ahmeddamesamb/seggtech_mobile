import 'package:flutter/material.dart';
import 'package:seggtech/pages/home.dart';
import 'package:seggtech/pages/inscription.dart';
import 'package:seggtech/pages/login.dart';
import 'package:seggtech/routes/routes_path.dart';
import 'package:seggtech/splash/page1.dart';
import 'package:seggtech/splash/page2.dart';
import 'package:seggtech/splash/page3.dart';
import 'package:seggtech/splash/page4.dart';
import 'package:seggtech/splash/splash.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => Login());
      case inscription:
        return MaterialPageRoute(builder: (_) => Register());
      case home:
        return MaterialPageRoute(builder: (_) => const Home());
      case splash:
        return MaterialPageRoute(builder: (_) =>  Splash());
      case page1:
        return MaterialPageRoute(builder: (_) => const Page1());
      case page2:
        return MaterialPageRoute(builder: (_) => const Page2());
      case page3:
        return MaterialPageRoute(builder: (_) => const Page3());
      case page4:
        return MaterialPageRoute(builder: (_) => const Page4());
      default:
        return MaterialPageRoute(builder: (_) =>  Login());
    }
  }
}
