import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class Note {
  final String day;
  final String date;
  final String title;
  final String content;

  Note({
    required this.day,
    required this.date,
    required this.title,
    required this.content,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotedPages(),
    );
  }
}

class NotedPages extends StatefulWidget {
  @override
  _NotedPagesState createState() => _NotedPagesState();
}

class _NotedPagesState extends State<NotedPages> {
  List<Note> notes = [
    Note(
      day: 'Sunday',
      date: '25 Des 2023',
      title: 'Meeting Kelompok Caption',
      content:
          'Hari ini kami mengadakan meeting offline kelompok caption untuk belajar dan mengobrol bersama terkait dengan memfokuskan masing-masing kedepannya',
    ),
    Note(
      day: 'Saturday',
      date: '25 June 2023',
      title: 'Apa yang kamu kerjakan hari ini?',
      content:
          'Hari ini kami mengadakan meeting offline kelompok caption untuk belajar dan mengobrol bersama terkait dengan memfokuskan masing-masing kedepannya',
    ),
  ];

  void _showAddNoteDialog(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController contentController = TextEditingController();

    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat('dd MMM yyyy').format(currentDate);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Note'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: 'Title'),
                ),
                TextField(
                  controller: contentController,
                  maxLines: 5,
                  decoration: InputDecoration(labelText: 'Content'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Add the new note to the list
                if (titleController.text.isNotEmpty &&
                    contentController.text.isNotEmpty) {
                  setState(() {
                    notes.add(Note(
                      day: DateFormat('EEEE').format(currentDate),
                      date: formattedDate,
                      title: titleController.text,
                      content: contentController.text,
                    ));
                  });
                  Get.back(); // Close the dialog
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

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
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return ListCardForNoted(note: notes[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddNoteDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ListCardForNoted extends StatelessWidget {
  final Note note;

  const ListCardForNoted({Key? key, required this.note}) : super(key: key);

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
              note.day,
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(note.date,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  note.title,
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 150, 150, 150)),
                ),
                Text(
                  note.content,
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
