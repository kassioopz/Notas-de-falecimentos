import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/animada_gif.gif',
            fit: BoxFit.cover,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'meuperfil': (data) async => ParameterData(
        allParams: {
          'perfil': getParameter<String>(data, 'perfil'),
        },
      ),
  'Search': ParameterData.none(),
  'Feed': (data) async => ParameterData(
        allParams: {
          'email': getParameter<String>(data, 'email'),
          'posts': await getDocumentParameter<PostsRecord>(
              data, 'posts', PostsRecord.fromSnapshot),
        },
      ),
  'postDetalhes': (data) async => ParameterData(
        allParams: {
          'post': getParameter<DocumentReference>(data, 'post'),
        },
      ),
  'novopost': (data) async => ParameterData(
        allParams: {},
      ),
  'SignUp': ParameterData.none(),
  'Location': ParameterData.none(),
  'CallToAction': ParameterData.none(),
  'login': ParameterData.none(),
  'SignUp_Name': ParameterData.none(),
  'SignUp_Password': ParameterData.none(),
  'SignUp_UsernameConfirmation': ParameterData.none(),
  'SelectTaggedUsers': ParameterData.none(),
  'perfilusuario': (data) async => ParameterData(
        allParams: {
          'username': getParameter<String>(data, 'username'),
        },
      ),
  'EditProfile': ParameterData.none(),
  'EditPost': (data) async => ParameterData(
        allParams: {
          'post': await getDocumentParameter<PostsRecord>(
              data, 'post', PostsRecord.fromSnapshot),
        },
      ),
  'Messages': ParameterData.none(),
  'NewMessage': ParameterData.none(),
  'IndividualMessage': (data) async => ParameterData(
        allParams: {
          'chat': getParameter<DocumentReference>(data, 'chat'),
        },
      ),
  'politicadeprivacidade': ParameterData.none(),
  'notificacao': ParameterData.none(),
  'deletarconta': ParameterData.none(),
  'avisos': ParameterData.none(),
  'post_video_detalhes': (data) async => ParameterData(
        allParams: {
          'post': await getDocumentParameter<VideosRecord>(
              data, 'post', VideosRecord.fromSnapshot),
        },
      ),
  'ListaDeUsuarios': ParameterData.none(),
  'CriarNovaNota': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
