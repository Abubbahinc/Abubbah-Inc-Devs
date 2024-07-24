import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeaturedTripsRecord extends FirestoreRecord {
  FeaturedTripsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "TripImage" field.
  String? _tripImage;
  String get tripImage => _tripImage ?? '';
  bool hasTripImage() => _tripImage != null;

  // "TripTitle" field.
  String? _tripTitle;
  String get tripTitle => _tripTitle ?? '';
  bool hasTripTitle() => _tripTitle != null;

  // "TripName" field.
  String? _tripName;
  String get tripName => _tripName ?? '';
  bool hasTripName() => _tripName != null;

  // "LimitedSlots" field.
  bool? _limitedSlots;
  bool get limitedSlots => _limitedSlots ?? false;
  bool hasLimitedSlots() => _limitedSlots != null;

  void _initializeFields() {
    _tripImage = snapshotData['TripImage'] as String?;
    _tripTitle = snapshotData['TripTitle'] as String?;
    _tripName = snapshotData['TripName'] as String?;
    _limitedSlots = snapshotData['LimitedSlots'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FeaturedTrips');

  static Stream<FeaturedTripsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeaturedTripsRecord.fromSnapshot(s));

  static Future<FeaturedTripsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeaturedTripsRecord.fromSnapshot(s));

  static FeaturedTripsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeaturedTripsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeaturedTripsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeaturedTripsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeaturedTripsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeaturedTripsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeaturedTripsRecordData({
  String? tripImage,
  String? tripTitle,
  String? tripName,
  bool? limitedSlots,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TripImage': tripImage,
      'TripTitle': tripTitle,
      'TripName': tripName,
      'LimitedSlots': limitedSlots,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeaturedTripsRecordDocumentEquality
    implements Equality<FeaturedTripsRecord> {
  const FeaturedTripsRecordDocumentEquality();

  @override
  bool equals(FeaturedTripsRecord? e1, FeaturedTripsRecord? e2) {
    return e1?.tripImage == e2?.tripImage &&
        e1?.tripTitle == e2?.tripTitle &&
        e1?.tripName == e2?.tripName &&
        e1?.limitedSlots == e2?.limitedSlots;
  }

  @override
  int hash(FeaturedTripsRecord? e) => const ListEquality()
      .hash([e?.tripImage, e?.tripTitle, e?.tripName, e?.limitedSlots]);

  @override
  bool isValidKey(Object? o) => o is FeaturedTripsRecord;
}
