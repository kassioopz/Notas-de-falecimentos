import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/configuracoes/configuracoes_widget.dart';
import '/components/post/post_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'feed_widget.dart' show FeedWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class FeedModel extends FlutterFlowModel<FeedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PostFeed widget.

  PagingController<DocumentSnapshot?, PostsRecord>? postFeedPagingController;
  Query? postFeedPagingQuery;
  List<StreamSubscription?> postFeedStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    postFeedStreamSubscriptions.forEach((s) => s?.cancel());
    postFeedPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, PostsRecord> setPostFeedController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    postFeedPagingController ??= _createPostFeedController(query, parent);
    if (postFeedPagingQuery != query) {
      postFeedPagingQuery = query;
      postFeedPagingController?.refresh();
    }
    return postFeedPagingController!;
  }

  PagingController<DocumentSnapshot?, PostsRecord> _createPostFeedController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, PostsRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryPostsRecordPage(
          queryBuilder: (_) => postFeedPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: postFeedStreamSubscriptions,
          controller: controller,
          pageSize: 5,
          isStream: true,
        ),
      );
  }
}
