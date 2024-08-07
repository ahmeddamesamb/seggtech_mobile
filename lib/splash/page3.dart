import 'package:flutter/material.dart';
import 'package:seggtech/utils/app_color.dart';
import 'package:seggtech/utils/images_asset.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenir les dimensions de l'écran
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = screenWidth * 0.8; // Largeur des boutons en pourcentage de la largeur de l'écran

    return Column(
      children: [
        // Première partie avec l'image
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImagesAsset.imageprod), // Remplacer par l'image spécifique si différente
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // Deuxième partie avec les textes et les boutons
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Titre de solution apportée 3',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold, // Gras
                      color: Colors.black, // Couleur du texte
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Brève description de la solution du problème\nque l’on cherche à résoudre',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black, // Couleur du texte
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              // Boutons empilés verticalement avec largeur dynamique
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: buttonWidth, // Largeur dynamique du bouton
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appDColor, // Couleur du premier bouton
                        padding: const EdgeInsets.symmetric(vertical: 15), // Padding interne
                        textStyle: const TextStyle(fontSize: 18), // Taille du texte
                      ),
                      child: const Text(
                        'Bouton d’action 1',
                        style: TextStyle(color: appFColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // Espacement entre les boutons
                  SizedBox(
                    width: buttonWidth, // Largeur dynamique du bouton
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appCColor, // Couleur du second bouton
                        padding: const EdgeInsets.symmetric(vertical: 15), // Padding interne
                        textStyle: const TextStyle(fontSize: 18), // Taille du texte
                      ),
                      child: const Text(
                        'Bouton d’action 2',
                        style: TextStyle(color: appFColor),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
