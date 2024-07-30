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

import 'package:universal_html/html.dart' as html;

Future downloadFromBytes(
    FFUploadedFile? uploadedFile, String fileName, String FileExt) async {
  // Add your function code here!
  final Uint8List fileBytes = uploadedFile!.bytes!;

// Create a Blob with the bytes
  final blob = html.Blob([fileBytes]);

// Generate a URL for the Blob
  final url = html.Url.createObjectUrlFromBlob(blob);

// Create an anchor element for downloading
  final anchor = html.AnchorElement(href: url)
    ..target = 'webdownload'
    ..download = fileName + '.' + FileExt; // Specify the desired file name

// Trigger a click event on the anchor to initiate the download
  anchor.click();
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
