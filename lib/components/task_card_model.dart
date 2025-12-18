import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'task_card_widget.dart' show TaskCardWidget;
import 'package:flutter/material.dart';

class TaskCardModel extends FlutterFlowModel<TaskCardWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (generateNatureFact)] action in Checkbox widget.
  ApiCallResponse? funFactResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
