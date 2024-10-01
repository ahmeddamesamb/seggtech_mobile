import 'package:flutter/material.dart';
import 'package:seggtech/utils/images_asset.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fond blanc pour tout l'écran
      body: Stack(
        children: [
          // Partie avec l'image cover qui occupe tout l'écran
          Container(
            height: MediaQuery.of(context)
                .size
                .height, // Remplit toute la hauteur de l'écran
            width: MediaQuery.of(context)
                .size
                .width, // Remplit toute la largeur de l'écran
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    ImagesAsset.cover), // Remplacer par l'image spécifique
                fit: BoxFit
                    .cover, // Assure que l'image couvre complètement le container
              ),
            ),
          ),
        ],
      ),
    );
  }
}
