import '/components/task_card2_widget.dart';
import '/components/task_card3_widget.dart';
import '/components/task_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'weekly_tasks_widget.dart' show WeeklyTasksWidget;
import 'package:flutter/material.dart';

class WeeklyTasksModel extends FlutterFlowModel<WeeklyTasksWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TaskCard component.
  late TaskCardModel taskCardModel;
  // Model for TaskCard2 component.
  late TaskCard2Model taskCard2Model;
  // Model for TaskCard3 component.
  late TaskCard3Model taskCard3Model;

  @override
  void initState(BuildContext context) {
    taskCardModel = createModel(context, () => TaskCardModel());
    taskCard2Model = createModel(context, () => TaskCard2Model());
    taskCard3Model = createModel(context, () => TaskCard3Model());
  }

  @override
  void dispose() {
    taskCardModel.dispose();
    taskCard2Model.dispose();
    taskCard3Model.dispose();
  }
}
