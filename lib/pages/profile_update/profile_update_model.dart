import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_update_widget.dart' show ProfileUpdateWidget;
import 'package:flutter/material.dart';

class ProfileUpdateModel extends FlutterFlowModel<ProfileUpdateWidget> {
  ///  Local state fields for this page.

  int? randomInt1;

  int? randomInt2;

  int? randomInt3;

  String textTask1 = 'Task 1';

  String textTask2 = 'Task 2';

  String textTask3 = 'Task 3';

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  bool isDataUploading_updateProfphoto = false;
  FFUploadedFile uploadedLocalFile_updateProfphoto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_updateProfphoto = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    return null;
  }

  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  String? _cityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'City is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    cityTextControllerValidator = _cityTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();
  }
}
