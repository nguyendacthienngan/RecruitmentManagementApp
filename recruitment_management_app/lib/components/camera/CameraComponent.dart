import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraCheckIn extends StatefulWidget {
  @override
  _CameraCheckInState createState() => _CameraCheckInState();
}

class _CameraCheckInState extends State<CameraCheckIn> {
  File _image;
  final picker = ImagePicker(
  );

  Future getImage() async {
    var pickedFile = await picker.getImage(source: ImageSource.camera,
    preferredCameraDevice: CameraDevice.front, );
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);

      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: _image == null
                ? Text('No image selected.')
                : Image.file(_image),
          ),
          FloatingActionButton(
            onPressed: getImage,
            tooltip: 'Pick Image',
            child: Icon(Icons.add_a_photo),
          ),
        ],
      ),
    );
  }
}
