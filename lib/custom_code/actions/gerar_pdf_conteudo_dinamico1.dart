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
//import 'dart:typed_data'; // Manipulação de dados binários (imagem)
import 'package:qr_flutter/qr_flutter.dart' as qr; // Gerar QRCode
import 'package:barcode_widget/barcode_widget.dart'
    as barcode; // Gerar Código de Barras

// ** Função assíncrona que gera um PDF com um Cabeçalho, dados tabulares e um rodapé.
Future gerarPdfConteudoDinamico1(
  String header, //Declara a Variavel header do tipo String
) async {
  final pdf = pw.Document();
  pdf.addPage(
    // Adiciona uma página ao documento
    pw.Page(
      // Construção do conteúdo da página
      build: (pw.Context context) => pw.Center(
        // Centraliza o conteúdo na página
        child: pw.Text(
          header, // Texto a ser exibido na página
          style: pw.TextStyle(
            fontSize: 30, // Tamanho da fonte do texto
          ),
        ),
      ),
    ),
  );

  // Utiliza a biblioteca Printing para layout e salvar o PDF
  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}
