import 'package:flutter/material.dart';

import '../../utils/images_asset.dart';

class NotificationMessage extends StatefulWidget {
  const NotificationMessage({super.key});

  @override
  State<NotificationMessage> createState() => _NotificationMessageState();
}

class _NotificationMessageState extends State<NotificationMessage> {
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 720.0, // Hauteur de la partie blanche
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ), // Coins arrondis en haut
              ),
              child: Column(
                children: [
                  // Ajoute ici le contenu de ta partie blanche
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
