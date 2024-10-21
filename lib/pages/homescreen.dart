import 'package:flutter/material.dart';
import 'package:seggtech/pages/profil.dart';

import '../utils/images_asset.dart';
import 'abonnement.dart';
import 'accueil.dart';
import 'graphique.dart'; // Assurez-vous d'avoir importé correctement vos assets

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int notificationCount = 3; // Nombre de notifications
  int _selectedIndex =
      0; // Index de l'élément sélectionné dans la BottomNavigationBar

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Accueil(),
    const Graphique(),
    const Abonnement(),
    const Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImagesAsset.cover2), // Image de fond
                fit: BoxFit.contain, // Adapte l'image sans l'étirer
                alignment: Alignment.topCenter, // Place l'image en haut
              ),
            ),
          ),
          // Icône de notification dans un cercle blanc avec un compteur
          Positioned(
            top: 50.0, // Positionnement vertical
            right: 20.0, // Positionnement horizontal à l'extrême droite
            child: Stack(
              children: [
                // Cercle blanc avec l'icône
                Container(
                  width: 50.0, // Largeur du cercle
                  height: 50.0, // Hauteur du cercle
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white, // Couleur de fond du cercle (blanc)
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.notifications_outlined),
                    iconSize: 30.0,
                    color: Colors.black, // Couleur de l'icône de notification
                    onPressed: () {
                      // Action à déclencher en appuyant sur l'icône
                    },
                  ),
                ),
                // Le badge avec le nombre de notifications
                if (notificationCount > 0)
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red, // Couleur rouge pour le compteur
                        borderRadius: BorderRadius.circular(12),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 24,
                        minHeight: 24,
                      ),
                      child: Text(
                        '$notificationCount', // Nombre de notifications
                        style: const TextStyle(
                          color: Colors.white, // Texte en blanc
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Partie blanche avec les pages à afficher
          Column(
            children: [
              // Partie supérieure de la page (espacement au-dessus du contenu blanc)
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white, // Couleur de la partie blanche
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          30.0), // Coins arrondis en haut à gauche
                      topRight: Radius.circular(
                          30.0), // Coins arrondis en haut à droite
                    ),
                  ),
                  margin: const EdgeInsets.only(
                    top:
                        120.0, // Décalage pour que l'image soit visible en dessous
                  ),
                  child: IndexedStack(
                    index:
                        _selectedIndex, // Change la page en fonction de l'index
                    children: _pages,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      // BottomNavigationBar avec bordure arrondie
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.black),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph_outlined, color: Colors.black),
              label: 'Graphique',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_giftcard_outlined, color: Colors.black),
              label: 'Abonnement',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined, color: Colors.black),
              label: 'Profil',
            ),
          ],
          currentIndex: _selectedIndex,
          // L'index sélectionné
          selectedItemColor: Colors.blue,
          // Couleur de l'item sélectionné
          unselectedItemColor: Colors.grey,
          // Couleur des items non sélectionnés
          onTap: _onItemTapped,
          // Fonction appelée lors de l'interaction
          type: BottomNavigationBarType.fixed, // Empêche les items de bouger
        ),
      ),
    );
  }
}
