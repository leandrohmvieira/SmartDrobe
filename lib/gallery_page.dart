import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_drobe/request_send.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<File> _imageFile;

  void _onImageButtonPressed(ImageSource source) {
    setState(() {
      _imageFile = ImagePicker.pickImage(source: source);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Center(
        child: new FutureBuilder<File>(
          future: _imageFile,
          builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.error == null) {
              return new Image.file(snapshot.data);
            } else if (snapshot.error != null) {
              return const Text('error picking image.');
            } else {
              return const Text('Escolha uma imagem da galeria ou tire uma foto.');
            }
          },
        ),
      ),
      floatingActionButton: new Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new FloatingActionButton(
            heroTag: "Gallery",
            onPressed: () => _onImageButtonPressed(ImageSource.gallery),
            tooltip: 'Pick Image from gallery',
            child: new Icon(Icons.photo_library),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: new FloatingActionButton(
              heroTag: "Camera",
              onPressed: () => _onImageButtonPressed(ImageSource.camera),
              tooltip: 'Take a Photo',
              child: new Icon(Icons.camera_alt),
            ),
          ),
        ],
      ),
    );
  }
}