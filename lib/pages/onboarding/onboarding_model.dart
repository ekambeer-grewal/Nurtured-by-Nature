import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_profphoto = false;
  FFUploadedFile uploadedLocalFile_profphoto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_profphoto = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();
  }
}
