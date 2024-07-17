// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:printing/printing.dart'; // Impressão do PDF
import 'package:pdf/pdf.dart'; // Geração de PDF
import 'package:pdf/widgets.dart' as pw; // Geração de PDF
import 'package:http/http.dart' as http; // Realizar requisições HTTP
import 'dart:convert'; // Realizar requisições HTTP e manipular dados JSON
import 'package:qr_flutter/qr_flutter.dart' as qr; // Gerar QRCode
import 'package:barcode_widget/barcode_widget.dart'
    as barcode; // Gerar Código de Barras

// ** Função assíncrona que gera um PDF com um Cabeçalho, dados tabulares e um rodapé.
Future<void> gerarPdfConteudoDinamico(
  String header,
  String containerImage,
  String image1Url,
  String image2Url,
  String text1,
  String text2,
  String text3,
  String text4,
  String text5,
  String text6,
) async {
  final pdf = pw.Document();

  // Função auxiliar para carregar uma imagem a partir de uma URL
  Future<pw.ImageProvider> _loadImage(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return pw.MemoryImage(response.bodyBytes);
    } else {
      throw Exception('Falha ao carregar a imagem');
    }
  }

  final containerImageProvider = await _loadImage(containerImage);
  final image1Provider = await _loadImage(image1Url);
  final image2Provider = await _loadImage(image2Url);

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) => pw.Center(
        child: pw.Container(
          width: double.infinity,
          height: 500,
          decoration: pw.BoxDecoration(
            image: pw.DecorationImage(
              fit: pw.BoxFit.cover,
              image: containerImageProvider,
            ),
          ),
          child: pw.Stack(
            children: [
              if (containerImage == image1Url)
                pw.Positioned(
                  left: 0,
                  top: 0,
                  child: pw.Image(image1Provider),
                ),
              pw.Positioned(
                left: 0,
                top: 0,
                child: pw.Image(image2Provider),
              ),
              pw.Positioned(
                left: 0,
                top: 0,
                child: pw.Text(
                  text1,
                  style: pw.TextStyle(
                    fontSize: 15,
                    fontWeight: pw.FontWeight.bold,
                  ),
                  textAlign: pw.TextAlign.center,
                ),
              ),
              pw.Positioned(
                left: 0,
                top: 0,
                child: pw.Text(
                  text2,
                  style: pw.TextStyle(
                    fontSize: 12,
                    fontWeight: pw.FontWeight.bold,
                  ),
                  textAlign: pw.TextAlign.center,
                ),
              ),
              pw.Positioned(
                left: 0,
                top: 0,
                child: pw.Text(
                  text3,
                  style: pw.TextStyle(
                    fontSize: 15,
                    fontWeight: pw.FontWeight.bold,
                  ),
                  textAlign: pw.TextAlign.center,
                ),
              ),
              pw.Positioned(
                left: 0,
                top: 0,
                child: pw.Text(
                  text4,
                  style: pw.TextStyle(
                    fontSize: 15,
                    fontWeight: pw.FontWeight.bold,
                  ),
                  textAlign: pw.TextAlign.center,
                ),
              ),
              pw.Positioned(
                left: 0,
                top: 0,
                child: pw.Text(
                  text5,
                  style: pw.TextStyle(
                    fontSize: 10,
                    fontWeight: pw.FontWeight.bold,
                  ),
                  textAlign: pw.TextAlign.start,
                ),
              ),
              pw.Positioned(
                left: 0,
                top: 0,
                child: pw.Text(
                  text6,
                  style: pw.TextStyle(
                    fontSize: 10,
                    fontWeight: pw.FontWeight.bold,
                  ),
                  textAlign: pw.TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );

  // Utiliza a biblioteca Printing para layout e salvar o PDF
  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}
