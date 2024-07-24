import '/flutter_flow/flutter_flow_util.dart';
import 'create_gallery_post_widget.dart' show CreateGalleryPostWidget;
import 'package:flutter/material.dart';

class CreateGalleryPostModel extends FlutterFlowModel<CreateGalleryPostWidget> {
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

  @override
  void initState(BuildContext context) {
    destinationNameTextControllerValidator =
        _destinationNameTextControllerValidator;
  }

  @override
  void dispose() {
    destinationNameFocusNode?.dispose();
    destinationNameTextController?.dispose();
  }
}
