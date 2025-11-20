import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/material.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  Local state fields for this page.

  int? randomInt1;

  int? randomInt2;

  int? randomInt3;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Login widget.
  UserTasksRecord? userTaskListUpdate;
  // Stores action output result for [Backend Call - API (SeverWeatherTask)] action in Login widget.
  ApiCallResponse? apiResult;
  // Stores action output result for [Firestore Query - Query a collection] action in Login widget.
  List<TasksRecord>? taskList;
  // Stores action output result for [Firestore Query - Query a collection] action in Login widget.
  UserTasksRecord? userTaskList;
  // Stores action output result for [Firestore Query - Query a collection] action in Login widget.
  List<SeverConditionTaskRecord>? taskListSever;
  // Stores action output result for [Firestore Query - Query a collection] action in Login widget.
  UserTasksRecord? userTaskSeverList;
  // Stores action output result for [Firestore Query - Query a collection] action in Login widget.
  UserTasksRecord? userTaskList2;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  UserTasksRecord? userTaskListGoogle;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
