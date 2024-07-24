import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'messages_component_model.dart';
export 'messages_component_model.dart';

class MessagesComponentWidget extends StatefulWidget {
  const MessagesComponentWidget({
    super.key,
    required this.messagesRef,
  });

  final MessagesRecord? messagesRef;

  @override
  State<MessagesComponentWidget> createState() =>
      _MessagesComponentWidgetState();
}

class _MessagesComponentWidgetState extends State<MessagesComponentWidget> {
  late MessagesComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessagesComponentModel());

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
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 500.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 600.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 600.0;
          } else {
            return 700.0;
          }
        }(),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).primary,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.messagesRef?.messageTitle,
                            'Title',
                          ),
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 20.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 30.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 30.0;
                                  } else {
                                    return 40.0;
                                  }
                                }(),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).primary,
                        size: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 30.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 35.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 35.0;
                          } else {
                            return 50.0;
                          }
                        }(),
                      ),
                    ),
                  ].divide(const SizedBox(width: 16.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.messagesRef?.itineraryRef != null)
                      StreamBuilder<ItinerariesRecord>(
                        stream: ItinerariesRecord.getDocument(
                            widget.messagesRef!.itineraryRef!),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }

                          final imageItinerariesRecord = snapshot.data!;

                          return ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                imageItinerariesRecord.locationImage,
                                'https://picsum.photos/seed/764/600',
                              ),
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 120.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 180.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 180.0;
                                } else {
                                  return 360.0;
                                }
                              }(),
                              height: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 180.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 250.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 250.0;
                                } else {
                                  return 500.0;
                                }
                              }(),
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                    if (widget.messagesRef?.featuredTripsRef != null)
                      StreamBuilder<FeaturedTripsRecord>(
                        stream: FeaturedTripsRecord.getDocument(
                            widget.messagesRef!.featuredTripsRef!),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }

                          final imageFeaturedTripsRecord = snapshot.data!;

                          return ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                imageFeaturedTripsRecord.tripImage,
                                'https://picsum.photos/seed/764/600',
                              ),
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 120.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 180.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 180.0;
                                } else {
                                  return 360.0;
                                }
                              }(),
                              height: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 180.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 250.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 250.0;
                                } else {
                                  return 500.0;
                                }
                              }(),
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget
                                              .messagesRef?.messageDescription,
                                          'Message Body',
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              fontSize: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 20.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 20.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 20.0;
                                                } else {
                                                  return 24.0;
                                                }
                                              }(),
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 16.0)),
                              ),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                      ),
                  ].divide(const SizedBox(width: 20.0)),
                ),
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.messagesRef?.messageDescription,
                                'Message Body',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 20.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 20.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 20.0;
                                      } else {
                                        return 24.0;
                                      }
                                    }(),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                  ),
              ].divide(const SizedBox(height: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
