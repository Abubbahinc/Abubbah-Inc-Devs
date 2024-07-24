import '/flutter_flow/flutter_flow_util.dart';
import 'edit_about_widget.dart' show EditAboutWidget;
import 'package:flutter/material.dart';

class EditAboutModel extends FlutterFlowModel<EditAboutWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for AboutMain widget.
  FocusNode? aboutMainFocusNode;
  TextEditingController? aboutMainTextController;
  String? Function(BuildContext, String?)? aboutMainTextControllerValidator;
  // State field(s) for AboutSecondary widget.
  FocusNode? aboutSecondaryFocusNode;
  TextEditingController? aboutSecondaryTextController;
  String? Function(BuildContext, String?)?
      aboutSecondaryTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    aboutMainFocusNode?.dispose();
    aboutMainTextController?.dispose();

    aboutSecondaryFocusNode?.dispose();
    aboutSecondaryTextController?.dispose();
  }
}
