import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:lomba/navbar.dart';
import 'package:lomba/register.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/login.json',
                  height: 350,
                ),
                InputEmail(),
                const SizedBox(height: 20),
                InputPassword(),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Get.offAll(NavBarWidget(
                      pageControlller: PageController(),
                    ));
                  },
                  child: const LoginButton(),
                ),
                SizedBox(height: 10),
                InkWell(
                  child: LogginGoogle(),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Get.offAll(Register());
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputEmail extends StatelessWidget {
  const InputEmail({
    super.key,
    // required this.authController,
  });

  // final AuthController authController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: authController.emailController,
      decoration: InputDecoration(
        label: Container(
          margin: EdgeInsets.only(left: 20),
          child: Text('Email'),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      ),
    );
  }
}

class InputPassword extends StatelessWidget {
  const InputPassword({
    super.key,
    // required this.authController,
  });

  // final AuthController authController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: authController.passwordController,
      decoration: InputDecoration(
        label: Container(
          margin: EdgeInsets.only(left: 20),
          child: Text('Password'),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      ),
      obscureText: true,
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.black,
      ),
      child: Center(
          child: Text(
        'LOGIN',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}

class LogginGoogle extends StatelessWidget {
  const LogginGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
          border: Border.all(color: Colors.grey)),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Brand(Brands.google),
          SizedBox(width: 20),
          Text(
            'Login with Google',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      )),
    );
  }
}
