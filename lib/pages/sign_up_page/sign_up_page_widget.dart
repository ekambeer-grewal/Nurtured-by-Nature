import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_up_page_model.dart';
export 'sign_up_page_model.dart';

class SignUpPageWidget extends StatefulWidget {
  const SignUpPageWidget({super.key});

  static String routeName = 'SignUpPage';
  static String routePath = '/signUpPage';

  @override
  State<SignUpPageWidget> createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  late SignUpPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'SignUpPage'});
    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.confirmPasswordTextController ??= TextEditingController();
    _model.confirmPasswordFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                              'SIGN_UP_PAGE_PAGE_NavigateBack_ON_TAP');
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
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 110.0, 0.0, 0.0),
                            child: Container(
                              width: 300.0,
                              height: 490.0,
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
                                padding: EdgeInsets.all(27.0),
                                child: Container(
                                  width: 160.0,
                                  height: 160.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: Image.asset(
                                        'assets/images/Screenshot_2025-10-19_at_9.02.30_PM.png',
                                      ).image,
                                    ),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: Text(
                                  'Sign Up',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: Container(
                                  width: 200.0,
                                  child: TextFormField(
                                    key: ValueKey('Email_7n2s'),
                                    controller: _model.emailTextController,
                                    focusNode: _model.emailFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.emailTextController',
                                      Duration(milliseconds: 2000),
                                      () => safeSetState(() {}),
                                    ),
                                    autofocus: false,
                                    enabled: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'Email',
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
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFBEAA7D),
                                      suffixIcon: _model.emailTextController!
                                              .text.isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.emailTextController
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
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    keyboardType: TextInputType.emailAddress,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    enableInteractiveSelection: true,
                                    validator: _model
                                        .emailTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: Container(
                                  width: 200.0,
                                  child: TextFormField(
                                    key: ValueKey('Password_08fk'),
                                    controller: _model.passwordTextController,
                                    focusNode: _model.passwordFocusNode,
                                    autofocus: false,
                                    enabled: true,
                                    obscureText: !_model.passwordVisibility,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'Password',
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
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFBEAA7D),
                                      suffixIcon: InkWell(
                                        onTap: () => safeSetState(
                                          () => _model.passwordVisibility =
                                              !_model.passwordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF3A7349),
                                          size: 22,
                                        ),
                                      ),
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
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    enableInteractiveSelection: true,
                                    validator: _model
                                        .passwordTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200.0,
                                child: TextFormField(
                                  key: ValueKey('ConfirmPassword_7q8x'),
                                  controller:
                                      _model.confirmPasswordTextController,
                                  focusNode: _model.confirmPasswordFocusNode,
                                  autofocus: false,
                                  enabled: true,
                                  obscureText:
                                      !_model.confirmPasswordVisibility,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Re-Enter Password',
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
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
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
                                    suffixIcon: InkWell(
                                      onTap: () => safeSetState(
                                        () => _model.confirmPasswordVisibility =
                                            !_model.confirmPasswordVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        _model.confirmPasswordVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0xFF3A7349),
                                        size: 22,
                                      ),
                                    ),
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
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model
                                      .confirmPasswordTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 12.0),
                                child: FFButtonWidget(
                                  key: ValueKey('Signup_19b7'),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'SIGN_UP_PAGE_PAGE_Signup_ON_TAP');
                                    logFirebaseEvent('Signup_auth');
                                    GoRouter.of(context).prepareAuthEvent();
                                    if (_model.passwordTextController.text !=
                                        _model.confirmPasswordTextController
                                            .text) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Passwords don\'t match!',
                                          ),
                                        ),
                                      );
                                      return;
                                    }

                                    final user = await authManager
                                        .createAccountWithEmail(
                                      context,
                                      _model.emailTextController.text,
                                      _model.passwordTextController.text,
                                    );
                                    if (user == null) {
                                      return;
                                    }

                                    logFirebaseEvent('Signup_backend_call');

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'logincount': FieldValue.increment(1),
                                        },
                                      ),
                                    });
                                    logFirebaseEvent('Signup_firestore_query');
                                    _model.taskList =
                                        await queryTasksRecordOnce();
                                    // RandomIndex1
                                    logFirebaseEvent('Signup_RandomIndex1');
                                    _model.randomIndex1 =
                                        random_data.randomInteger(0, 6);
                                    safeSetState(() {});
                                    // RandomIndex2
                                    logFirebaseEvent('Signup_RandomIndex2');
                                    _model.randomIndex2 =
                                        random_data.randomInteger(0, 6);
                                    safeSetState(() {});
                                    // RandomIndex3
                                    logFirebaseEvent('Signup_RandomIndex3');
                                    _model.randomIndex3 =
                                        random_data.randomInteger(0, 6);
                                    safeSetState(() {});
                                    while ((_model.randomIndex1 ==
                                            _model.randomIndex2) ||
                                        (_model.randomIndex3 ==
                                            _model.randomIndex2)) {
                                      // RandomIndex2
                                      logFirebaseEvent('Signup_RandomIndex2');
                                      _model.randomIndex2 = 0;
                                      safeSetState(() {});
                                    }
                                    while ((_model.randomIndex1 ==
                                            _model.randomIndex3) ||
                                        (_model.randomIndex2 ==
                                            _model.randomIndex3)) {
                                      // RandomIndex3
                                      logFirebaseEvent('Signup_RandomIndex3');
                                      _model.randomIndex3 = 0;
                                      safeSetState(() {});
                                    }
                                    logFirebaseEvent(
                                        'Signup_update_page_state');
                                    _model.taskText1 = _model.taskList
                                        ?.elementAtOrNull(_model.randomIndex1)
                                        ?.text;
                                    _model.taskText2 = _model.taskList
                                        ?.elementAtOrNull(_model.randomIndex2)
                                        ?.text;
                                    _model.taskText3 = _model.taskList
                                        ?.elementAtOrNull(_model.randomIndex3)
                                        ?.text;
                                    safeSetState(() {});
                                    logFirebaseEvent('Signup_backend_call');

                                    var userTasksRecordReference =
                                        UserTasksRecord.createDoc(
                                            currentUserReference!);
                                    await userTasksRecordReference
                                        .set(createUserTasksRecordData(
                                      task1: _model.taskText1,
                                      isComplete1: _model.taskList
                                          ?.elementAtOrNull(_model.randomIndex1)
                                          ?.isComplete,
                                      task2: _model.taskText2,
                                      task3: _model.taskText3,
                                      isComplete2: _model.taskList
                                          ?.elementAtOrNull(_model.randomIndex2)
                                          ?.isComplete,
                                      isComplete3: _model.taskList
                                          ?.elementAtOrNull(_model.randomIndex3)
                                          ?.isComplete,
                                    ));
                                    _model.userTaskList =
                                        UserTasksRecord.getDocumentFromData(
                                            createUserTasksRecordData(
                                              task1: _model.taskText1,
                                              isComplete1: _model.taskList
                                                  ?.elementAtOrNull(
                                                      _model.randomIndex1)
                                                  ?.isComplete,
                                              task2: _model.taskText2,
                                              task3: _model.taskText3,
                                              isComplete2: _model.taskList
                                                  ?.elementAtOrNull(
                                                      _model.randomIndex2)
                                                  ?.isComplete,
                                              isComplete3: _model.taskList
                                                  ?.elementAtOrNull(
                                                      _model.randomIndex3)
                                                  ?.isComplete,
                                            ),
                                            userTasksRecordReference);
                                    logFirebaseEvent('Signup_update_app_state');
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
                                    logFirebaseEvent('Signup_navigate_to');

                                    context.pushNamedAuth(
                                        OnboardingWidget.routeName,
                                        context.mounted);

                                    safeSetState(() {});
                                  },
                                  text: 'Sign Up',
                                  options: FFButtonOptions(
                                    width: 150.0,
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
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 80.0,
                                    height: 3.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      'Or Login with',
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
                                            color: Color(0xFF3A7349),
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Container(
                                    width: 80.0,
                                    height: 3.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor: Color(0x003A7349),
                                    icon: FaIcon(
                                      FontAwesomeIcons.google,
                                      color: Color(0xFF3A7349),
                                      size: 28.0,
                                    ),
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'SIGN_UP_PAGE_PAGE_google_ICN_ON_TAP');
                                      logFirebaseEvent('IconButton_auth');
                                      GoRouter.of(context).prepareAuthEvent();
                                      final user = await authManager
                                          .signInWithGoogle(context);
                                      if (user == null) {
                                        return;
                                      }
                                      logFirebaseEvent(
                                          'IconButton_backend_call');

                                      await currentUserReference!.update({
                                        ...mapToFirestore(
                                          {
                                            'logincount':
                                                FieldValue.increment(1),
                                          },
                                        ),
                                      });
                                      logFirebaseEvent(
                                          'IconButton_firestore_query');
                                      _model.taskListGoogle =
                                          await queryTasksRecordOnce(
                                        limit: 3,
                                      );
                                      // RandomIndex1
                                      logFirebaseEvent(
                                          'IconButton_RandomIndex1');
                                      _model.randomIndex1 =
                                          random_data.randomInteger(0, 2);
                                      safeSetState(() {});
                                      // RandomIndex2
                                      logFirebaseEvent(
                                          'IconButton_RandomIndex2');
                                      _model.randomIndex2 =
                                          random_data.randomInteger(0, 2);
                                      safeSetState(() {});
                                      // RandomIndex3
                                      logFirebaseEvent(
                                          'IconButton_RandomIndex3');
                                      _model.randomIndex3 =
                                          random_data.randomInteger(0, 2);
                                      safeSetState(() {});
                                      while ((_model.randomIndex1 ==
                                              _model.randomIndex2) ||
                                          (_model.randomIndex3 ==
                                              _model.randomIndex2)) {
                                        // RandomIndex2
                                        logFirebaseEvent(
                                            'IconButton_RandomIndex2');
                                        _model.randomIndex2 = 0;
                                        safeSetState(() {});
                                      }
                                      while ((_model.randomIndex1 ==
                                              _model.randomIndex3) ||
                                          (_model.randomIndex2 ==
                                              _model.randomIndex3)) {
                                        // RandomIndex3
                                        logFirebaseEvent(
                                            'IconButton_RandomIndex3');
                                        _model.randomIndex3 = 0;
                                        safeSetState(() {});
                                      }
                                      logFirebaseEvent(
                                          'IconButton_update_page_state');
                                      _model.taskText1 = _model.taskList
                                          ?.elementAtOrNull(_model.randomIndex1)
                                          ?.text;
                                      _model.taskText2 = _model.taskList
                                          ?.elementAtOrNull(_model.randomIndex2)
                                          ?.text;
                                      _model.taskText3 = _model.taskList
                                          ?.elementAtOrNull(_model.randomIndex3)
                                          ?.text;
                                      safeSetState(() {});
                                      logFirebaseEvent(
                                          'IconButton_backend_call');

                                      var userTasksRecordReference =
                                          UserTasksRecord.createDoc(
                                              currentUserReference!);
                                      await userTasksRecordReference
                                          .set(createUserTasksRecordData(
                                        task1: _model.taskText1,
                                        isComplete1: _model.taskList
                                            ?.elementAtOrNull(
                                                _model.randomIndex1)
                                            ?.isComplete,
                                        task2: _model.taskText2,
                                        task3: _model.taskText3,
                                        isComplete2: _model.taskList
                                            ?.elementAtOrNull(
                                                _model.randomIndex2)
                                            ?.isComplete,
                                        isComplete3: _model.taskList
                                            ?.elementAtOrNull(
                                                _model.randomIndex3)
                                            ?.isComplete,
                                      ));
                                      _model.userTaskListGoogle =
                                          UserTasksRecord.getDocumentFromData(
                                              createUserTasksRecordData(
                                                task1: _model.taskText1,
                                                isComplete1: _model.taskList
                                                    ?.elementAtOrNull(
                                                        _model.randomIndex1)
                                                    ?.isComplete,
                                                task2: _model.taskText2,
                                                task3: _model.taskText3,
                                                isComplete2: _model.taskList
                                                    ?.elementAtOrNull(
                                                        _model.randomIndex2)
                                                    ?.isComplete,
                                                isComplete3: _model.taskList
                                                    ?.elementAtOrNull(
                                                        _model.randomIndex3)
                                                    ?.isComplete,
                                              ),
                                              userTasksRecordReference);
                                      logFirebaseEvent(
                                          'IconButton_update_app_state');
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
                                      logFirebaseEvent(
                                          'IconButton_navigate_to');

                                      context.pushNamedAuth(
                                          OnboardingWidget.routeName,
                                          context.mounted);

                                      safeSetState(() {});
                                    },
                                  ),
                                ]
                                    .addToStart(SizedBox(width: 1.0))
                                    .addToEnd(SizedBox(width: 1.0)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Alredy have an account?',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.istokWeb(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFFD6E3BA),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('SIGN_UP_PAGE_PAGE_LOGIN_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');

                        context.goNamed(LoginpageWidget.routeName);
                      },
                      text: 'Login',
                      options: FFButtonOptions(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0x003A7349),
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
                                  color: Color(0xFFD6E3BA),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                        hoverTextColor: Color(0xFF3A7349),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
