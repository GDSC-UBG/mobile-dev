import 'package:flutter/material.dart';

class Catatan extends StatefulWidget {
  const Catatan({super.key});

  @override
  State<Catatan> createState() => _CatatanState();
}

class _CatatanState extends State<Catatan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext, context) {
            return CardForCatatan();
          }),
    );
  }
}

class CardForCatatan extends StatelessWidget {
  const CardForCatatan({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Text('sdsd'),
      ),
    );
  }
}
