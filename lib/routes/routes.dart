import 'package:flutter/material.dart';
import 'package:seggtech/pages/home.dart';
import 'package:seggtech/pages/homescreen.dart';
import 'package:seggtech/pages/login.dart';
import 'package:seggtech/pages/profil/condition_utilisation.dart';
import 'package:seggtech/pages/profil/historique.dart';
import 'package:seggtech/pages/profil/langue.dart';
import 'package:seggtech/pages/profil/mot_de_passe_oublier.dart';
import 'package:seggtech/pages/profil/notification.dart';
import 'package:seggtech/pages/profil/profil_edit.dart';
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
      case edit_profile:
        return MaterialPageRoute(builder: (_) => const ProfilEdit());
      case notification:
        return MaterialPageRoute(builder: (_) => const NotificationMessage());
      case historique:
        return MaterialPageRoute(builder: (_) => const Historique());
      case mot_de_passe_oublie:
        return MaterialPageRoute(builder: (_) => const MotDePasseOublier());
      case langue:
        return MaterialPageRoute(builder: (_) => const Langue());
      case condition_utilisation:
        return MaterialPageRoute(builder: (_) => const ConditionUtilisation());
      default:
        return MaterialPageRoute(builder: (_) => const Login());
    }
  }
}
