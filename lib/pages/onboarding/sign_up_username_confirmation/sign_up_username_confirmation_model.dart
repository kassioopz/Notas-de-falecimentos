import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sign_up_username_confirmation_widget.dart'
    show SignUpUsernameConfirmationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpUsernameConfirmationModel
    extends FlutterFlowModel<SignUpUsernameConfirmationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Email_HIDDEN widget.
  FocusNode? emailHIDDENFocusNode;
  TextEditingController? emailHIDDENTextController;
  String? Function(BuildContext, String?)? emailHIDDENTextControllerValidator;
  // State field(s) for Password_HIDDEN widget.
  FocusNode? passwordHIDDENFocusNode;
  TextEditingController? passwordHIDDENTextController;
  late bool passwordHIDDENVisibility;
  String? Function(BuildContext, String?)?
      passwordHIDDENTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    passwordHIDDENVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailHIDDENFocusNode?.dispose();
    emailHIDDENTextController?.dispose();

    passwordHIDDENFocusNode?.dispose();
    passwordHIDDENTextController?.dispose();
  }
}
