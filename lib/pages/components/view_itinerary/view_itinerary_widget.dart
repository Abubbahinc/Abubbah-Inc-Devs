import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'view_itinerary_model.dart';
export 'view_itinerary_model.dart';

class ViewItineraryWidget extends StatefulWidget {
  const ViewItineraryWidget({
    super.key,
    required this.itineraryRef,
  });

  final ItinerariesRecord? itineraryRef;

  @override
  State<ViewItineraryWidget> createState() => _ViewItineraryWidgetState();
}

class _ViewItineraryWidgetState extends State<ViewItineraryWidget> {
  late ViewItineraryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewItineraryModel());

    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: () {
        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
          return 350.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
          return 900.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
          return 900.0;
        } else {
          return 1200.0;
        }
      }(),
      height: () {
        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
          return 350.0;
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
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.itineraryRef?.locationName,
                        'Destination Name',
                      ),
                      textAlign: TextAlign.start,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 20.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 35.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 35.0;
                                  } else {
                                    return 70.0;
                                  }
                                }(),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
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
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          valueOrDefault<String>(
                            widget.itineraryRef?.locationImage,
                            'https://picsum.photos/seed/496/600',
                          ),
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 150.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 250.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 250.0;
                            } else {
                              return 360.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 210.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 400.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 400.0;
                            } else {
                              return 500.0;
                            }
                          }(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 150.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 350.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 350.0;
                      } else {
                        return 500.0;
                      }
                    }(),
                    height: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 250.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 350.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 350.0;
                      } else {
                        return 500.0;
                      }
                    }(),
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.itineraryRef?.caption,
                                'Destination Caption',
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
                                        return 14.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 30.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 30.0;
                                      } else {
                                        return 40.0;
                                      }
                                    }(),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .headlineSmallFamily),
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.itineraryRef?.description,
                                  'Destination Catch Phrase',
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 10.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 16.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 16.0;
                                        } else {
                                          return 30.0;
                                        }
                                      }(),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: _model.nameTextController,
                            focusNode: _model.nameFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Enter your Name',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            validator: _model.nameTextControllerValidator
                                .asValidator(context),
                          ),
                          TextFormField(
                            controller: _model.emailTextController,
                            focusNode: _model.emailFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Enter your Email',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            validator: _model.emailTextControllerValidator
                                .asValidator(context),
                          ),
                          Expanded(
                            child: Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (_model.formKey.currentState == null ||
                                      !_model.formKey.currentState!
                                          .validate()) {
                                    return;
                                  }

                                  await MessagesRecord.collection
                                      .doc()
                                      .set(createMessagesRecordData(
                                        nameOfSender:
                                            _model.nameTextController.text,
                                        email: _model.emailTextController.text,
                                        messageTitle: '${valueOrDefault<String>(
                                          widget.itineraryRef?.locationName,
                                          'Destination Name',
                                        )} Booking!!!',
                                        messageDescription:
                                            '${_model.nameTextController.text} with email address ${_model.emailTextController.text} has requested more information for our ${valueOrDefault<String>(
                                          widget.itineraryRef?.locationName,
                                          'Destination Name',
                                        )} itinerary. Kindly follow up and get all required information.',
                                        sentTime: getCurrentTimestamp,
                                        itineraryRef:
                                            widget.itineraryRef?.reference,
                                      ));
                                  Navigator.pop(context);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Nice One! Your ${valueOrDefault<String>(
                                          widget.itineraryRef?.locationName,
                                          'Destination Name',
                                        )} order has been placed. Keep an eye out for our email. Thanks for your order!',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 6000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                    ),
                                  );
                                },
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.itineraryRef?.callToAction,
                                    'Call to Action!',
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 10.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 16.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 16.0;
                                          } else {
                                            return 30.0;
                                          }
                                        }(),
                                        letterSpacing: 0.0,
                                        fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.underline,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 4.0;
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
            ].divide(SizedBox(height: () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 8.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 16.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 16.0;
              } else {
                return 20.0;
              }
            }())),
          ),
        ),
      ),
    );
  }
}
