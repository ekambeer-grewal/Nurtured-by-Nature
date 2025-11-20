import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'popup_survey_model.dart';
export 'popup_survey_model.dart';

/// Create a component pop up survey that allows users to answers with smiley
/// faces for the following questions
///
/// experience rating?
///
/// How likely would you recommend to a friend?
/// Has Nurtured By Nature improve your mental health?
class PopupSurveyWidget extends StatefulWidget {
  const PopupSurveyWidget({super.key});

  @override
  State<PopupSurveyWidget> createState() => _PopupSurveyWidgetState();
}

class _PopupSurveyWidgetState extends State<PopupSurveyWidget> {
  late PopupSurveyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupSurveyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 12.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  4.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quick Survey',
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How would you rate your experience?',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.istokWeb(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.experienceScore == 1
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_very_dissatisfied,
                                color: Color(0xFFFF5722),
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_very_dissatisfied');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.experienceScore = 1;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.experienceScore == 2
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_dissatisfied,
                                color: Colors.orange,
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_dissatisfied_ICN_');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.experienceScore = 2;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.experienceScore == 3
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_neutral,
                                color: Color(0xFFFFC107),
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_neutral_ICN_ON_TA');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.experienceScore = 3;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.experienceScore == 4
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_satisfied,
                                color: Color(0xFF8BC34A),
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_satisfied_ICN_ON_');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.experienceScore = 4;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.experienceScore == 5
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_very_satisfied,
                                color: Colors.green,
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_very_satisfied_IC');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.experienceScore = 5;
                                safeSetState(() {});
                              },
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How likely would you recommend to a friend?',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.istokWeb(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.recommendScore == 1
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_very_dissatisfied,
                                color: Color(0xFFFF5722),
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_very_dissatisfied');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.recommendScore = 1;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.recommendScore == 2
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_dissatisfied,
                                color: Colors.orange,
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_dissatisfied_ICN_');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.recommendScore = 2;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.recommendScore == 3
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_neutral,
                                color: Color(0xFFFFC107),
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_neutral_ICN_ON_TA');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.recommendScore = 3;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.recommendScore == 4
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_satisfied,
                                color: Color(0xFF8BC34A),
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_satisfied_ICN_ON_');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.recommendScore = 4;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.recommendScore == 5
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_very_satisfied,
                                color: Colors.green,
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_very_satisfied_IC');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.recommendScore = 5;
                                safeSetState(() {});
                              },
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Has Nurtured By Nature improved your mental health?',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.istokWeb(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.wellnessScore == 1
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_very_dissatisfied,
                                color: Color(0xFFFF5722),
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_very_dissatisfied');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.wellnessScore = 1;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.wellnessScore == 2
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_dissatisfied,
                                color: Colors.orange,
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_dissatisfied_ICN_');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.wellnessScore = 2;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.wellnessScore == 3
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_neutral,
                                color: Color(0xFFFFC107),
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_neutral_ICN_ON_TA');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.wellnessScore = 3;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.wellnessScore == 4
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_satisfied,
                                color: Color(0xFF8BC34A),
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_satisfied_ICN_ON_');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.wellnessScore = 4;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 24.0,
                              buttonSize: 48.0,
                              fillColor: _model.wellnessScore == 5
                                  ? Color(0xFF81C784)
                                  : Color(0xFFFFF3E0),
                              icon: Icon(
                                Icons.sentiment_very_satisfied,
                                color: Colors.green,
                                size: 28.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'POPUP_SURVEY_sentiment_very_satisfied_IC');
                                logFirebaseEvent(
                                    'IconButton_update_component_state');
                                _model.wellnessScore = 5;
                                safeSetState(() {});
                              },
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('POPUP_SURVEY_COMP_SKIP_BTN_ON_TAP');
                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!
                            .update(createUsersRecordData(
                          npsDone: false,
                        ));
                        logFirebaseEvent('Button_bottom_sheet');
                        Navigator.pop(context);
                      },
                      text: 'Skip',
                      options: FFButtonOptions(
                        width: 100.0,
                        height: 40.0,
                        padding: EdgeInsets.all(8.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              font: GoogleFonts.istokWeb(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('POPUP_SURVEY_COMP_SUBMIT_BTN_ON_TAP');
                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!.update({
                          ...createUsersRecordData(
                            experienceScore: _model.experienceScore,
                            recommendScore: _model.recommendScore,
                            wellnessScore: _model.wellnessScore,
                            npsDone: true,
                          ),
                          ...mapToFirestore(
                            {
                              'logincount': FieldValue.increment(1),
                            },
                          ),
                        });
                        logFirebaseEvent('Button_google_analytics_event');
                        logFirebaseEvent(
                          'nps_submitted',
                          parameters: {
                            'experience': valueOrDefault(
                                currentUserDocument?.experienceScore, 0),
                            'recommend': valueOrDefault(
                                currentUserDocument?.recommendScore, 0),
                            'wellness': valueOrDefault(
                                currentUserDocument?.wellnessScore, 0),
                          },
                        );
                        logFirebaseEvent('Button_bottom_sheet');
                        Navigator.pop(context);
                      },
                      text: 'Submit',
                      options: FFButtonOptions(
                        width: 120.0,
                        height: 40.0,
                        padding: EdgeInsets.all(8.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  font: GoogleFonts.istokWeb(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
