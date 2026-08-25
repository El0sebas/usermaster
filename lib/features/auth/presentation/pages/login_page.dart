import 'package:flutter/material.dart';
import '../../../../core/routes/app_routes.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  void _handleLogin() async {
    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() => _isLoading = false);
      Navigator.pushReplacementNamed(context, AppRoutes.dashboard);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.lock_person, size: 80, color: Colors.blueAccent),
              const SizedBox(height: 32),
              
              // 1. Usando tu CustomTextField para el correo
              const CustomTextField(
                labelText: 'Correo electrónico',
                prefixIcon: Icons.email,
              ),
              const SizedBox(height: 16),
              
              // 2. Usando tu CustomTextField para la contraseña
              const CustomTextField(
                labelText: 'Contraseña',
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 32),
              
              // 3. Usando tu CustomButton (él mismo maneja el estado de carga)
              CustomButton(
                text: 'Ingresar',
                onPressed: _handleLogin,
                isLoading: _isLoading,
              ),
              
              const SizedBox(height: 16),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.register),
                child: const Text('Registrarse'),
              ),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.forgotPassword),
                child: const Text('¿Olvidaste tu contraseña?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}