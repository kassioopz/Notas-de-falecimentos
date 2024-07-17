// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:ffi';

class ContainerText extends StatefulWidget {
  const ContainerText(
      {super.key, this.width, this.height, required this.child});

  final double? width;
  final double? height;
  final Widget child;

  @override
  State<ContainerText> createState() => _ContainerTextState();
}

class _ContainerTextState extends State<ContainerText> {
  late GlobalKey keyWidgetToImage;
  @override
  Widget build(BuildContext context) {
    return WidgetToImage(builder: (globalKey) {
      keyWidgetToImage = globalKey;
      return widget.child;
    });
  }
}

//-------------------
class WidgetToImage extends StatefulWidget {
  final Function(GlobalKey globalKey) builder;

  const WidgetToImage({
    required this.builder,
    Key? key,
  }) : super(key: key);

  @override
  State<WidgetToImage> createState() => _WidgetToImageState();
}

class _WidgetToImageState extends State<WidgetToImage> {
  final globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: RepaintBoundary(
        key: globalKey,
        child: widget.builder(globalKey),
      ),
    );
  }
}
