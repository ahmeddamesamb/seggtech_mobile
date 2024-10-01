import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  int notificationCount = 3; // Nombre de notifications
  int _selectedIndex =
      0; // Index de l'élément sélectionné dans la BottomNavigationBar

  PageController _pageController = PageController();
  int _currentIndex = 0;

  // Liste des textes à afficher
  final List<String> texts = [
    'Les résultats obtenus sont conformes\n aux normes en vigueur à hauteur de\n 70%.',
    '- Si les résultats sont inférieurs à 50%,\n ils ne respectent pas les normes en\n vigueur :\n l\'eau obtenue n\'est pas réutilisable.',
    '- Si les résultats sont supérieurs à 50%,\n ils sont conformes aux normes en vigueur\n : l\'eau obtenue peut être réutilisée.',
  ];

  // Fonction pour gérer le changement de page
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // Partie supérieure de la page (espacement au-dessus du contenu blanc)
              Expanded(
                child: Column(
                  children: [
                    // Card avec des bordures et taille augmentée
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15), // Arrondi des bords
                        side: const BorderSide(
                          color: Colors.blue, // Couleur de la bordure
                        ),
                      ),
                      elevation: 5, // Ombre autour du Card
                      child: Container(
                        width: MediaQuery.of(context).size.width *
                            0.9, // 90% de la largeur de l'écran
                        height: 160.0, // Hauteur augmentée
                        padding:
                            const EdgeInsets.all(16.0), // Espacement interne
                        child: const Text(
                          'Contenu de la carte', // Contenu de la carte
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: 5), // Espacement entre le Card et le Row
                    // Row avec PageView pour les textes
                    Container(
                      width: MediaQuery.of(context).size.width *
                          0.9, // 90% de la largeur de l'écran
                      padding: const EdgeInsets.all(13.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue, // Couleur de la bordure
                          width: 2.0, // Largeur de la bordure
                        ),
                        borderRadius:
                            BorderRadius.circular(15), // Arrondi des coins
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width *
                                0.9, // 90% de la largeur de l'écran
                            height: 70.0, // Hauteur du Row
                            child: PageView.builder(
                              controller: _pageController,
                              onPageChanged: (index) {
                                setState(() {
                                  _currentIndex =
                                      index; // Mettre à jour l'index actuel
                                });
                              },
                              itemCount: texts.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Text(
                                    texts[index],
                                    style: const TextStyle(fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              },
                            ),
                          ),

                          // Indicateur de pagination modifié
                          Align(
                            alignment:
                                Alignment.bottomRight, // Alignement à droite
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 20.0,
                              ),
                              child: Text(
                                '<${_currentIndex + 1}/${texts.length}>', // Affiche 1/n, 2/n, ou n/n
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Colors.blue, // Utilisez votre couleur ici
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Center(
                      child: Text(
                        'Les résultats des paramètres physico-chimiques',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Espace restant pour le contenu principal
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            // Utiliser Column pour empiler les éléments verticalement
                            mainAxisSize: MainAxisSize
                                .min, // Ajuster la taille de la colonne
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      width:
                                          170, // Réduire la largeur de la Card
                                      height:
                                          100, // Réduire la hauteur de la Card
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              15), // Arrondi des bords
                                          side: const BorderSide(
                                            color: Colors
                                                .blue, // Couleur de la bordure
                                            width: 2.0, // Largeur de la bordure
                                          ),
                                        ),
                                        elevation: 5,
                                        child: const Padding(
                                          padding: EdgeInsets.all(
                                              8.0), // Padding pour l'espace intérieur
                                          child: Column(
                                            mainAxisSize: MainAxisSize
                                                .min, // Ajuster la hauteur selon le contenu
                                            children: [
                                              Center(
                                                child: Text(
                                                  'TDS (mg/l)',
                                                  style: TextStyle(
                                                    fontSize:
                                                        14, // Réduire la taille de la police
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                  color: Colors
                                                      .blue), // Bordure bleue
                                              Text(
                                                'Résultat : 766',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Référence : < 600',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                      width: 10), // Espace entre les cartes
                                  Expanded(
                                    child: SizedBox(
                                      width:
                                          170, // Réduire la largeur de la Card
                                      height:
                                          100, // Réduire la hauteur de la Card
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              15), // Arrondi des bords
                                          side: const BorderSide(
                                            color: Colors
                                                .blue, // Couleur de la bordure
                                            width: 2.0, // Largeur de la bordure
                                          ),
                                        ),
                                        elevation: 5,
                                        child: const Padding(
                                          padding: EdgeInsets.all(
                                              8.0), // Padding pour l'espace intérieur
                                          child: Column(
                                            mainAxisSize: MainAxisSize
                                                .min, // Ajuster la hauteur selon le contenu
                                            children: [
                                              Center(
                                                child: Text(
                                                  'Température',
                                                  style: TextStyle(
                                                    fontSize:
                                                        14, // Réduire la taille de la police
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                  color: Colors
                                                      .blue), // Bordure bleue
                                              Text(
                                                'Résultat : 30',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Référence : < 25 - 35',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      width:
                                          170, // Réduire la largeur de la Card
                                      height:
                                          100, // Réduire la hauteur de la Card
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              15), // Arrondi des bords
                                          side: const BorderSide(
                                            color: Colors
                                                .blue, // Couleur de la bordure
                                            width: 2.0, // Largeur de la bordure
                                          ),
                                        ),
                                        elevation: 5,
                                        child: const Padding(
                                          padding: EdgeInsets.all(
                                              8.0), // Padding pour l'espace intérieur
                                          child: Column(
                                            mainAxisSize: MainAxisSize
                                                .min, // Ajuster la hauteur selon le contenu
                                            children: [
                                              Center(
                                                child: Text(
                                                  'Turbidité (NFH)',
                                                  style: TextStyle(
                                                    fontSize:
                                                        14, // Réduire la taille de la police
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                  color: Colors
                                                      .blue), // Bordure bleue
                                              Text(
                                                'Résultat : 766',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Référence : < 5',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                      width: 10), // Espace entre les cartes
                                  Expanded(
                                    child: SizedBox(
                                      width:
                                          170, // Réduire la largeur de la Card
                                      height:
                                          100, // Réduire la hauteur de la Card
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              15), // Arrondi des bords
                                          side: const BorderSide(
                                            color: Colors
                                                .blue, // Couleur de la bordure
                                            width: 2.0, // Largeur de la bordure
                                          ),
                                        ),
                                        elevation: 5,
                                        child: const Padding(
                                          padding: EdgeInsets.all(
                                              8.0), // Padding pour l'espace intérieur
                                          child: Column(
                                            mainAxisSize: MainAxisSize
                                                .min, // Ajuster la hauteur selon le contenu
                                            children: [
                                              Center(
                                                child: Text(
                                                  'PH',
                                                  style: TextStyle(
                                                    fontSize:
                                                        14, // Réduire la taille de la police
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                  color: Colors
                                                      .blue), // Bordure bleue
                                              Text(
                                                'Résultat : 6,4',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Référence : < 6 - 9',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      width:
                                          170, // Réduire la largeur de la Card
                                      height:
                                          100, // Réduire la hauteur de la Card
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              15), // Arrondi des bords
                                          side: const BorderSide(
                                            color: Colors
                                                .blue, // Couleur de la bordure
                                            width: 2.0, // Largeur de la bordure
                                          ),
                                        ),
                                        elevation: 5,
                                        child: const Padding(
                                          padding: EdgeInsets.all(
                                              8.0), // Padding pour l'espace intérieur
                                          child: Column(
                                            mainAxisSize: MainAxisSize
                                                .min, // Ajuster la hauteur selon le contenu
                                            children: [
                                              Center(
                                                child: Text(
                                                  'Conductivité (µS/cm)',
                                                  style: TextStyle(
                                                    fontSize:
                                                        14, // Réduire la taille de la police
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                  color: Colors
                                                      .blue), // Bordure bleue
                                              Text(
                                                'Résultat : 400',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Référence : < 600',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                      width: 10), // Espace entre les cartes
                                  Expanded(
                                    child: SizedBox(
                                      width:
                                          170, // Réduire la largeur de la Card
                                      height:
                                          100, // Réduire la hauteur de la Card
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              15), // Arrondi des bords
                                          side: const BorderSide(
                                            color: Colors
                                                .blue, // Couleur de la bordure
                                            width: 2.0, // Largeur de la bordure
                                          ),
                                        ),
                                        elevation: 5,
                                        child: const Padding(
                                          padding: EdgeInsets.all(
                                              8.0), // Padding pour l'espace intérieur
                                          child: Column(
                                            mainAxisSize: MainAxisSize
                                                .min, // Ajuster la hauteur selon le contenu
                                            children: [
                                              Center(
                                                child: Text(
                                                  'Oxygene dissous(O2mg/l)',
                                                  style: TextStyle(
                                                    fontSize:
                                                        14, // Réduire la taille de la police
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                  color: Colors
                                                      .blue), // Bordure bleue
                                              Text(
                                                'Résultat : 4,2',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Référence : < 6,5',
                                                style: TextStyle(
                                                  fontSize:
                                                      12, // Réduire la taille de la police
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: 10), // Espace supplémentaire en bas
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment
                                .end, // Centre le contenu horizontalement
                            children: [
                              Text(
                                'Télécharger le rapport',
                                style: TextStyle(
                                  color: Colors.blue, // Couleur du texte
                                  fontSize: 16, // Taille du texte
                                ),
                              ),
                              SizedBox(
                                  width: 8), // Espace entre le texte et l'icône
                              Icon(
                                Icons.download,
                                color: Colors.blue, // Couleur de l'icône
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Icône de notification positionnée en haut à droite
        ],
      ),
    );
  }
}
