import 'package:flutter/material.dart';
import 'package:seggtech/utils/app_color.dart';

import '../../utils/images_asset.dart';

class Langue extends StatefulWidget {
  const Langue({super.key});

  @override
  State<Langue> createState() => _LangueState();
}

class _LangueState extends State<Langue> {
  String _langueSelectionnee = 'Français'; // Langue par défaut sélectionnée

  // Liste des langues disponibles
  final List<String> _langues = ['Français', 'Anglais', 'Espagnol', 'Allemand'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image de fond
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImagesAsset.cover2),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 720.0, // Hauteur de la partie blanche
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30.0), // Espacement avant le titre
                    const Text(
                      'Choisir une langue',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: appCColor),
                      textAlign: TextAlign.center, // Centrage du titre
                    ),
                    const SizedBox(height: 20.0), // Espacement après le titre

                    // Liste des options de langue
                    Expanded(
                      child: ListView.builder(
                        itemCount: _langues.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Texte de la langue à gauche
                                Text(
                                  _langues[index],
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                  ),
                                  textAlign:
                                      TextAlign.left, // Alignement à gauche
                                ),
                                // Radio à droite
                                Radio<String>(
                                  value: _langues[index],
                                  groupValue: _langueSelectionnee,
                                  onChanged: (String? value) {
                                    setState(() {
                                      _langueSelectionnee = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 16.0),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Action lors de la sélection de la langue
                          print('Langue sélectionnée: $_langueSelectionnee');
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 50),
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text(
                          'Enregistrer',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
