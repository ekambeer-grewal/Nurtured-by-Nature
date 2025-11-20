import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  Local state fields for this page.

  int randomInt1 = 0;

  int randomInt2 = 0;

  int randomInt3 = 0;

  String textTask1 = 'Task 1';

  String textTask2 = 'Task 2';

  String textTask3 = 'Task 3';

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  bool isDataUploading_profphoto = false;
  FFUploadedFile uploadedLocalFile_profphoto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_profphoto = '';

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

  // Stores action output result for [Firestore Query - Query a collection] action in CreateAcc widget.
  List<TasksRecord>? taskList;
  // Stores action output result for [Backend Call - API (SeverWeatherTask)] action in CreateAcc widget.
  ApiCallResponse? cityWeather;
  // Stores action output result for [Firestore Query - Query a collection] action in CreateAcc widget.
  List<SeverConditionTaskRecord>? severWeatherTaskList;
  // Stores action output result for [Backend Call - Create Document] action in CreateAcc widget.
  UserTasksRecord? userTaskList;

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
