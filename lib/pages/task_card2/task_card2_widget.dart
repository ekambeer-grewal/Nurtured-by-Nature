import '/backend/backend.dart';
import '/components/questions_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'task_card2_model.dart';
export 'task_card2_model.dart';

/// Task card that shows task with a checkmark button
class TaskCard2Widget extends StatefulWidget {
  const TaskCard2Widget({
    super.key,
    this.taskText,
  });

  final String? taskText;

  @override
  State<TaskCard2Widget> createState() => _TaskCard2WidgetState();
}

class _TaskCard2WidgetState extends State<TaskCard2Widget> {
  late TaskCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskCard2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 142.0,
      height: 185.0,
      decoration: BoxDecoration(
        color: Color(0xFFE4EDDB),
        boxShadow: [
          BoxShadow(
            blurRadius: 6.0,
            color: Color(0x33000000),
            offset: Offset(
              3.0,
              8.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100.0,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  FFAppState().TaskText2,
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                        ),
                        color: Colors.black,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFE4EDDB),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        0.0,
                      ),
                      spreadRadius: 2.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).alternate,
                      ),
                      child: Checkbox(
                        value: _model.checkboxValue ??=
                            FFAppState().Iscomplete2,
                        onChanged: (newValue) async {
                          safeSetState(() => _model.checkboxValue = newValue!);
                          if (newValue!) {
                            logFirebaseEvent(
                                'TASK_CARD2_Checkbox_0btl7zi3_ON_TOGGLE_O');
                            logFirebaseEvent('Checkbox_google_analytics_event');
                            logFirebaseEvent('nature_task_complete_right');
                            logFirebaseEvent('Checkbox_backend_call');

                            await FFAppState()
                                .TaskRef2!
                                .update(createUserTasksRecordData(
                                  isComplete2: true,
                                ));
                            logFirebaseEvent('Checkbox_bottom_sheet');
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: QuestionsWidget(),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          } else {
                            logFirebaseEvent(
                                'TASK_CARD2_Checkbox_0btl7zi3_ON_TOGGLE_O');
                            logFirebaseEvent('Checkbox_backend_call');

                            await FFAppState()
                                .TaskRef2!
                                .update(createUserTasksRecordData(
                                  isComplete2: false,
                                ));
                          }
                        },
                        side: (FlutterFlowTheme.of(context).alternate != null)
                            ? BorderSide(
                                width: 2,
                                color: FlutterFlowTheme.of(context).alternate,
                              )
                            : null,
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Text(
                      _model.checkboxValue! ? 'Done' : 'In Progress',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                            color: Color(0xFF3A7349),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
