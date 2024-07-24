import '/flutter_flow/flutter_flow_util.dart';
import 'edit_gallery_post_widget.dart' show EditGalleryPostWidget;
import 'package:flutter/material.dart';

class EditGalleryPostModel extends FlutterFlowModel<EditGalleryPostWidget> {
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    destinationNameFocusNode?.dispose();
    destinationNameTextController?.dispose();
  }
}
