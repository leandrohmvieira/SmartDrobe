import 'package:flutter/material.dart';
import 'package:smart_drobe/model/clothes.dart';

class ClothesListItem extends StatelessWidget {
  final Clothes _clothesInfo;

  ClothesListItem(this._clothesInfo);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
        //leading: new CircleAvatar(child: new Text(_clothesInfo.fullName)),
        title: new Text(_clothesInfo.fullName),

        subtitle: new Text(_clothesInfo.clothType),
        trailing: new Icon(Icons.bookmark, color: _clothesInfo.clothColor));
  }
}
