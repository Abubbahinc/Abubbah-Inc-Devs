import '/flutter_flow/flutter_flow_util.dart';
import 'edit_featured_trip_widget.dart' show EditFeaturedTripWidget;
import 'package:flutter/material.dart';

class EditFeaturedTripModel extends FlutterFlowModel<EditFeaturedTripWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TripName widget.
  FocusNode? tripNameFocusNode;
  TextEditingController? tripNameTextController;
  String? Function(BuildContext, String?)? tripNameTextControllerValidator;
  // State field(s) for Destination widget.
  FocusNode? destinationFocusNode;
  TextEditingController? destinationTextController;
  String? Function(BuildContext, String?)? destinationTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tripNameFocusNode?.dispose();
    tripNameTextController?.dispose();

    destinationFocusNode?.dispose();
    destinationTextController?.dispose();
  }
}
