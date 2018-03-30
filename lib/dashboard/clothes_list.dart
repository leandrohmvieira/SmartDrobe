import 'package:flutter/material.dart';
import 'package:smart_drobe/dashboard/clothes_list_item.dart';
import 'package:smart_drobe/model/clothes.dart';

class ClothesList extends StatelessWidget {
  final List<Clothes> _clothesList;

  ClothesList(this._clothesList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildClothesList(),
    );
  }

  List<ClothesListItem> _buildClothesList() {
    return _clothesList.map((clothes) => new ClothesListItem(clothes)).toList();
  }
}
