import 'package:flutter/material.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/custom_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isLoading = false;
  String? _errorMessage;

  void _handleRegister() async {
    setState(() => _errorMessage = null);
    if (_passwordController.text != _confirmPasswordController.text) {
      setState(() => _errorMessage = 'Las contraseñas no coinciden');
      return;
    }

    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      setState(() => _isLoading = false);
      Navigator.pop(context); // Vuelve al login
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crear Cuenta'), elevation: 0),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // Usando CustomTextField para Nombre
            const CustomTextField(
              labelText: 'Nombre completo',
              prefixIcon: Icons.person,
            ),
            const SizedBox(height: 16),
            
            // Usando CustomTextField para Correo
            const CustomTextField(
              labelText: 'Correo electrónico',
              prefixIcon: Icons.email,
            ),
            const SizedBox(height: 16),
            
            // Usando CustomTextField para Contraseña
            CustomTextField(
              controller: _passwordController,
              labelText: 'Contraseña',
              obscureText: true,
              prefixIcon: Icons.lock,
            ),
            const SizedBox(height: 16),
            
            // Usando CustomTextField para Confirmar Contraseña (con errorText)
            CustomTextField(
              controller: _confirmPasswordController,
              labelText: 'Confirmar contraseña',
              obscureText: true,
              prefixIcon: Icons.lock_outline,
              errorText: _errorMessage,
            ),
            const SizedBox(height: 32),
            
            // Usando CustomButton (maneja el _isLoading internamente)
            CustomButton(
              text: 'Crear cuenta',
              onPressed: _handleRegister,
              isLoading: _isLoading,
            ),
          ],
        ),
      ),
    );
  }
}