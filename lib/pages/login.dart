import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seggtech/routes/routes_path.dart';
import 'package:seggtech/utils/app_color.dart';

class Login extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ValueNotifier<bool> _rememberMe = ValueNotifier<bool>(false);

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Partie colorée en appCColor
          Container(
            color: appCColor,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: 0,
            right: 0,
            child: Container(
              height: 2 * MediaQuery.of(context).size.height / 3,
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const Center(
                    child: Text(
                      'Connexion sécurisée',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Entrez votre email',
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      labelStyle: const TextStyle(
                          color: Colors.black), // Couleur du label
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Mot de Passe',
                      hintText: 'Entrez votre mot de passe',
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.9),
                      labelStyle: const TextStyle(
                          color: Colors.black), // Couleur du label
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ValueListenableBuilder<bool>(
                        valueListenable: _rememberMe,
                        builder: (context, value, child) {
                          return Row(
                            children: [
                              Checkbox(
                                value: value,
                                onChanged: (checked) {
                                  _rememberMe.value = checked ?? false;
                                },
                              ),
                              const Text(
                                'Se souvenir de moi',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          );
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigation vers la page de mot de passe oublié
                          Navigator.pushNamed(context, password);
                        },
                        child: const Text(
                          'Mot de passe oublié',
                          style: TextStyle(color: appCColor, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        String email = _emailController.text;
                        String password = _passwordController.text;

                        if (_validateFields(email, password)) {
                          // Rediriger vers la page d'accueil
                          Navigator.pushNamed(context, home);
                        } else {
                          // Show error message
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'Veuillez entrer des informations valides.'),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appDColor, // Couleur du bouton
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      child: const Text(
                        "Se connecter",
                        style: TextStyle(color: appFColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'Connectez-vous avec',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.google,
                                color: Colors.red), // Icône Google
                            iconSize: 30,
                            onPressed: () {
                              // Google login logic
                            },
                          ),
                          const Text('Google', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.facebookF,
                                color: Colors.blue), // Icône Facebook
                            iconSize: 30,
                            onPressed: () {
                              // Facebook login logic
                            },
                          ),
                          const Text('Facebook',
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Vous n\'avez pas de compte ? ',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 12),
                        children: [
                          TextSpan(
                            text: 'Inscrivez-vous ici',
                            style: const TextStyle(color: appCColor, fontSize: 12),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigation vers la page d'inscription
                                Navigator.pushNamed(context, inscription);
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _validateFields(String email, String password) {
    return email.isNotEmpty && password.isNotEmpty;
  }
}
