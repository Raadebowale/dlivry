import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isEmailFieldFocused = false;
  bool _isPasswordFieldFocused = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: 'Email',
            focusedBorder: _isEmailFieldFocused
                ? const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  )
                : null,
          ),
          onChanged: (value) {
            setState(() {
              _isEmailFieldFocused = value.isNotEmpty;
            });
          },
        ),
        const SizedBox(height: 20),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            focusedBorder: _isPasswordFieldFocused
                ? const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  )
                : null,
          ),
          onChanged: (value) {
            setState(() {
              _isPasswordFieldFocused = value.isNotEmpty;
            });
          },
          obscureText: true,
        ),
        
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Handle login button press
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: LoginForm(),
      ),
    ),
  ));
}
