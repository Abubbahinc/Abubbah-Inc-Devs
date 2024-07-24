import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItinerariesRecord extends FirestoreRecord {
  ItinerariesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "LocationImage" field.
  String? _locationImage;
  String get locationImage => _locationImage ?? '';
  bool hasLocationImage() => _locationImage != null;

  // "LocationName" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "Caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  bool hasCaption() => _caption != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "CallToAction" field.
  String? _callToAction;
  String get callToAction => _callToAction ?? '';
  bool hasCallToAction() => _callToAction != null;

  void _initializeFields() {
    _locationImage = snapshotData['LocationImage'] as String?;
    _locationName = snapshotData['LocationName'] as String?;
    _caption = snapshotData['Caption'] as String?;
    _description = snapshotData['Description'] as String?;
    _callToAction = snapshotData['CallToAction'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Itineraries');

  static Stream<ItinerariesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItinerariesRecord.fromSnapshot(s));

  static Future<ItinerariesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItinerariesRecord.fromSnapshot(s));

  static ItinerariesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItinerariesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItinerariesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItinerariesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItinerariesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItinerariesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItinerariesRecordData({
  String? locationImage,
  String? locationName,
  String? caption,
  String? description,
  String? callToAction,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'LocationImage': locationImage,
      'LocationName': locationName,
      'Caption': caption,
      'Description': description,
      'CallToAction': callToAction,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItinerariesRecordDocumentEquality implements Equality<ItinerariesRecord> {
  const ItinerariesRecordDocumentEquality();

  @override
  bool equals(ItinerariesRecord? e1, ItinerariesRecord? e2) {
    return e1?.locationImage == e2?.locationImage &&
        e1?.locationName == e2?.locationName &&
        e1?.caption == e2?.caption &&
        e1?.description == e2?.description &&
        e1?.callToAction == e2?.callToAction;
  }

  @override
  int hash(ItinerariesRecord? e) => const ListEquality().hash([
        e?.locationImage,
        e?.locationName,
        e?.caption,
        e?.description,
        e?.callToAction
      ]);

  @override
  bool isValidKey(Object? o) => o is ItinerariesRecord;
}
