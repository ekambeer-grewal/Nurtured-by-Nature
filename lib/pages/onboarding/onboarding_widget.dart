import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'onboarding_model.dart';
export 'onboarding_model.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({super.key});

  static String routeName = 'onboarding';
  static String routePath = '/onboarding';

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  late OnboardingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'onboarding'});
    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.cityTextController ??= TextEditingController();
    _model.cityFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: Image.asset(
                  'assets/images/Screenshot_2025-10-20_at_5.22.13_PM.png',
                ).image,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 26.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).info,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'ONBOARDING_PAGE_NavigateBack_ON_TAP');
                          logFirebaseEvent('NavigateBack_navigate_back');
                          context.safePop();
                        },
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 35.0, 20.0, 0.0),
                          child: Text(
                            'Nurtured By Nature',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF14181B),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 100.0, 0.0, 0.0),
                        child: Container(
                          width: 300.0,
                          height: 420.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFD6E3BA),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 70.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'ONBOARDING_PAGE_ProfilePicStack_ON_TAP');
                                logFirebaseEvent(
                                    'ProfilePicStack_upload_media_to_firebase');
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                  maxWidth: 68.00,
                                  allowPhoto: true,
                                );
                                if (selectedMedia != null &&
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
                                            m.storagePath, context))) {
                                  safeSetState(() =>
                                      _model.isDataUploading_profphoto = true);
                                  var selectedUploadedFiles =
                                      <FFUploadedFile>[];

                                  var downloadUrls = <String>[];
                                  try {
                                    selectedUploadedFiles = selectedMedia
                                        .map((m) => FFUploadedFile(
                                              name:
                                                  m.storagePath.split('/').last,
                                              bytes: m.bytes,
                                              height: m.dimensions?.height,
                                              width: m.dimensions?.width,
                                              blurHash: m.blurHash,
                                              originalFilename:
                                                  m.originalFilename,
                                            ))
                                        .toList();

                                    downloadUrls = (await Future.wait(
                                      selectedMedia.map(
                                        (m) async => await uploadData(
                                            m.storagePath, m.bytes),
                                      ),
                                    ))
                                        .where((u) => u != null)
                                        .map((u) => u!)
                                        .toList();
                                  } finally {
                                    _model.isDataUploading_profphoto = false;
                                  }
                                  if (selectedUploadedFiles.length ==
                                          selectedMedia.length &&
                                      downloadUrls.length ==
                                          selectedMedia.length) {
                                    safeSetState(() {
                                      _model.uploadedLocalFile_profphoto =
                                          selectedUploadedFiles.first;
                                      _model.uploadedFileUrl_profphoto =
                                          downloadUrls.first;
                                    });
                                  } else {
                                    safeSetState(() {});
                                    return;
                                  }
                                }

                                logFirebaseEvent(
                                    'ProfilePicStack_backend_call');

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  photoUrl: _model.uploadedFileUrl_profphoto,
                                ));
                              },
                              child: Stack(
                                alignment: AlignmentDirectional(-1.0, 1.0),
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 8.0),
                                    child: Container(
                                      width: 68.0,
                                      height: 68.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: Image.network(
                                            _model.uploadedFileUrl_profphoto,
                                          ).image,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(68.0),
                                        border: Border.all(
                                          color: Color(0xFF13171A),
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  FlutterFlowIconButton(
                                    borderColor: Color(0xFF14181A),
                                    borderRadius: 20.0,
                                    buttonSize: 37.0,
                                    fillColor: Colors.white,
                                    icon: Icon(
                                      Icons.add,
                                      color: Color(0xFF13171A),
                                      size: 21.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Text(
                              'Account Setup',
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Form(
                            key: _model.formKey2,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: Container(
                                width: 200.0,
                                child: TextFormField(
                                  key: ValueKey('Name_0sqg'),
                                  controller: _model.nameTextController,
                                  focusNode: _model.nameFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.nameTextController',
                                    Duration(milliseconds: 2000),
                                    () => safeSetState(() {}),
                                  ),
                                  autofocus: false,
                                  enabled: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Name',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF3A7349),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF3A7349),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFBEAA7D),
                                    suffixIcon: _model
                                            .nameTextController!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.nameTextController
                                                  ?.clear();
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFF3A7349),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.istokWeb(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF14181B),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  keyboardType: TextInputType.name,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model.nameTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Form(
                            key: _model.formKey1,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Container(
                              width: 200.0,
                              child: TextFormField(
                                key: ValueKey('City_vyce'),
                                controller: _model.cityTextController,
                                focusNode: _model.cityFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.cityTextController',
                                  Duration(milliseconds: 2000),
                                  () => safeSetState(() {}),
                                ),
                                autofocus: false,
                                enabled: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'City',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF3A7349),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF3A7349),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFBEAA7D),
                                  suffixIcon: _model
                                          .cityTextController!.text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            _model.cityTextController?.clear();
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: Color(0xFF3A7349),
                                            size: 22,
                                          ),
                                        )
                                      : null,
                                ),
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
                                      color: Color(0xFF14181B),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                cursorColor: Color(0xFF14181B),
                                enableInteractiveSelection: true,
                                validator: _model.cityTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 70.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              key: ValueKey('CreateAcc_q1vo'),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'ONBOARDING_PAGE_CreateAcc_ON_TAP');
                                logFirebaseEvent('CreateAcc_backend_call');

                                await currentUserReference!
                                    .update(createUsersRecordData(
                                  displayName: _model.nameTextController.text,
                                  city: _model.cityTextController.text,
                                ));
                                logFirebaseEvent('CreateAcc_firestore_query');
                                _model.taskList = await queryTasksRecordOnce(
                                  limit: 7,
                                );
                                // RandomIndex1
                                logFirebaseEvent('CreateAcc_RandomIndex1');
                                _model.randomInt1 =
                                    random_data.randomInteger(0, 6);
                                safeSetState(() {});
                                // RandomIndex2
                                logFirebaseEvent('CreateAcc_RandomIndex2');
                                _model.randomInt2 =
                                    random_data.randomInteger(0, 6);
                                safeSetState(() {});
                                // RandomIndex3
                                logFirebaseEvent('CreateAcc_RandomIndex3');
                                _model.randomInt3 =
                                    random_data.randomInteger(0, 6);
                                safeSetState(() {});
                                while ((_model.randomInt1 ==
                                        _model.randomInt2) ||
                                    (_model.randomInt3 == _model.randomInt2)) {
                                  // RandomIndex2
                                  logFirebaseEvent('CreateAcc_RandomIndex2');
                                  _model.randomInt2 =
                                      random_data.randomInteger(0, 6);
                                  safeSetState(() {});
                                }
                                while ((_model.randomInt1 ==
                                        _model.randomInt3) ||
                                    (_model.randomInt2 == _model.randomInt3)) {
                                  // RandomIndex3
                                  logFirebaseEvent('CreateAcc_RandomIndex3');
                                  _model.randomInt3 =
                                      random_data.randomInteger(0, 10);
                                  safeSetState(() {});
                                }
                                logFirebaseEvent('CreateAcc_backend_call');
                                _model.cityWeather =
                                    await SeverWeatherTaskCall.call(
                                  cityName: valueOrDefault(
                                      currentUserDocument?.city, ''),
                                );

                                if ((_model.cityWeather?.succeeded ?? true)) {
                                  logFirebaseEvent(
                                      'CreateAcc_update_app_state');
                                  FFAppState().cityWeatherCondition =
                                      SeverWeatherTaskCall.condition(
                                    (_model.cityWeather?.jsonBody ?? ''),
                                  )!;
                                  safeSetState(() {});
                                } else {
                                  logFirebaseEvent('CreateAcc_show_snack_bar');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Error No Value for condition for this city',
                                        style: TextStyle(
                                          color: Color(0xFFF2260A),
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4650),
                                      backgroundColor: Color(0xFFF9D3D3),
                                    ),
                                  );
                                }

                                if (functions.isNotRain(
                                    FFAppState().cityWeatherCondition)!) {
                                  logFirebaseEvent(
                                      'CreateAcc_update_page_state');
                                  _model.textTask1 = _model.taskList!
                                      .elementAtOrNull(_model.randomInt1)!
                                      .text;
                                  _model.textTask2 = _model.taskList!
                                      .elementAtOrNull(_model.randomInt2)!
                                      .text;
                                  _model.textTask3 = _model.taskList!
                                      .elementAtOrNull(_model.randomInt3)!
                                      .text;
                                  safeSetState(() {});
                                  logFirebaseEvent('CreateAcc_backend_call');

                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    isWeatherSever: false,
                                  ));
                                } else {
                                  logFirebaseEvent('CreateAcc_firestore_query');
                                  _model.severWeatherTaskList =
                                      await querySeverConditionTaskRecordOnce(
                                    limit: 7,
                                  );
                                  logFirebaseEvent(
                                      'CreateAcc_update_page_state');
                                  _model.textTask1 = _model
                                      .severWeatherTaskList!
                                      .elementAtOrNull(_model.randomInt1)!
                                      .task;
                                  _model.textTask2 = _model
                                      .severWeatherTaskList!
                                      .elementAtOrNull(_model.randomInt2)!
                                      .task;
                                  _model.textTask3 = _model
                                      .severWeatherTaskList!
                                      .elementAtOrNull(_model.randomInt3)!
                                      .task;
                                  safeSetState(() {});
                                  logFirebaseEvent('CreateAcc_backend_call');

                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    isWeatherSever: true,
                                  ));
                                }

                                logFirebaseEvent('CreateAcc_backend_call');

                                var userTasksRecordReference =
                                    UserTasksRecord.createDoc(
                                        currentUserReference!);
                                await userTasksRecordReference
                                    .set(createUserTasksRecordData(
                                  task1: _model.textTask1,
                                  isComplete1: false,
                                  task2: _model.textTask2,
                                  task3: _model.textTask3,
                                  isComplete2: false,
                                  isComplete3: false,
                                ));
                                _model.userTaskList =
                                    UserTasksRecord.getDocumentFromData(
                                        createUserTasksRecordData(
                                          task1: _model.textTask1,
                                          isComplete1: false,
                                          task2: _model.textTask2,
                                          task3: _model.textTask3,
                                          isComplete2: false,
                                          isComplete3: false,
                                        ),
                                        userTasksRecordReference);
                                logFirebaseEvent('CreateAcc_update_app_state');
                                FFAppState().TaskText1 =
                                    _model.userTaskList!.task1;
                                FFAppState().IsComplete1 =
                                    _model.userTaskList!.isComplete1;
                                FFAppState().TaskText2 =
                                    _model.userTaskList!.task2;
                                FFAppState().Iscomplete2 =
                                    _model.userTaskList!.isComplete2;
                                FFAppState().TaskText3 =
                                    _model.userTaskList!.task3;
                                FFAppState().IsComplete3 =
                                    _model.userTaskList!.isComplete3;
                                FFAppState().TaskRef1 =
                                    _model.userTaskList?.reference;
                                FFAppState().TaskRef2 =
                                    _model.userTaskList?.reference;
                                FFAppState().TaskRef3 =
                                    _model.userTaskList?.reference;
                                safeSetState(() {});
                                logFirebaseEvent('CreateAcc_navigate_to');

                                context.goNamed(GoldenPageWidget.routeName);

                                safeSetState(() {});
                              },
                              text: 'Create Account',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF3A7349),
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
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
