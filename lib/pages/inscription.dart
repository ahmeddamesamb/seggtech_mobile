import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seggtech/routes/routes_path.dart';
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
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.02),
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
              SizedBox(height: screenHeight * 0.08),
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
              SizedBox(height: screenHeight * 0.02),
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
              SizedBox(height: screenHeight * 0.02),
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
              SizedBox(height: screenHeight * 0.02),
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
              SizedBox(height: screenHeight * 0.02),
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
              SizedBox(height: screenHeight * 0.03),
              SizedBox(
                width: double.infinity,
                height: screenHeight * 0.07,
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
              SizedBox(height: screenHeight * 0.02),
              const Center(
                child: Text(
                  'Créer votre compte avec',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red), // Icône Google
                        iconSize: 30,
                        onPressed: () {
                          // Google login logic
                        },
                      ),
                      const Text('Google', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  Column(
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.facebookF, color: Colors.blue), // Icône Facebook
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
              SizedBox(height: screenHeight * 0.02),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Vous avez déjà un compte, ',
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                    children: [
                      TextSpan(
                        text: 'connectez-vous ici',
                        style: const TextStyle(color: appCColor, fontSize: 12),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, login); // Navigation vers la page de connexion
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
    );
  }

  bool _validateFields(String email, String password, String confirmPassword, String nomComplet) {
    return email.isNotEmpty &&
        password.isNotEmpty &&
        nomComplet.isNotEmpty &&
        password == confirmPassword;
  }
}
