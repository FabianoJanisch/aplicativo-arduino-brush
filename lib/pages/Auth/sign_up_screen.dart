import 'package:arduino_brush/pages/Auth/sign_in_screen.dart';
import 'package:arduino_brush/pages/common_widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _registerUser(BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user. O erro é $e');
      }
    }
  }

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: <Widget>[
              const CustomTextField(
                icon: Icons.person,
                label: 'Nome',
              ),
              CustomTextField(
                icon: Icons.email,
                label: 'Email',
                controller: emailController,
              ),
              CustomTextField(
                icon: Icons.lock,
                label: 'Senha',
                isSecret: true,
                controller: passwordController,
              ),
              const CustomTextField(
                icon: Icons.phone,
                label: 'Celular',
              ),
              TextButton(
                child: const Text('Cadastrar'),
                onPressed: () {
                  _registerUser(context);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (c) {
                        return SignInScreen();
                      },
                    ),
                  );
                  // Faça o cadastro aqui
                },
              ),
              TextButton(
                child: const Text('Voltar para o login'),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (c) {
                      return SignInScreen();
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
