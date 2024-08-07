import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../routes/routes_path.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Seggtech',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 300, // Définir la largeur souhaitée pour le DrawerHeader
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius:
                          70, // Ajuster la taille du CircleAvatar si nécessaire
                      backgroundImage: AssetImage('assets/seggtech_logo.JPG'),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Seggtech',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Modifier Profil'),
              onTap: () {
                // Logique pour modifier le profil
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Paramètres'),
              onTap: () {
                // Logique pour les paramètres
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Déconnexion'),
              onTap: () {
                // Logique pour déconnexion
                Navigator.pushNamed(context, login);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 6, 37, 91),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: const Text(
                      'Dashboard',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Première carte avec 70%
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      color: const Color(0xFF003366),
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Temperature',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Current temperature level',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            height: 140,
                            child: CircularPercentIndicator(
                              radius: 60,
                              lineWidth: 15,
                              percent: 0.7,
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor:
                                  const Color.fromARGB(255, 3, 11, 35),
                              linearGradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 203, 7, 237),
                                  Color.fromARGB(255, 203, 7, 237),
                                  Color.fromARGB(255, 212, 236, 237),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              center: const Text(
                                '70%',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Deuxième carte avec 60%
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      color: const Color(0xFF003366),
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Humidity',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Current humidity level',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            height: 140,
                            child: CircularPercentIndicator(
                              radius: 60,
                              lineWidth: 15,
                              percent: 0.6,
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor:
                                  const Color.fromARGB(255, 3, 11, 35),
                              linearGradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 231, 214, 19),
                                  Color.fromARGB(255, 231, 214, 19),
                                  Color.fromARGB(255, 212, 236, 237),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              center: const Text(
                                '60%',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Troisième carte avec 40%
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      color: const Color(0xFF003366),
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PH',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Current PH level',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            height: 140,
                            child: CircularPercentIndicator(
                              radius: 60,
                              lineWidth: 15,
                              percent: 0.4,
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor:
                                  const Color.fromARGB(255, 3, 11, 35),
                              linearGradient: const LinearGradient(
                                colors: [
                                  Color(0xFF526ADA),
                                  Color(0xFF526ADA),
                                  Color(0xFF78E5E7),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              center: const Text(
                                '40%',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Quatrième carte avec 90%
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      color: const Color(0xFF003366),
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Turbidity',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Current turbidity level',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            height: 140,
                            child: CircularPercentIndicator(
                              radius: 60,
                              lineWidth: 15,
                              percent: 0.9,
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor:
                                  const Color.fromARGB(255, 3, 11, 35),
                              linearGradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 254, 9, 9),
                                  Color.fromARGB(255, 254, 9, 9),
                                  Color.fromARGB(255, 212, 236, 237),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              center: const Text(
                                '90%',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
