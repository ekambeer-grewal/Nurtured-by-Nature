import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserTasksRecord extends FirestoreRecord {
  UserTasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "task1" field.
  String? _task1;
  String get task1 => _task1 ?? '';
  bool hasTask1() => _task1 != null;

  // "task2" field.
  String? _task2;
  String get task2 => _task2 ?? '';
  bool hasTask2() => _task2 != null;

  // "task3" field.
  String? _task3;
  String get task3 => _task3 ?? '';
  bool hasTask3() => _task3 != null;

  // "isComplete1" field.
  bool? _isComplete1;
  bool get isComplete1 => _isComplete1 ?? false;
  bool hasIsComplete1() => _isComplete1 != null;

  // "isComplete2" field.
  bool? _isComplete2;
  bool get isComplete2 => _isComplete2 ?? false;
  bool hasIsComplete2() => _isComplete2 != null;

  // "isComplete3" field.
  bool? _isComplete3;
  bool get isComplete3 => _isComplete3 ?? false;
  bool hasIsComplete3() => _isComplete3 != null;

  // "dateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _task1 = snapshotData['task1'] as String?;
    _task2 = snapshotData['task2'] as String?;
    _task3 = snapshotData['task3'] as String?;
    _isComplete1 = snapshotData['isComplete1'] as bool?;
    _isComplete2 = snapshotData['isComplete2'] as bool?;
    _isComplete3 = snapshotData['isComplete3'] as bool?;
    _dateCreated = snapshotData['dateCreated'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('UserTasks')
          : FirebaseFirestore.instance.collectionGroup('UserTasks');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('UserTasks').doc(id);

  static Stream<UserTasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserTasksRecord.fromSnapshot(s));

  static Future<UserTasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserTasksRecord.fromSnapshot(s));

  static UserTasksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserTasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserTasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserTasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserTasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserTasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserTasksRecordData({
  String? task1,
  String? task2,
  String? task3,
  bool? isComplete1,
  bool? isComplete2,
  bool? isComplete3,
  DateTime? dateCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task1': task1,
      'task2': task2,
      'task3': task3,
      'isComplete1': isComplete1,
      'isComplete2': isComplete2,
      'isComplete3': isComplete3,
      'dateCreated': dateCreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserTasksRecordDocumentEquality implements Equality<UserTasksRecord> {
  const UserTasksRecordDocumentEquality();

  @override
  bool equals(UserTasksRecord? e1, UserTasksRecord? e2) {
    return e1?.task1 == e2?.task1 &&
        e1?.task2 == e2?.task2 &&
        e1?.task3 == e2?.task3 &&
        e1?.isComplete1 == e2?.isComplete1 &&
        e1?.isComplete2 == e2?.isComplete2 &&
        e1?.isComplete3 == e2?.isComplete3 &&
        e1?.dateCreated == e2?.dateCreated;
  }

  @override
  int hash(UserTasksRecord? e) => const ListEquality().hash([
        e?.task1,
        e?.task2,
        e?.task3,
        e?.isComplete1,
        e?.isComplete2,
        e?.isComplete3,
        e?.dateCreated
      ]);

  @override
  bool isValidKey(Object? o) => o is UserTasksRecord;
}
