import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:seggtech/routes/routes_path.dart';
import 'package:seggtech/services/auth_services.dart';

import '../utils/images_asset.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image de couverture
          Positioned.fill(
            child: Image.asset(
              ImagesAsset.cover1,
              fit: BoxFit.cover,
            ),
          ),

          // Contenu
          const Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: LoginForm(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _termsAccepted =
      false; // Ajout de la variable pour les termes d'utilisation
  AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            style:
                const TextStyle(color: Colors.white), // Couleur du texte saisi
            decoration: const InputDecoration(
              labelText: 'Email',
              labelStyle:
                  TextStyle(color: Colors.white), // Couleur du texte du label
              border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.white), // Couleur de la bordure
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white), // Bordure activée
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.white), // Bordure focalisée
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer votre email';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            style:
                const TextStyle(color: Colors.white), // Couleur du texte saisi
            decoration: const InputDecoration(
              labelText: 'Mot de passe',
              labelStyle:
                  TextStyle(color: Colors.white), // Couleur du texte du label
              border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.white), // Couleur de la bordure
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white), // Bordure activée
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.white), // Bordure focalisée
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer votre mot de passe';
              }
              return null;
            },
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(), // Pour équilibrer la ligne
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const ForgotPasswordDialog();
                    },
                  );
                },
                child: const Text(
                  'Mot de passe oublié',
                  style: TextStyle(
                      color: Colors.white, fontSize: 12), // Couleur blanche
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: _termsAccepted,
                onChanged: (bool? value) {
                  setState(() {
                    _termsAccepted = value!;
                  });
                },
                activeColor: Colors.blue,
              ),
              const Expanded(
                child: Text(
                  'J\'accepte les termes d\'utilisation',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, homescreen);
              if (_formKey.currentState!.validate()) {
                if (!_termsAccepted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text(
                            'Veuillez accepter les termes d\'utilisation')),
                  );
                  return;
                }
                var request = auth.login('login', {
                  'email': _emailController.text,
                  'password': _passwordController.text
                });
                request.then((value) => {
                      print(json.decode(value.body)),
                      if (json.decode(value.body) != null)
                        {Navigator.pushNamed(context, home)}
                    });
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Couleur de fond en blanc
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 50.0, // Ajustement de la largeur
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Coins arrondis
              ),
              elevation: 5, // Ajout d'une ombre pour un effet de profondeur
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min, // Ajustement à la taille minimale
              children: [
                Icon(Icons.login, color: Colors.blue), // Icône d'entrée en bleu
                SizedBox(width: 10), // Espacement entre l'icône et le texte
                Text(
                  'Se connecter',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold), // Texte en bleu
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ForgotPasswordDialog extends StatefulWidget {
  const ForgotPasswordDialog({super.key});

  @override
  _ForgotPasswordDialogState createState() => _ForgotPasswordDialogState();
}

class _ForgotPasswordDialogState extends State<ForgotPasswordDialog> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Réinitialiser le mot de passe'),
      content: TextField(
        controller: _emailController,
        style: const TextStyle(
            color: Colors
                .black), // Couleur du texte saisi dans la boîte de dialogue
        decoration: const InputDecoration(
          labelText: 'Entrez votre email',
          labelStyle: TextStyle(
              color: Colors
                  .black), // Couleur du texte du label dans la boîte de dialogue
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Annuler'),
        ),
        TextButton(
          onPressed: () {
            String email = _emailController.text;
            if (email.isNotEmpty && email.contains('@')) {
              sendPasswordResetEmail(email);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content:
                        Text('Email de réinitialisation envoyé à : $email')),
              );
              Navigator.of(context).pop();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Veuillez entrer une adresse email valide')),
              );
            }
          },
          child: const Text('Envoyer'),
        ),
      ],
    );
  }
}

// Exemple de fonction pour envoyer l'email de réinitialisation
void sendPasswordResetEmail(String email) {
  // Implémentez la logique pour envoyer l'email de réinitialisation ici
  print('Email de réinitialisation envoyé à : $email');
}
