import 'package:flutter/material.dart';
import 'package:seggtech/routes/routes_path.dart';
import 'package:seggtech/utils/app_color.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenir les dimensions de l'écran
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = screenWidth * 0.8; // Largeur des boutons en pourcentage de la largeur de l'écran

    return Container(
      color: appDColor, // Couleur de fond pour toute la page
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Titre
          const Text(
            'Connexion sécurisée', // Nouveau titre
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold, // Gras
              color: Colors.white, // Couleur du texte
            ),
          ),
          const SizedBox(height: 50), // Espacement entre le titre et les boutons
          // Boutons
          SizedBox(
            width: buttonWidth, // Largeur dynamique du bouton
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, login);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: appEColor, // Couleur du premier bouton
                padding: const EdgeInsets.symmetric(vertical: 15), // Padding interne
                textStyle: const TextStyle(fontSize: 18), // Taille du texte
              ),
              child: const Text(
                'Connexion sécurisée',
                style: TextStyle(color: appFColor), // Couleur du texte du bouton
              ),
            ),
          ),
          const SizedBox(height: 20), // Espacement entre les boutons
          SizedBox(
            width: buttonWidth, // Largeur dynamique du bouton
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, inscription);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: appCColor, // Couleur du second bouton
                padding: const EdgeInsets.symmetric(vertical: 15), // Padding interne
                textStyle: const TextStyle(fontSize: 18), // Taille du texte
              ),
              child: const Text(
                'Créer un compte',
                style: TextStyle(color: appFColor), // Couleur du texte du bouton
              ),
            ),
          ),
        ],
      ),
    );
  }
}
