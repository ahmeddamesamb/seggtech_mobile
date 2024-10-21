import 'package:flutter/material.dart';
import 'package:seggtech/utils/images_asset.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImagesAsset.cover1),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              ImagesAsset.logo,
              width: 200,
              height: 200,
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                'By PRODEM',
                style: TextStyle(
                  fontSize: 22, // Taille agrandie
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Couleur blanche
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
