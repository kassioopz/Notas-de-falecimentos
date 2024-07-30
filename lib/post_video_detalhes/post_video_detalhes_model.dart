import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/post_video_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'post_video_detalhes_widget.dart' show PostVideoDetalhesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostVideoDetalhesModel extends FlutterFlowModel<PostVideoDetalhesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for post_video component.
  late PostVideoModel postVideoModel;

  @override
  void initState(BuildContext context) {
    postVideoModel = createModel(context, () => PostVideoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    postVideoModel.dispose();
  }
}
