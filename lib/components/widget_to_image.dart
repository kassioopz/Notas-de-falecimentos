import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';

class WidgetToImageTeste extends StatefulWidget {
  final Function(GlobalKey globalKey) builder;

  const WidgetToImageTeste({
    required this.builder,
    super.key,
  });

  @override
  State<WidgetToImageTeste> createState() => _WidgetToImageTesteState();
}

class _WidgetToImageTesteState extends State<WidgetToImageTeste> {
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

class PrintService {
  Future<Uint8List> print({required GlobalKey keyWidgetToImage}) async {
    final RenderRepaintBoundary? boundary = keyWidgetToImage.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    final ui.Image? image = await boundary?.toImage();
    final ByteData? byteData = await image?.toByteData(format: ui.ImageByteFormat.png);
    final Uint8List? pngBytes = byteData?.buffer.asUint8List();
    return pngBytes!;
  }
}
