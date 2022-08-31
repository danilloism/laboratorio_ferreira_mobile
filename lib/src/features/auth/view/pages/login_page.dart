import 'package:flutter/material.dart';
import 'package:laboratorio_ferreira_mobile/src/core/core.dart';
import 'package:laboratorio_ferreira_mobile/src/features/auth/auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SettingsPage())),
        child: const Icon(Icons.settings),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(),
              const SizedBox(height: 8),
              Text('Bem vindo!', style: Theme.of(context).textTheme.headline6),
              const SizedBox(height: 8),
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
