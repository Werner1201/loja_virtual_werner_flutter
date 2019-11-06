import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/category_screen.dart';

class CategoryTile extends StatelessWidget {

  final DocumentSnapshot snapshot;

  CategoryTile(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //Leading eh o primeiro item de um List Tile
      leading: CircleAvatar(
        radius: 25.0,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(snapshot.data["icon"]),
      ),
      //Title eh o item mediano de list Tile
      title: Text(snapshot.data["title"]),
      //Trailing eh o item final de um List Tile
      //Ele funciona como uma linha.
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryScreen(snapshot)
          )
        );
      },
    );
  }
}
