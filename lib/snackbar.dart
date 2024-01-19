import 'package:flutter/material.dart';
import 'package:get/get.dart';

ShowSnackBar(title, msg, type) {
  Get.snackbar(title, msg,
      snackPosition: SnackPosition.TOP,
      titleText: Text(
        title,
        style: TextStyle(
          color: Colors.white, // Sesuaikan warna teks snackbar sesuai kebutuhan
          fontSize: 16,
        ),
      ),
      messageText: Text(
        msg,
        style: TextStyle(
          color: Colors.white, // Sesuaikan warna teks snackbar sesuai kebutuhan
          fontSize: 16,
        ),
      ),
      duration: Duration(seconds: 1),
      backgroundColor: type == 'error'
          ? Color.fromARGB(255, 117, 20, 14)
          : const Color.fromARGB(255, 40, 103, 42));
}
