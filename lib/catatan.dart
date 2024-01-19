import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lomba/noteds_Pages.dart';

class Catatan extends StatefulWidget {
  const Catatan({Key? key}) : super(key: key);

  @override
  State<Catatan> createState() => _CatatanState();
}

class _CatatanState extends State<Catatan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Daily Notes",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Container(
              color: Color.fromARGB(255, 90, 163, 235),
              height: 3.0, // Sesuaikan dengan preferredSize di atas
              width: double.infinity,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext, context) {
              return CardForNotes();
            },
          ),
        ),
      ),
    );
  }
}

class CardForNotes extends StatelessWidget {
  const CardForNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Color.fromARGB(255, 203, 203, 203),
                width: 1.0),
            borderRadius:
                BorderRadius.circular(8.0), // Atur radius sudut border
          ),
          child: ListTile(
            tileColor: Colors.white,
            trailing: IconButton(
                onPressed: () {
                  Get.to(() => NotedPages());
                },
                icon: Icon(Icons.arrow_forward_ios_rounded)),
            title: Text('Minggu 1',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            subtitle: Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/image/menyebalkan.png'),
                  ),
                  CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/image/membosankan.png')),
                  CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/image/biasa.png')),
                  CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/image/menarik.png')),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromARGB(255, 214, 214, 214),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
