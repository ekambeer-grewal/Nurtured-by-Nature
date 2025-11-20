import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:nurtured_by_nature/flutter_flow/flutter_flow_icon_button.dart';
import 'package:nurtured_by_nature/flutter_flow/flutter_flow_widgets.dart';
import 'package:nurtured_by_nature/flutter_flow/flutter_flow_theme.dart';
import 'package:nurtured_by_nature/index.dart';
import 'package:nurtured_by_nature/main.dart';
import 'package:nurtured_by_nature/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:nurtured_by_nature/backend/firebase/firebase_config.dart';
import 'package:nurtured_by_nature/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();

    await FlutterFlowTheme.initialize();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  testWidgets('splash page to signup page', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 6000));
    await tester.tap(find.byKey(const ValueKey('SignUp_9ar6')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
  });

  testWidgets('account creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.enterText(
        find.byKey(const ValueKey('Email_7n2s')), 'dredre@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('Password_08fk')), 'password123');
    await tester.enterText(
        find.byKey(const ValueKey('ConfirmPassword_7q8x')), 'password123');
    await tester.tap(find.byKey(const ValueKey('Signup_19b7')));
    expect(find.text('Name'), findsOneWidget);
  });

  testWidgets('Profile Creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    await tester.enterText(find.byKey(const ValueKey('Name_0sqg')), 'Ekam');
    await tester.enterText(
        find.byKey(const ValueKey('City_vyce')), 'Providence');
    await tester.tap(find.byKey(const ValueKey('CreateAcc_q1vo')));
    await tester.pumpAndSettle(const Duration(milliseconds: 6000));
    expect(find.text('Let\'s take your daily moment of nature.'), findsWidgets);
  });

  testWidgets('US2 Login', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.enterText(find.text('Email'), 'xxxx@example.com');
    await tester.enterText(find.text('Password'), 'test123456');
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    expect(find.text('Daily Task'), findsOneWidget);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }
  // Web-specific error when interacting with TextInputType.emailAddress
  if (error.contains('setSelectionRange') &&
      error.contains('HTMLInputElement')) {
    return true;
  }

  return false;
}
