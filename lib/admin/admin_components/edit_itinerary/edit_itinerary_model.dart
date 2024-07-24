import '/flutter_flow/flutter_flow_util.dart';
import 'edit_itinerary_widget.dart' show EditItineraryWidget;
import 'package:flutter/material.dart';

class EditItineraryModel extends FlutterFlowModel<EditItineraryWidget> {
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
  // State field(s) for Destination widget.
  FocusNode? destinationFocusNode;
  TextEditingController? destinationTextController;
  String? Function(BuildContext, String?)? destinationTextControllerValidator;
  // State field(s) for CatchPhrase widget.
  FocusNode? catchPhraseFocusNode;
  TextEditingController? catchPhraseTextController;
  String? Function(BuildContext, String?)? catchPhraseTextControllerValidator;
  // State field(s) for CallToAction widget.
  FocusNode? callToActionFocusNode;
  TextEditingController? callToActionTextController;
  String? Function(BuildContext, String?)? callToActionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

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
