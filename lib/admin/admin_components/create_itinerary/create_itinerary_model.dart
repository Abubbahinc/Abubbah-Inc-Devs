import '/flutter_flow/flutter_flow_util.dart';
import 'create_itinerary_widget.dart' show CreateItineraryWidget;
import 'package:flutter/material.dart';

class CreateItineraryModel extends FlutterFlowModel<CreateItineraryWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DestinationName widget.
  FocusNode? destinationNameFocusNode;
  TextEditingController? destinationNameTextController;
  String? Function(BuildContext, String?)?
      destinationNameTextControllerValidator;
  String? _destinationNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Destination widget.
  FocusNode? destinationFocusNode;
  TextEditingController? destinationTextController;
  String? Function(BuildContext, String?)? destinationTextControllerValidator;
  String? _destinationTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CatchPhrase widget.
  FocusNode? catchPhraseFocusNode;
  TextEditingController? catchPhraseTextController;
  String? Function(BuildContext, String?)? catchPhraseTextControllerValidator;
  String? _catchPhraseTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CallToAction widget.
  FocusNode? callToActionFocusNode;
  TextEditingController? callToActionTextController;
  String? Function(BuildContext, String?)? callToActionTextControllerValidator;
  String? _callToActionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    destinationNameTextControllerValidator =
        _destinationNameTextControllerValidator;
    destinationTextControllerValidator = _destinationTextControllerValidator;
    catchPhraseTextControllerValidator = _catchPhraseTextControllerValidator;
    callToActionTextControllerValidator = _callToActionTextControllerValidator;
  }

  @override
  void dispose() {
    destinationNameFocusNode?.dispose();
    destinationNameTextController?.dispose();

    destinationFocusNode?.dispose();
    destinationTextController?.dispose();

    catchPhraseFocusNode?.dispose();
    catchPhraseTextController?.dispose();

    callToActionFocusNode?.dispose();
    callToActionTextController?.dispose();
  }
}
