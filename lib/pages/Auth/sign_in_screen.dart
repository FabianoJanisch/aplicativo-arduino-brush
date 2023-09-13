import 'package:arduino_brush/pages/Auth/sign_up_screen.dart';
import 'package:arduino_brush/pages/common_widgets/custom_text_field.dart';
import 'package:arduino_brush/pages/homePages/page1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _loginUser(BuildContext context) {
    try {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      )
          .then((_) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Pagechart()),
        );
      });
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login failed'),
        ),
      );
    }
  }

  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Projeto escova arduino')),
      body: Center(
        child: Column(
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'Porta escova',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 330,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: Column(
                          children: [
                            // Email
                            CustomTextField(
                              icon: Icons.email,
                              label: 'Email',
                              controller: emailController,
                            ),
                            // Password
                            CustomTextField(
                              icon: Icons.lock,
                              label: 'Password',
                              isSecret: true,
                              controller: passwordController,
                            ),

                            // Botão para entrar
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.green,
                                ),
                              ),
                              onPressed: () => _loginUser(context),
                              child: const Text('Entrar'),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.blue,
                                ),
                              ),
                              onPressed: () {
                                // Navegar para a tela de cadastro
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (c) {
                                      return SignUpScreen();
                                    },
                                  ),
                                );
                              },
                              child: const Text('Cadastrar'),
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
      ),
    );
  }
}
