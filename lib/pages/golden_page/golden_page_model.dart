import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/task_card/task_card_widget.dart';
import '/pages/task_card2/task_card2_widget.dart';
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
  // Model for TaskCard component.
  late TaskCardModel taskCardModel;
  // Model for TaskCard2 component.
  late TaskCard2Model taskCard2Model;

  @override
  void initState(BuildContext context) {
    taskCardModel = createModel(context, () => TaskCardModel());
    taskCard2Model = createModel(context, () => TaskCard2Model());
  }

  @override
  void dispose() {
    taskCardModel.dispose();
    taskCard2Model.dispose();
  }
}
