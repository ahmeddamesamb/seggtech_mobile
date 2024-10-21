import 'package:flutter/material.dart';

import '../routes/routes_path.dart';
import '../services/share_preference/login_shared.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    ConnectedUser userconnect = ConnectedUser();

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.9,
              height: 180.0,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    width: 90.0,
                    height: 90.0,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: ClipOval(
                      child: Image.network(
                        '${userconnect.getCurrentUser()!.photo}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '${userconnect.getCurrentUser()?.nom}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text('${userconnect.getCurrentUser()?.email}'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 14), // Ajout d'espace entre les sections
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.black12),
              ),
              elevation: 5,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.edit_outlined),
                      title: const Text('Éditer mon profil'),
                      dense: true,
                      onTap: () {
                        Navigator.pushNamed(context, edit_profile);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.notifications_active_outlined),
                      title: const Text('Notifications'),
                      dense: true, // Réduit l'espace
                      onTap: () {
                        Navigator.pushNamed(context, notification);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.history),
                      title: const Text('Historique'),
                      dense: true, // Réduit l'espace
                      onTap: () {
                        Navigator.pushNamed(context, historique);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.black12),
              ),
              elevation: 5,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.key),
                      title: const Text('Changer mon mot de passe'),
                      dense: true, // Réduit l'espace
                      onTap: () {
                        Navigator.pushNamed(context, mot_de_passe_oublie);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.tab),
                      title: const Text('Théme'),
                      dense: true, // Réduit l'espace
                      onTap: () {
                        Navigator.pushNamed(context, '/notifications');
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person_2_outlined),
                      title: const Text('Aide & Support'),
                      dense: true, // Réduit l'espace
                      onTap: () {
                        Navigator.pushNamed(context, '/history');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.black12),
              ),
              elevation: 5,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.language),
                      title: const Text('Langues'),
                      dense: true, // Réduit l'espace
                      onTap: () {
                        Navigator.pushNamed(context, langue);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.lock_clock_outlined),
                      title: const Text('Conditions d’utilisations'),
                      dense: true, // Réduit l'espace
                      onTap: () {
                        Navigator.pushNamed(context, condition_utilisation);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.login_outlined),
                      title: const Text('Se déconnecter'),
                      dense: true, // Réduit l'espace
                      onTap: () {
                        Navigator.pushNamed(context, login);
                      },
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
