import 'package:flutter/material.dart';


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

  class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState()=> _LoginPageState();
  }

  class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? emailError;
  String? passwordError;
  String? errorMessage;

  void handleLogin() {
    print('login button pressed');
  //final email = emailController.text.trim().toLowerCase();
  //final email = emailController.text.replaceAll(RegExp(r'\s+'), '').toLowerCase();
  final password = passwordController.text.trim();
  print('Password raw: "$password"');
  print('Password length: ${password.length}');

  // clear old error
  setState(() {
    errorMessage = null;
  });
  final email = 'abc@gmail.com';
  print('Email raw: "$email"');

  // Email validation
  if (!email.endsWith('@gmail.com')) {
    print('Email validation failed');
    setState(() {
      errorMessage = 'Email must end with @gmail.com';
    });
    return;
  }

  // Password validation
  if (password.length < 6) {
    print('Password validation failed');
    setState(() {
      errorMessage = 'Password must be at least 6 characters';
    });
    return;
  }
  print('Validation passed');
    
    //print('Validation passed, navigating to products page');

  // ✅ Success
  Navigator.pushReplacementNamed(context, '/products');
}


//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginPage(),
//     );
//   }
// }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// App Title
            const Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            /// Email Field
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            /// Password Field
             TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
                onChanged: (value) {
    print('Password changed: "$value"');
  },
            ),

            const SizedBox(height: 30),

            /// Login Button
            SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: (){
                  print('button pressed');
                  handleLogin();
                },
  child: const Text('LOGIN'),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }