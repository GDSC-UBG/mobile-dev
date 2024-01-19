import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lomba/login.dart';
import 'package:lomba/modules/user.dart';
import 'package:lomba/snackbar.dart';
import 'package:lottie/lottie.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
      final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    void checkRegister() {
    if (usernameController.text.isEmpty || emailController.text.isEmpty || passwordController.text.isEmpty) {
      ShowSnackBar('Error', 'All fields are required', 'error');
    } else {
      Get.showOverlay(
          asyncFunction: () =>
              register2(usernameController.text, emailController.text, passwordController.text),
          loadingWidget: CircularProgressIndicator(color: Colors.grey));
    }
  }

  Future<void> register2(String username, String email, String password) async {
    User user = User(
      username: username, email: email, password: password);
    try {
      var response =
          await http.post(Uri.parse('http://34.122.221.140/api/v1/register'), body: user.toJson());
      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');
      if (response.statusCode == 200) {
        var res = jsonDecode(response.body);
        print(res['result']);
        ShowSnackBar('success', 'Akun Sudah Ditambahkan', 'success');
        Get.offAll(() => Login());

        
      } else {
        print('Gagal mendaftar: ${response.reasonPhrase}');
        ShowSnackBar(
            'error', 'Gagal mendaftar: ${response.reasonPhrase}', 'error');
      }
    } catch (e) {
      print('Ada error di $e');
      ShowSnackBar('error', 'Terjadi kesalahan: $e', 'error');
    }
  }
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
                  controller: usernameController,
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
                TextField(controller: emailController,
                  
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
                  controller: passwordController,
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
                    checkRegister();
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
