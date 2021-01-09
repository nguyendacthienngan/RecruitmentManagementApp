import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';


class CameraComponent extends StatefulWidget {
  final  List<CameraDescription> cameras;
  CameraComponent({this.cameras});
  @override
  _CameraComponentState createState() => _CameraComponentState();
}

class _CameraComponentState extends State<CameraComponent> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return AspectRatio(
        aspectRatio:
        controller.value.aspectRatio,
        child: CameraPreview(controller));
  }
}