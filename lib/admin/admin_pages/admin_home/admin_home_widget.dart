import '/admin/admin_components/create_admin/create_admin_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'admin_home_model.dart';
export 'admin_home_model.dart';

class AdminHomeWidget extends StatefulWidget {
  const AdminHomeWidget({super.key});

  @override
  State<AdminHomeWidget> createState() => _AdminHomeWidgetState();
}

class _AdminHomeWidgetState extends State<AdminHomeWidget> {
  late AdminHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminHomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.goNamed(
                                'Home',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.leftToRight,
                                    duration: Duration(milliseconds: 300),
                                  ),
                                },
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/LOGO_ONLY.png',
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 50.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 80.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 120.0;
                                  } else {
                                    return 170.0;
                                  }
                                }(),
                                height: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 50.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 80.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 120.0;
                                  } else {
                                    return 170.0;
                                  }
                                }(),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Builder(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: const AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: const CreateAdminWidget(),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.person_add_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 30.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 35.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 35.0;
                                                } else {
                                                  return 50.0;
                                                }
                                              }(),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                'Create Admin',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 16.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 30.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 30.0;
                                                            } else {
                                                              return 40.0;
                                                            }
                                                          }(),
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily),
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.goNamed(
                                          'Messages',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 300),
                                            ),
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.mail_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 30.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 35.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 35.0;
                                              } else {
                                                return 50.0;
                                              }
                                            }(),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Messages',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 30.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 30.0;
                                                          } else {
                                                            return 40.0;
                                                          }
                                                        }(),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily),
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        GoRouter.of(context).prepareAuthEvent();
                                        await authManager.signOut();
                                        GoRouter.of(context)
                                            .clearRedirectLocation();

                                        context.goNamedAuth(
                                            'Home', context.mounted);
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.logout_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 30.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 35.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 35.0;
                                              } else {
                                                return 50.0;
                                              }
                                            }(),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Logout',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 30.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 30.0;
                                                          } else {
                                                            return 40.0;
                                                          }
                                                        }(),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily),
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 16.0)),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.goNamed(
                                            'About',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/361/600',
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 120.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 180.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 180.0;
                                                    } else {
                                                      return 300.0;
                                                    }
                                                  }(),
                                                  height: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 180.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 250.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 250.0;
                                                    } else {
                                                      return 450.0;
                                                    }
                                                  }(),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'About IXORA',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displayLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displayLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 14.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 20.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 20.0;
                                                                    } else {
                                                                      return 40.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .displayLargeFamily),
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
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'Itineraries',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/361/600',
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 120.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 180.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 180.0;
                                                    } else {
                                                      return 300.0;
                                                    }
                                                  }(),
                                                  height: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 180.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 250.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 250.0;
                                                    } else {
                                                      return 450.0;
                                                    }
                                                  }(),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Featured Trip',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displayLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displayLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 14.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 20.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 20.0;
                                                                    } else {
                                                                      return 40.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .displayLargeFamily),
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
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'Itineraries',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/361/600',
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 120.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 180.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 180.0;
                                                    } else {
                                                      return 300.0;
                                                    }
                                                  }(),
                                                  height: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 180.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 250.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 250.0;
                                                    } else {
                                                      return 450.0;
                                                    }
                                                  }(),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Our Itineraries',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displayLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displayLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 14.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 20.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 20.0;
                                                                    } else {
                                                                      return 40.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .displayLargeFamily),
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
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.goNamed(
                                            'OurTravels',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/361/600',
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 120.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 180.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 180.0;
                                                    } else {
                                                      return 300.0;
                                                    }
                                                  }(),
                                                  height: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 180.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 250.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 250.0;
                                                    } else {
                                                      return 450.0;
                                                    }
                                                  }(),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Gallery',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displayLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displayLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 14.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 20.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 20.0;
                                                                    } else {
                                                                      return 40.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .displayLargeFamily),
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
                                    ].divide(SizedBox(width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 8.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 12.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 12.0;
                                      } else {
                                        return 20.0;
                                      }
                                    }())),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      if (responsiveVisibility(
                        context: context,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.goNamed(
                                      'About',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: Stack(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/361/600',
                                            height: 500.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'About IXORA',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displayLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displayLargeFamily,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 40.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayLargeFamily),
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
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'Itineraries',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: Stack(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/361/600',
                                            height: 500.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Featured Trip',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displayLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displayLargeFamily,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 40.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayLargeFamily),
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
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'Itineraries',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: Stack(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/361/600',
                                            height: 500.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Our Itineraries',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displayLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displayLargeFamily,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 40.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayLargeFamily),
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
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.goNamed(
                                      'OurTravels',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: Stack(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/361/600',
                                            height: 500.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Gallery',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displayLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displayLargeFamily,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 40.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayLargeFamily),
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
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          ),
                        ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/GLLAS.png',
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 25.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 35.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 35.0;
                                            } else {
                                              return 35.0;
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 40.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 50.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 50.0;
                                            } else {
                                              return 50.0;
                                            }
                                          }(),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
