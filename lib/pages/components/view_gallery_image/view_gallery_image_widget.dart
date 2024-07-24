import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'view_gallery_image_model.dart';
export 'view_gallery_image_model.dart';

class ViewGalleryImageWidget extends StatefulWidget {
  const ViewGalleryImageWidget({
    super.key,
    required this.galleryRef,
  });

  final GalleryRecord? galleryRef;

  @override
  State<ViewGalleryImageWidget> createState() => _ViewGalleryImageWidgetState();
}

class _ViewGalleryImageWidgetState extends State<ViewGalleryImageWidget> {
  late ViewGalleryImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewGalleryImageModel());

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
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          Navigator.pop(context);
        },
        child: Container(
          width: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 350.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 500.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 500.0;
            } else {
              return 900.0;
            }
          }(),
          height: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 350.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 500.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 500.0;
            } else {
              return 900.0;
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        widget.galleryRef!.image,
                        width: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 350.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 500.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 500.0;
                          } else {
                            return 900.0;
                          }
                        }(),
                        height: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 350.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 500.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 500.0;
                          } else {
                            return 900.0;
                          }
                        }(),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.galleryRef?.location,
                          'Destination Name',
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineSmallFamily,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              fontSize: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 40.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 70.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 70.0;
                                } else {
                                  return 90.0;
                                }
                              }(),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .headlineSmallFamily),
                            ),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 8.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 16.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 16.0;
                } else {
                  return 20.0;
                }
              }())),
            ),
          ),
        ),
      ),
    );
  }
}
