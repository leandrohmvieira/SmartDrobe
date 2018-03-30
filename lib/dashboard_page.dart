import 'package:flutter/material.dart';
import 'package:smart_drobe/dashboard/clothes_list.dart';
import 'package:smart_drobe/model/clothes.dart';
import 'package:smart_drobe/gallery_page.dart';

class DashboardPage extends StatelessWidget {
  //TODO: Build persistence write and read
  _buildClothesList() {
    return <Clothes>[
      const Clothes(
          fullName: 'Brusinha de Bloguerinha Vermelha',
          clothColor: Colors.red,
          clothType: 'Blusa'),
      const Clothes(
          fullName: 'Jeans Básico',
          clothType: 'Calça',
          clothColor: Colors.indigo)
    ];
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ClothesList(_buildClothesList()),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          print("button clicked");
          Navigator.push(
              context,
              new MaterialPageRoute(
              builder: (context) => new MyHomePage())
          );
        },
        child: new Icon(Icons.add),
        tooltip: "New Scan",
      ),
    );
  }
}
