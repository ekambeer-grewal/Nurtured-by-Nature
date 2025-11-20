import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "logincount" field.
  int? _logincount;
  int get logincount => _logincount ?? 0;
  bool hasLogincount() => _logincount != null;

  // "experienceScore" field.
  int? _experienceScore;
  int get experienceScore => _experienceScore ?? 0;
  bool hasExperienceScore() => _experienceScore != null;

  // "recommendScore" field.
  int? _recommendScore;
  int get recommendScore => _recommendScore ?? 0;
  bool hasRecommendScore() => _recommendScore != null;

  // "wellnessScore" field.
  int? _wellnessScore;
  int get wellnessScore => _wellnessScore ?? 0;
  bool hasWellnessScore() => _wellnessScore != null;

  // "nps_done" field.
  bool? _npsDone;
  bool get npsDone => _npsDone ?? false;
  bool hasNpsDone() => _npsDone != null;

  // "isWeatherSever" field.
  bool? _isWeatherSever;
  bool get isWeatherSever => _isWeatherSever ?? false;
  bool hasIsWeatherSever() => _isWeatherSever != null;

  // "lastLogin" field.
  DateTime? _lastLogin;
  DateTime? get lastLogin => _lastLogin;
  bool hasLastLogin() => _lastLogin != null;

  // "streakCount" field.
  int? _streakCount;
  int get streakCount => _streakCount ?? 0;
  bool hasStreakCount() => _streakCount != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _city = snapshotData['city'] as String?;
    _logincount = castToType<int>(snapshotData['logincount']);
    _experienceScore = castToType<int>(snapshotData['experienceScore']);
    _recommendScore = castToType<int>(snapshotData['recommendScore']);
    _wellnessScore = castToType<int>(snapshotData['wellnessScore']);
    _npsDone = snapshotData['nps_done'] as bool?;
    _isWeatherSever = snapshotData['isWeatherSever'] as bool?;
    _lastLogin = snapshotData['lastLogin'] as DateTime?;
    _streakCount = castToType<int>(snapshotData['streakCount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? city,
  int? logincount,
  int? experienceScore,
  int? recommendScore,
  int? wellnessScore,
  bool? npsDone,
  bool? isWeatherSever,
  DateTime? lastLogin,
  int? streakCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'city': city,
      'logincount': logincount,
      'experienceScore': experienceScore,
      'recommendScore': recommendScore,
      'wellnessScore': wellnessScore,
      'nps_done': npsDone,
      'isWeatherSever': isWeatherSever,
      'lastLogin': lastLogin,
      'streakCount': streakCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.city == e2?.city &&
        e1?.logincount == e2?.logincount &&
        e1?.experienceScore == e2?.experienceScore &&
        e1?.recommendScore == e2?.recommendScore &&
        e1?.wellnessScore == e2?.wellnessScore &&
        e1?.npsDone == e2?.npsDone &&
        e1?.isWeatherSever == e2?.isWeatherSever &&
        e1?.lastLogin == e2?.lastLogin &&
        e1?.streakCount == e2?.streakCount;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.city,
        e?.logincount,
        e?.experienceScore,
        e?.recommendScore,
        e?.wellnessScore,
        e?.npsDone,
        e?.isWeatherSever,
        e?.lastLogin,
        e?.streakCount
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
