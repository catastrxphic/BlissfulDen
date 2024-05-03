import 'package:blissfullden_app/components/my_textfield.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 200, 230),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              //logo
              const Icon(
                Icons.lock, size: 100,
              ),

              const SizedBox(height: 50),
              const Text(
                "Welcome Back",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16,
                ),
              ),

          
              const SizedBox(height: 25),
              my_textfield(
                controller: usernameController, 
                hintText: 'username', 
                obscureText: false
              ),

              const SizedBox(height: 25),
              my_textfield(
                controller: passwordController,
                hintText: 'password' ,
                obscureText: true,
              )
            ],
          ),
        )
        )
    );
  }
}