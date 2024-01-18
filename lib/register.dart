import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lomba/login.dart';
import 'package:lottie/lottie.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Lottie.asset('assets/signup.json'),
                TextField(
                  // controller: authController.nameController,
                  decoration: InputDecoration(
                    label: Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text('Name'),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  // controller: authController.emailController,
                  decoration: InputDecoration(
                    label: Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text('Email'),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  // controller: authController.passwordController,
                  decoration: InputDecoration(
                    label: Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text('Password'),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    // register();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black,
                    ),
                    child: const Center(
                        child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have an account?"),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Get.offAll(Login());
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
