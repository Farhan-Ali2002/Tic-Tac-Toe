import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 50,
        itemBuilder: (context, id) {
          return ListTile(
            selectedColor: Colors.grey,
            title: Text("$id"),
            leading: const Icon(Icons.add_box_outlined),
          );
        });
  }
}
