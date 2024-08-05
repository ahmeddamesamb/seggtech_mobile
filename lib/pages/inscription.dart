import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seggtech/utils/app_color.dart';

class Register extends StatelessWidget {
  final TextEditingController _nomCompletController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final ValueNotifier<bool> _acceptTerms = ValueNotifier<bool>(false);

  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Création de compte',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              TextField(
                controller: _nomCompletController,
                decoration: InputDecoration(
                  labelText: 'Nom Complet',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
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
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirmer Mot de Passe',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ValueListenableBuilder<bool>(
                valueListenable: _acceptTerms,
                builder: (context, value, child) {
                  return Row(
                    children: [
                      Checkbox(
                        value: value,
                        onChanged: (checked) {
                          _acceptTerms.value = checked ?? false;
                        },
                      ),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            text: 'En cochant cette case, vous acceptez ',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            children: [
                              TextSpan(
                                text: 'nos conditions d’utilisation',
                                style: TextStyle(color: appCColor, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    String nomComplet = _nomCompletController.text;
                    String email = _emailController.text;
                    String password = _passwordController.text;
                    String confirmPassword = _confirmPasswordController.text;

                    if (_validateFields(email, password, confirmPassword, nomComplet) && _acceptTerms.value) {
                      // Handle registration logic here
                    } else {
                      // Show error message
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Veuillez entrer des informations valides et accepter les conditions.'),
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
                    "Créer mon compte",
                    style: TextStyle(color: appFColor),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Créer votre compte avec',
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
                        icon: FaIcon(FontAwesomeIcons.google, color: Colors.red), // Icône Google
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
                        icon: FaIcon(FontAwesomeIcons.facebookF, color: Colors.blue), // Icône Facebook
                        iconSize: 30,
                        onPressed: () {
                          // Facebook login logic
                        },
                      ),
                      const Text('Facebook', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: RichText(
                  text: const TextSpan(
                    text: 'Vous avez déjà un compte, ',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: [
                      TextSpan(
                        text: 'connectez-vous ici',
                        style: TextStyle(color: appCColor, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _validateFields(String email, String password, String confirmPassword, String nomComplet) {
    return email.isNotEmpty &&
        password.isNotEmpty &&
        nomComplet.isNotEmpty &&
        password == confirmPassword;
  }
}
