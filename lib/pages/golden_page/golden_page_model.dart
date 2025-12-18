import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/advisory_banner_widget.dart';
import '/components/task_card2_widget.dart';
import '/components/task_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'golden_page_widget.dart' show GoldenPageWidget;
import 'package:flutter/material.dart';

class GoldenPageModel extends FlutterFlowModel<GoldenPageWidget> {
  ///  Local state fields for this page.

  TasksRecord? randomTask1;

  TasksRecord? randomTask2;

  TasksRecord? randomTask3;

  int randomIndex1 = 0;

  int randomIndex2 = 0;

  int randomIndex3 = 0;

  String taskText1 = 'Task 1';

  String taskText2 = 'Text 2';

  String taskText3 = 'Task 3';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in GoldenPage widget.
  List<TasksRecord>? taskList;
  // Stores action output result for [Firestore Query - Query a collection] action in GoldenPage widget.
  UserTasksRecord? userTaskList;
  // Stores action output result for [Backend Call - API (SeverWeatherTask)] action in GoldenPage widget.
  ApiCallResponse? cityWeather;
  // Model for TaskCard component.
  late TaskCardModel taskCardModel;
  // Model for TaskCard2 component.
  late TaskCard2Model taskCard2Model;
  // Model for AdvisoryBanner component.
  late AdvisoryBannerModel advisoryBannerModel;

  @override
  void initState(BuildContext context) {
    taskCardModel = createModel(context, () => TaskCardModel());
    taskCard2Model = createModel(context, () => TaskCard2Model());
    advisoryBannerModel = createModel(context, () => AdvisoryBannerModel());
  }

  @override
  void dispose() {
    taskCardModel.dispose();
    taskCard2Model.dispose();
    advisoryBannerModel.dispose();
  }
}
