import 'package:flutter/material.dart';
import '../../utils/app_color.dart';
import '../../utils/images_asset.dart';

class MotDePasseOublier extends StatefulWidget {
  const MotDePasseOublier({super.key});

  @override
  State<MotDePasseOublier> createState() => _MotDePasseOublierState();
}

class _MotDePasseOublierState extends State<MotDePasseOublier> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                image: AssetImage(ImagesAsset.cover2),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 600.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(  // Gestion du scroll pour éviter le débordement
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30.0),
                        const Text(
                          'Mot de passe oublié',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: appCColor,
                          ),
                        ),
                        const SizedBox(height: 40.0),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Vous recevrez un lien pour changer votre mot de passe.',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Veuillez entrer un email';
                            } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
                              return 'Entrez un email valide';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 24.0),
                        _buildSubmitButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: appCColor,
        minimumSize: const Size(300, 50),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Action à effectuer lors de l'envoi
          String email = _emailController.text;
          // Remplacez par votre logique d'envoi
          print('Email envoyé à: $email');
        }
      },
      child: const Text(
        'Envoyer',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
