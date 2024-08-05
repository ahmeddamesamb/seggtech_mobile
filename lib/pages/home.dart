import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

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
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                AssetImage('assets/seggtech_logo.JPG'), // Chemin de votre image
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Logique de déconnexion
              Navigator.pop(context); // Exemple de déconnexion simple
            },
          ),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 6, 37,
                    91), // Couleur de fond pour le conteneur principal
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
                      color: const Color(
                          0xFF003366), // Couleur bleue foncée pour le card
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          // Titre à gauche
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
                                  ),                       ],
                              ),
                            ),
                          ),
                          // Graphique à droite
                          SizedBox(
                            width:
                                100, // Largeur fixe réduite pour le graphique
                            child: CircularPercentIndicator(
                              radius: 60, // Rayon réduit pour le graphique
                              lineWidth: 15,
                              percent: 0.7, // Pourcentage
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: Color.fromARGB(255, 3, 11, 35),
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
                                  fontSize:
                                      14, // Taille du texte au centre réduite
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
                      color: const Color(
                          0xFF003366), // Couleur bleue foncée pour le card
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          // Titre à gauche
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
                          // Graphique à droite
                          SizedBox(
                            width:
                                100, // Largeur fixe réduite pour le graphique
                            child: CircularPercentIndicator(
                              radius: 60, // Rayon réduit pour le graphique
                              lineWidth: 15,
                              percent: 0.6, // Pourcentage
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: Color.fromARGB(255, 3, 11, 35),
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
                                  fontSize:
                                      14, // Taille du texte au centre réduite
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
                      color: const Color(
                          0xFF003366), // Couleur bleue foncée pour le card
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          // Titre à gauche
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
                          // Graphique à droite
                          SizedBox(
                            width:
                                100, // Largeur fixe réduite pour le graphique
                            child: CircularPercentIndicator(
                              radius: 60, // Rayon réduit pour le graphique
                              lineWidth: 15,
                              percent: 0.4, // Pourcentage
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: Color.fromARGB(255, 3, 11, 35),
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
                                  fontSize:
                                      14, // Taille du texte au centre réduite
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
                      color: const Color(
                          0xFF003366), // Couleur bleue foncée pour le card
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          // Titre à gauche
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'EAU',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Current eau level',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Graphique à droite
                          SizedBox(
                            width:
                                100, // Largeur fixe réduite pour le graphique
                            child: CircularPercentIndicator(
                              radius: 60, // Rayon réduit pour le graphique
                              lineWidth: 15,
                              percent: 0.9, // Pourcentage
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: Color.fromARGB(255, 3, 11, 35),
                              linearGradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 245, 101, 12),
                                  Color.fromARGB(255, 245, 101, 12),
                                  Color.fromARGB(255, 212, 236, 237),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              center: const Text(
                                '90%',
                                style: TextStyle(
                                  fontSize:
                                      14, // Taille du texte au centre réduite
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
          ),
        ],
      ),
    );
  }
}
