import 'package:flutter/material.dart';
import 'package:seggtech/pages/home.dart';
import 'package:seggtech/pages/homescreen.dart';
import 'package:seggtech/pages/login.dart';
import 'package:seggtech/routes/routes_path.dart';
import 'package:seggtech/splash/page2.dart';

import '../pages/accueil.dart';
import '../splash/page_view.dart';
import '../splash/splash.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const Login());
      case home:
        return MaterialPageRoute(builder: (_) => const Home());
      case splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      case page2:
        return MaterialPageRoute(builder: (_) => const Page2());
      case pageview:
        return MaterialPageRoute(builder: (_) => const PageViewScreen());
      case homescreen:
        return MaterialPageRoute(builder: (_) => const Homescreen());
        case accueil:
        return MaterialPageRoute(builder: (_) => const Accueil());
      default:
        return MaterialPageRoute(builder: (_) => const Login());
    }
  }
}
