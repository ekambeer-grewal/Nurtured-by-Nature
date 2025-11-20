import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeverConditionTaskRecord extends FirestoreRecord {
  SeverConditionTaskRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "task" field.
  String? _task;
  String get task => _task ?? '';
  bool hasTask() => _task != null;

  // "isComplete" field.
  bool? _isComplete;
  bool get isComplete => _isComplete ?? false;
  bool hasIsComplete() => _isComplete != null;

  void _initializeFields() {
    _task = snapshotData['task'] as String?;
    _isComplete = snapshotData['isComplete'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SeverConditionTask');

  static Stream<SeverConditionTaskRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeverConditionTaskRecord.fromSnapshot(s));

  static Future<SeverConditionTaskRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SeverConditionTaskRecord.fromSnapshot(s));

  static SeverConditionTaskRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SeverConditionTaskRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeverConditionTaskRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeverConditionTaskRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeverConditionTaskRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeverConditionTaskRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeverConditionTaskRecordData({
  String? task,
  bool? isComplete,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task': task,
      'isComplete': isComplete,
    }.withoutNulls,
  );

  return firestoreData;
}

class SeverConditionTaskRecordDocumentEquality
    implements Equality<SeverConditionTaskRecord> {
  const SeverConditionTaskRecordDocumentEquality();

  @override
  bool equals(SeverConditionTaskRecord? e1, SeverConditionTaskRecord? e2) {
    return e1?.task == e2?.task && e1?.isComplete == e2?.isComplete;
  }

  @override
  int hash(SeverConditionTaskRecord? e) =>
      const ListEquality().hash([e?.task, e?.isComplete]);

  @override
  bool isValidKey(Object? o) => o is SeverConditionTaskRecord;
}
