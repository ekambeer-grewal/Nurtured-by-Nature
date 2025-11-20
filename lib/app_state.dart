import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _TaskText1 = prefs.getString('ff_TaskText1') ?? _TaskText1;
    });
    _safeInit(() {
      _IsComplete1 = prefs.getBool('ff_IsComplete1') ?? _IsComplete1;
    });
    _safeInit(() {
      _TaskText2 = prefs.getString('ff_TaskText2') ?? _TaskText2;
    });
    _safeInit(() {
      _Iscomplete2 = prefs.getBool('ff_Iscomplete2') ?? _Iscomplete2;
    });
    _safeInit(() {
      _TaskText3 = prefs.getString('ff_TaskText3') ?? _TaskText3;
    });
    _safeInit(() {
      _IsComplete3 = prefs.getBool('ff_IsComplete3') ?? _IsComplete3;
    });
    _safeInit(() {
      _TaskRef1 = prefs.getString('ff_TaskRef1')?.ref ?? _TaskRef1;
    });
    _safeInit(() {
      _TaskRef2 = prefs.getString('ff_TaskRef2')?.ref ?? _TaskRef2;
    });
    _safeInit(() {
      _TaskRef3 = prefs.getString('ff_TaskRef3')?.ref ?? _TaskRef3;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _TaskText1 = '';
  String get TaskText1 => _TaskText1;
  set TaskText1(String value) {
    _TaskText1 = value;
    prefs.setString('ff_TaskText1', value);
  }

  bool _IsComplete1 = false;
  bool get IsComplete1 => _IsComplete1;
  set IsComplete1(bool value) {
    _IsComplete1 = value;
    prefs.setBool('ff_IsComplete1', value);
  }

  String _TaskText2 = '';
  String get TaskText2 => _TaskText2;
  set TaskText2(String value) {
    _TaskText2 = value;
    prefs.setString('ff_TaskText2', value);
  }

  bool _Iscomplete2 = false;
  bool get Iscomplete2 => _Iscomplete2;
  set Iscomplete2(bool value) {
    _Iscomplete2 = value;
    prefs.setBool('ff_Iscomplete2', value);
  }

  String _TaskText3 = '';
  String get TaskText3 => _TaskText3;
  set TaskText3(String value) {
    _TaskText3 = value;
    prefs.setString('ff_TaskText3', value);
  }

  bool _IsComplete3 = false;
  bool get IsComplete3 => _IsComplete3;
  set IsComplete3(bool value) {
    _IsComplete3 = value;
    prefs.setBool('ff_IsComplete3', value);
  }

  DocumentReference? _TaskRef1;
  DocumentReference? get TaskRef1 => _TaskRef1;
  set TaskRef1(DocumentReference? value) {
    _TaskRef1 = value;
    value != null
        ? prefs.setString('ff_TaskRef1', value.path)
        : prefs.remove('ff_TaskRef1');
  }

  DocumentReference? _TaskRef2;
  DocumentReference? get TaskRef2 => _TaskRef2;
  set TaskRef2(DocumentReference? value) {
    _TaskRef2 = value;
    value != null
        ? prefs.setString('ff_TaskRef2', value.path)
        : prefs.remove('ff_TaskRef2');
  }

  DocumentReference? _TaskRef3;
  DocumentReference? get TaskRef3 => _TaskRef3;
  set TaskRef3(DocumentReference? value) {
    _TaskRef3 = value;
    value != null
        ? prefs.setString('ff_TaskRef3', value.path)
        : prefs.remove('ff_TaskRef3');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
