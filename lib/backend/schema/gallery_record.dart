import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GalleryRecord extends FirestoreRecord {
  GalleryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _image = snapshotData['Image'] as String?;
    _location = snapshotData['Location'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Gallery');

  static Stream<GalleryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GalleryRecord.fromSnapshot(s));

  static Future<GalleryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GalleryRecord.fromSnapshot(s));

  static GalleryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GalleryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GalleryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GalleryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GalleryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GalleryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGalleryRecordData({
  String? image,
  String? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image': image,
      'Location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class GalleryRecordDocumentEquality implements Equality<GalleryRecord> {
  const GalleryRecordDocumentEquality();

  @override
  bool equals(GalleryRecord? e1, GalleryRecord? e2) {
    return e1?.image == e2?.image && e1?.location == e2?.location;
  }

  @override
  int hash(GalleryRecord? e) =>
      const ListEquality().hash([e?.image, e?.location]);

  @override
  bool isValidKey(Object? o) => o is GalleryRecord;
}
