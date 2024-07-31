import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/personal_post_options/personal_post_options_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'post_model.dart';
export 'post_model.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    super.key,
    this.post,
  });

  final PostsRecord? post;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  late PostModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
      child: FutureBuilder<UsersRecord>(
        future: UsersRecord.getDocumentOnce(widget!.post!.postUser!),
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

          final columnUsersRecord = snapshot.data!;

          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (columnUsersRecord.reference ==
                              currentUserReference) {
                            context.pushNamed(
                              'meuperfil',
                              queryParameters: {
                                'perfil': serializeParam(
                                  columnUsersRecord.displayName,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            context.pushNamed(
                              'perfilusuario',
                              queryParameters: {
                                'username': serializeParam(
                                  columnUsersRecord.displayName,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (columnUsersRecord.reference ==
                                    currentUserReference) {
                                  context.pushNamed(
                                    'meuperfil',
                                    queryParameters: {
                                      'perfil': serializeParam(
                                        columnUsersRecord.displayName,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else {
                                  context.pushNamed(
                                    'perfilusuario',
                                    queryParameters: {
                                      'username': serializeParam(
                                        columnUsersRecord.displayName,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                }
                              },
                              child: Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      valueOrDefault<String>(
                                        columnUsersRecord.photoUrl,
                                        'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                      ),
                                    ).image,
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xFFDADADA),
                                    width: 0.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (columnUsersRecord.reference ==
                                              currentUserReference) {
                                            context.pushNamed(
                                              'meuperfil',
                                              queryParameters: {
                                                'perfil': serializeParam(
                                                  columnUsersRecord.displayName,
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            context.pushNamed(
                                              'perfilusuario',
                                              queryParameters: {
                                                'username': serializeParam(
                                                  columnUsersRecord.displayName,
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          }
                                        },
                                        child: Text(
                                          valueOrDefault<String>(
                                            columnUsersRecord.displayName,
                                            'user',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 5.0, 0.0, 0.0),
                                        child: Icon(
                                          FFIcons.k8,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 22.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (widget!.post?.location != null &&
                                      widget!.post?.location != '')
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'perfilusuario',
                                          queryParameters: {
                                            'username': serializeParam(
                                              columnUsersRecord.reference.id,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Text(
                                        widget!.post!.location,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      if ((currentUserEmail == columnUsersRecord.email) ||
                          (currentUserEmail == 'kassiocaarvalho1@gmail.com'))
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (widget!.post?.postUser ==
                                currentUserReference) {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                barrierColor: Color(0x00000000),
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: PersonalPostOptionsWidget(
                                      post: widget!.post,
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            } else {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                barrierColor: Color(0x00000000),
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: PersonalPostOptionsWidget(
                                      post: widget!.post,
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            }
                          },
                          child: Icon(
                            FFIcons.kmore,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 0.5,
                    decoration: BoxDecoration(
                      color: Color(0xFFDADADA),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 1.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return MediaQuery.sizeOf(context).width;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return MediaQuery.sizeOf(context).width;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return MediaQuery.sizeOf(context).width;
                      } else {
                        return MediaQuery.sizeOf(context).width;
                      }
                    }(),
                    child: Stack(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      children: [
                        Container(
                          width: double.infinity,
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return MediaQuery.sizeOf(context).width;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return MediaQuery.sizeOf(context).width;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return MediaQuery.sizeOf(context).width;
                            } else {
                              return MediaQuery.sizeOf(context).width;
                            }
                          }(),
                          decoration: BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              final fotos =
                                  widget!.post?.postFotos?.toList() ?? [];

                              return Container(
                                width: double.infinity,
                                height: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return MediaQuery.sizeOf(context).width;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return MediaQuery.sizeOf(context).width;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return MediaQuery.sizeOf(context).width;
                                  } else {
                                    return MediaQuery.sizeOf(context).width;
                                  }
                                }(),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 40.0),
                                      child: PageView.builder(
                                        controller: _model
                                                .pageViewController ??=
                                            PageController(
                                                initialPage: max(0,
                                                    min(0, fotos.length - 1))),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: fotos.length,
                                        itemBuilder: (context, fotosIndex) {
                                          final fotosItem = fotos[fotosIndex];
                                          return Container(
                                            width: double.infinity,
                                            height: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return MediaQuery.sizeOf(
                                                        context)
                                                    .width;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return MediaQuery.sizeOf(
                                                        context)
                                                    .width;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return MediaQuery.sizeOf(
                                                        context)
                                                    .width;
                                              } else {
                                                return MediaQuery.sizeOf(
                                                        context)
                                                    .width;
                                              }
                                            }(),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(1.0, 0.0,
                                                                1.0, 0.0),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: Duration(
                                                          milliseconds: 50),
                                                      fadeOutDuration: Duration(
                                                          milliseconds: 50),
                                                      imageUrl: fotosItem,
                                                      width: double.infinity,
                                                      height: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width *
                                                              150.0);
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width;
                                                        } else {
                                                          return MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width;
                                                        }
                                                      }(),
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: smooth_page_indicator
                                            .SmoothPageIndicator(
                                          controller: _model
                                                  .pageViewController ??=
                                              PageController(
                                                  initialPage: max(
                                                      0,
                                                      min(0,
                                                          fotos.length - 1))),
                                          count: fotos.length,
                                          axisDirection: Axis.horizontal,
                                          onDotClicked: (i) async {
                                            await _model.pageViewController!
                                                .animateToPage(
                                              i,
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.ease,
                                            );
                                            setState(() {});
                                          },
                                          effect:
                                              smooth_page_indicator.SlideEffect(
                                            spacing: 5.0,
                                            radius: 16.0,
                                            dotWidth: 7.0,
                                            dotHeight: 7.0,
                                            dotColor: Color(0xFFB6B6B6),
                                            activeDotColor: Colors.black,
                                            paintStyle: PaintingStyle.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 6.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.currentPageLink =
                                    await generateCurrentPageLink(
                                  context,
                                  title: columnUsersRecord.displayName,
                                  imageUrl: widget!.post?.postFotos?.first,
                                  description: widget!.post?.postCaption,
                                  forceRedirect: true,
                                );

                                await Share.share(
                                  _model.currentPageLink,
                                  sharePositionOrigin:
                                      getWidgetBoundingBox(context),
                                );
                              },
                              onLongPress: () async {
                                await Share.share(
                                  _model.currentPageLink,
                                  sharePositionOrigin:
                                      getWidgetBoundingBox(context),
                                );
                              },
                              child: Container(
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF2F2F2),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FFIcons.kshare,
                                        color: Colors.black,
                                        size: 28.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          'Link',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              6.0, 0.0, 6.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await launchURL(functions
                                  .numberphone(columnUsersRecord.phoneNumber)!);
                            },
                            child: Container(
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Icon(
                                        FFIcons.k7,
                                        color: Colors.black,
                                        size: 28.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Text(
                                        'Zap',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              6.0, 0.0, 6.0, 0.0),
                          child: StreamBuilder<List<BookmarksRecord>>(
                            stream: queryBookmarksRecord(
                              parent: currentUserReference,
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
                              List<BookmarksRecord>
                                  containerBookmarksRecordList = snapshot.data!;
                              final containerBookmarksRecord =
                                  containerBookmarksRecordList.isNotEmpty
                                      ? containerBookmarksRecordList.first
                                      : null;

                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await launchURL(
                                      columnUsersRecord.linkdosplanos);
                                },
                                child: Container(
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF2F2F2),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchURL(
                                            columnUsersRecord.linkdosplanos);
                                      },
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  FFIcons.kcrownPlus,
                                                  color: Colors.black,
                                                  size: 26.0,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Planos',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              6.0, 0.0, 0.0, 0.0),
                          child: Container(
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF2F2F2),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: StreamBuilder<UsersRecord>(
                                stream: UsersRecord.getDocument(
                                    widget!.post!.postUser!),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 12.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Colors.white,
                                          ),
                                        ),
                                      ),
                                    );
                                  }

                                  final stackUsersRecord = snapshot.data!;

                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (columnUsersRecord.reference ==
                                          currentUserReference) {
                                        context.pushNamed(
                                          'meuperfil',
                                          queryParameters: {
                                            'perfil': serializeParam(
                                              columnUsersRecord.displayName,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else {
                                        context.pushNamed(
                                          'perfilusuario',
                                          queryParameters: {
                                            'username': serializeParam(
                                              columnUsersRecord.displayName,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }
                                    },
                                    child: Stack(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.person_outline,
                                                  color: Colors.black,
                                                  size: 28.0,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Perfil',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: Container(
                          width: double.infinity,
                          color: Color(0x00000000),
                          child: ExpandableNotifier(
                            controller: _model.expandableExpandableController,
                            child: ExpandablePanel(
                              header: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    columnUsersRecord.displayName,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      dateTimeFormat(
                                        'd/M/y h:mm a ',
                                        widget!.post!.timePosted!,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              collapsed: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 40.0,
                                decoration: BoxDecoration(),
                                child: Text(
                                  widget!.post!.postCaption,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              expanded: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      widget!.post!.postCaption,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Color(0x8A000000),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              theme: ExpandableThemeData(
                                tapHeaderToExpand: true,
                                tapBodyToExpand: false,
                                tapBodyToCollapse: false,
                                headerAlignment:
                                    ExpandablePanelHeaderAlignment.center,
                                hasIcon: true,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
