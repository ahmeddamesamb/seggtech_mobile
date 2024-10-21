import 'package:flutter/material.dart';
import 'package:seggtech/utils/images_asset.dart';

import '../utils/app_color.dart';

class Abonnement extends StatefulWidget {
  const Abonnement({super.key});

  @override
  State<Abonnement> createState() => _AbonnementState();
}

class _AbonnementState extends State<Abonnement> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 50.0,
              width: 240.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), color: appAColor),
              child: const Text(
                "Abonnement: 500 000 CFA",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: appGColor),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              "Méthode de paiement",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70.0, // Largeur du cercle
                  height: 70.0, // Hauteur du cercle
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.black, // Couleur de fond du cercle
                  ),
                  child: ClipOval(
                    // Utilisez ClipOval pour un effet circulaire
                    child: Image.asset(
                      ImagesAsset.orangemoney,
                      fit:
                          BoxFit.cover, // Ajuste l'image pour remplir le cercle
                    ),
                  ),
                ),
                Container(
                  width: 70.0, // Largeur du cercle
                  height: 70.0, // Hauteur du cercle
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.black, // Couleur de fond du cercle
                  ),
                  child: ClipOval(
                    // Utilisez ClipOval pour un effet circulaire
                    child: Image.asset(
                      ImagesAsset
                          .wave, // Remplacez par le chemin de votre image
                      fit:
                          BoxFit.cover, // Ajuste l'image pour remplir le cercle
                    ),
                  ),
                ),
                Container(
                  width: 70.0, // Largeur du cercle
                  height: 70.0, // Hauteur du cercle
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.black, // Couleur de fond du cercle
                  ),
                  child: ClipOval(
                    // Utilisez ClipOval pour un effet circulaire
                    child: Image.asset(
                      ImagesAsset
                          .wizall, // Remplacez par le chemin de votre image
                      fit:
                          BoxFit.cover, // Ajuste l'image pour remplir le cercle
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70.0, // Largeur du cercle
                  height: 70.0, // Hauteur du cercle
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.black, // Couleur de fond du cercle
                  ),
                  child: ClipOval(
                    // Utilisez ClipOval pour un effet circulaire
                    child: Image.asset(
                      ImagesAsset
                          .kpay, // Remplacez par le chemin de votre image
                      fit:
                          BoxFit.cover, // Ajuste l'image pour remplir le cercle
                    ),
                  ),
                ),
                Container(
                  width: 70.0, // Largeur du cercle
                  height: 70.0, // Hauteur du cercle
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.black, // Couleur de fond du cercle
                  ),
                  child: ClipOval(
                    // Utilisez ClipOval pour un effet circulaire
                    child: Image.asset(
                      ImagesAsset
                          .wizall, // Remplacez par le chemin de votre image
                      fit:
                          BoxFit.cover, // Ajuste l'image pour remplir le cercle
                    ),
                  ),
                ),
                Container(
                  width: 70.0, // Largeur du cercle
                  height: 70.0, // Hauteur du cercle
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.black, // Couleur de fond du cercle
                  ),
                  child: ClipOval(
                    // Utilisez ClipOval pour un effet circulaire
                    child: Image.asset(
                      ImagesAsset
                          .visa, // Remplacez par le chemin de votre image
                      fit:
                          BoxFit.cover, // Ajuste l'image pour remplir le cercle
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 60.0, // Réduit la hauteur du container
                      width: 400.0,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20.0)), // Bordure
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(
                                4.0), // Réduit l'espacement interne
                            child: Text(
                              "Recherche par : ",
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // Bordure du champ de texte
                                hintText: 'Ex: janvier 2024',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical:
                                        5.0), // Ajuste le padding interne du TextField
                              ),
                              style: TextStyle(
                                  fontSize: 14.0), // Ajuste la taille de texte
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text(
                        "Transaction",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: appCColor),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text("Payé",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: appCColor)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text("Non Payé",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: appCColor)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text("Reçu",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: appCColor)),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: appCColor),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 90,
                        child: Text(
                          "Janvier 2024",
                          style: TextStyle(color: appFColor),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(10.0),
                          color: appCColor,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        child: Text(""),
                        decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        child: Text(""),
                        decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      const Icon(
                        Icons.download,
                        color: appCColor, // Couleur de l'icône
                        size: 40.0, // Augmentez la taille ici
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15.0),
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: appCColor),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 90,
                        child: Text("Fevrier 2024",
                            style: TextStyle(color: appFColor)),
                        decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(10.0),
                          color: appCColor,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        child: Text(""),
                        decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        child: Text(""),
                        decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      const Icon(
                        Icons.download,
                        color: appCColor, // Couleur de l'icône
                        size: 40.0, // Augmentez la taille ici
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15.0),
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: appCColor),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 90,
                        child: Text("Mars 2024",
                            style: TextStyle(color: appFColor)),
                        decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(10.0),
                          color: appCColor,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        child: Text(""),
                        decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        child: Text(""),
                        decoration: BoxDecoration(
                          border: Border.all(color: appCColor),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      const Icon(
                        Icons.download,
                        color: appCColor, // Couleur de l'icône
                        size: 40.0, // Augmentez la taille ici
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
