import 'package:flutter/material.dart';
import 'package:seggtech/routes/routes_path.dart';
import 'package:seggtech/utils/app_color.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(height: 300), // Espacement entre le titre et les boutons
          // Boutons
          SizedBox(
            width: 350, // Largeur fixe du bouton
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
          const SizedBox(height: 40), // Espacement entre les boutons
          SizedBox(
            width: 350, // Largeur fixe du bouton
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
