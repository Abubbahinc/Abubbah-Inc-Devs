import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesRecord extends FirestoreRecord {
  MessagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NameOfSender" field.
  String? _nameOfSender;
  String get nameOfSender => _nameOfSender ?? '';
  bool hasNameOfSender() => _nameOfSender != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "MessageDescription" field.
  String? _messageDescription;
  String get messageDescription => _messageDescription ?? '';
  bool hasMessageDescription() => _messageDescription != null;

  // "MessageTitle" field.
  String? _messageTitle;
  String get messageTitle => _messageTitle ?? '';
  bool hasMessageTitle() => _messageTitle != null;

  // "SentTime" field.
  DateTime? _sentTime;
  DateTime? get sentTime => _sentTime;
  bool hasSentTime() => _sentTime != null;

  // "LastReadTime" field.
  DateTime? _lastReadTime;
  DateTime? get lastReadTime => _lastReadTime;
  bool hasLastReadTime() => _lastReadTime != null;

  // "ItineraryRef" field.
  DocumentReference? _itineraryRef;
  DocumentReference? get itineraryRef => _itineraryRef;
  bool hasItineraryRef() => _itineraryRef != null;

  // "FeaturedTripsRef" field.
  DocumentReference? _featuredTripsRef;
  DocumentReference? get featuredTripsRef => _featuredTripsRef;
  bool hasFeaturedTripsRef() => _featuredTripsRef != null;

  void _initializeFields() {
    _nameOfSender = snapshotData['NameOfSender'] as String?;
    _email = snapshotData['Email'] as String?;
    _messageDescription = snapshotData['MessageDescription'] as String?;
    _messageTitle = snapshotData['MessageTitle'] as String?;
    _sentTime = snapshotData['SentTime'] as DateTime?;
    _lastReadTime = snapshotData['LastReadTime'] as DateTime?;
    _itineraryRef = snapshotData['ItineraryRef'] as DocumentReference?;
    _featuredTripsRef = snapshotData['FeaturedTripsRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Messages');

  static Stream<MessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagesRecord.fromSnapshot(s));

  static Future<MessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagesRecord.fromSnapshot(s));

  static MessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagesRecordData({
  String? nameOfSender,
  String? email,
  String? messageDescription,
  String? messageTitle,
  DateTime? sentTime,
  DateTime? lastReadTime,
  DocumentReference? itineraryRef,
  DocumentReference? featuredTripsRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NameOfSender': nameOfSender,
      'Email': email,
      'MessageDescription': messageDescription,
      'MessageTitle': messageTitle,
      'SentTime': sentTime,
      'LastReadTime': lastReadTime,
      'ItineraryRef': itineraryRef,
      'FeaturedTripsRef': featuredTripsRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagesRecordDocumentEquality implements Equality<MessagesRecord> {
  const MessagesRecordDocumentEquality();

  @override
  bool equals(MessagesRecord? e1, MessagesRecord? e2) {
    return e1?.nameOfSender == e2?.nameOfSender &&
        e1?.email == e2?.email &&
        e1?.messageDescription == e2?.messageDescription &&
        e1?.messageTitle == e2?.messageTitle &&
        e1?.sentTime == e2?.sentTime &&
        e1?.lastReadTime == e2?.lastReadTime &&
        e1?.itineraryRef == e2?.itineraryRef &&
        e1?.featuredTripsRef == e2?.featuredTripsRef;
  }

  @override
  int hash(MessagesRecord? e) => const ListEquality().hash([
        e?.nameOfSender,
        e?.email,
        e?.messageDescription,
        e?.messageTitle,
        e?.sentTime,
        e?.lastReadTime,
        e?.itineraryRef,
        e?.featuredTripsRef
      ]);

  @override
  bool isValidKey(Object? o) => o is MessagesRecord;
}
