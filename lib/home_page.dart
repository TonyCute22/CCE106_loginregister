import 'package:flutter/material.dart';
import 'package:loginregister/login_page.dart';

class HomePage extends StatelessWidget {
  final String username;
  final String password;

  const HomePage({super.key, required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gandeza_Activity4'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Username: $username', style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              Text('Password: $password', style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (route) => false,
                  );
                },
                child: const Text('Back to Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
