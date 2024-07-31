import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_up_username_confirmation_model.dart';
export 'sign_up_username_confirmation_model.dart';

class SignUpUsernameConfirmationWidget extends StatefulWidget {
  const SignUpUsernameConfirmationWidget({super.key});

  @override
  State<SignUpUsernameConfirmationWidget> createState() =>
      _SignUpUsernameConfirmationWidgetState();
}

class _SignUpUsernameConfirmationWidgetState
    extends State<SignUpUsernameConfirmationWidget> {
  late SignUpUsernameConfirmationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpUsernameConfirmationModel());

    _model.emailHIDDENTextController ??=
        TextEditingController(text: FFAppState().signupEmail);
    _model.emailHIDDENFocusNode ??= FocusNode();

    _model.passwordHIDDENTextController ??=
        TextEditingController(text: FFAppState().signupPassword);
    _model.passwordHIDDENFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('SignUp_Password');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Icon(
                                        FFIcons.karrowLeft,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 58.0, 0.0, 0.0),
                              child: Text(
                                'Inscreva-se como',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ),
                            Text(
                              '${_model.emailHIDDENTextController.text}?',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                    lineHeight: 1.5,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  40.0, 18.0, 40.0, 0.0),
                              child: Text(
                                'Você sempre pode alterar seu nome mais tarde.\nE você consegue excluir sua conta caso queira.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ),
                            TextFormField(
                              controller: _model.emailHIDDENTextController,
                              focusNode: _model.emailHIDDENFocusNode,
                              autofocus: false,
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 0.0,
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model
                                  .emailHIDDENTextControllerValidator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.passwordHIDDENTextController,
                              focusNode: _model.passwordHIDDENFocusNode,
                              autofocus: false,
                              readOnly: true,
                              obscureText: !_model.passwordHIDDENVisibility,
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => _model.passwordHIDDENVisibility =
                                        !_model.passwordHIDDENVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.passwordHIDDENVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Colors.white,
                                    size: 0.0,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 0.0,
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model
                                  .passwordHIDDENTextControllerValidator
                                  .asValidator(context),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                            child: Checkbox(
                              value: _model.checkboxValue ??= true,
                              onChanged: (newValue) async {
                                setState(
                                    () => _model.checkboxValue = newValue!);
                              },
                              side: BorderSide(
                                width: 2,
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              activeColor: Color(0xFFE2E2E2),
                              checkColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 20.0, 24.0),
                            child: Text(
                              'Ao tocar em Cadastrar, você concorda \ncom nossos Termos,Política de \nPrivacidade e Política de Cookies.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: Color(0xFFDADADA),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 12.0, 40.0, 0.0),
                      child: FutureBuilder<List<AdministrativeRecord>>(
                        future: queryAdministrativeRecordOnce(
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 12.0,
                                height: 12.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.white,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<AdministrativeRecord>
                              signUpButtonAdministrativeRecordList =
                              snapshot.data!;
                          final signUpButtonAdministrativeRecord =
                              signUpButtonAdministrativeRecordList.isNotEmpty
                                  ? signUpButtonAdministrativeRecordList.first
                                  : null;

                          return FFButtonWidget(
                            onPressed: () async {
                              GoRouter.of(context).prepareAuthEvent();

                              final user =
                                  await authManager.createAccountWithEmail(
                                context,
                                _model.emailHIDDENTextController.text,
                                _model.passwordHIDDENTextController.text,
                              );
                              if (user == null) {
                                return;
                              }

                              await UsersRecord.collection
                                  .doc(user.uid)
                                  .update(createUsersRecordData(
                                    displayName: FFAppState().signupName,
                                  ));

                              context.pushNamedAuth(
                                  'meuperfil', context.mounted);

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Conta criada com sucesso',
                                    style: TextStyle(
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Colors.white,
                                ),
                              );

                              await signUpButtonAdministrativeRecord!.reference
                                  .update({
                                ...mapToFirestore(
                                  {
                                    'usernames': FieldValue.arrayUnion(
                                        [FFAppState().signupName]),
                                  },
                                ),
                              });

                              await FollowersRecord.createDoc(
                                      currentUserReference!)
                                  .set({
                                ...mapToFirestore(
                                  {
                                    'userRefs': FFAppState().emptyList,
                                  },
                                ),
                              });

                              await BookmarksRecord.createDoc(
                                      currentUserReference!)
                                  .set(createBookmarksRecordData());
                            },
                            text: 'Cadastrar Conta',
                            options: FFButtonOptions(
                              width: 530.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'já tem uma conta?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.goNamed(
                                  'login',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.leftToRight,
                                    ),
                                  },
                                );
                              },
                              child: Text(
                                'ENTRAR',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
