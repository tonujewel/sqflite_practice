import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Note app"),
      ),
      body: getList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          },
      ),
    );
  }

  ListView getList() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext contex, int position) {
          return Card(
            color: Colors.white,
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text(
                "Dummy text",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Dummy date"),
              trailing: Icon(Icons.delete),
              onTap: () {
                print("Tapped on $position");
              },
            ),
          );
        });
  }
}
