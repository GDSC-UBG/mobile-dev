import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotedPages extends StatelessWidget {
  const NotedPages({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Daily Notes",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Container(
            color: Color.fromARGB(255, 90, 163, 235),
            height: 3.0,
            width: double.infinity,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListCardForNoted(),
          ListCardForNoted(),
          ListCardForNoted(),
          ListCardForNoted(),
          CardForNoted(),
        ],
      ),
    );
  }
}

class ListCardForNoted extends StatelessWidget {
  const ListCardForNoted({Key? key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(10),
            tileColor: Colors.white,
            leading: CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage('assets/image/menyebalkan.png'),
            ),
            title: Text(
              'Senin',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('25 Des 2023',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Apa yang kamu kerjakan hari ini?',
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 150, 150, 150)),
                ),

                
                Text(
                  '''
                  Hari ini kami mengadakan meeting offline kelompok caption untuk belajar dan mengobrol bersama terkait dengan memfokuskan masing-masing kedepannya
                  ''',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardForNoted extends StatelessWidget {
  const CardForNoted({Key? key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      child: Text('Senin',
                          style: TextStyle(fontSize: 23, color: Colors.black))),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 90, 163, 235),
                        borderRadius: BorderRadius.circular(23)),
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Isi Sekarang',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
