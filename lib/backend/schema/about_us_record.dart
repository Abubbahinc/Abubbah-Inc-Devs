import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AboutUsRecord extends FirestoreRecord {
  AboutUsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Description2" field.
  String? _description2;
  String get description2 => _description2 ?? '';
  bool hasDescription2() => _description2 != null;

  // "Image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  void _initializeFields() {
    _image = snapshotData['Image'] as String?;
    _description = snapshotData['Description'] as String?;
    _description2 = snapshotData['Description2'] as String?;
    _image2 = snapshotData['Image2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AboutUs');

  static Stream<AboutUsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AboutUsRecord.fromSnapshot(s));

  static Future<AboutUsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AboutUsRecord.fromSnapshot(s));

  static AboutUsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AboutUsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AboutUsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AboutUsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AboutUsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AboutUsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAboutUsRecordData({
  String? image,
  String? description,
  String? description2,
  String? image2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image': image,
      'Description': description,
      'Description2': description2,
      'Image2': image2,
    }.withoutNulls,
  );

  return firestoreData;
}

class AboutUsRecordDocumentEquality implements Equality<AboutUsRecord> {
  const AboutUsRecordDocumentEquality();

  @override
  bool equals(AboutUsRecord? e1, AboutUsRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.description2 == e2?.description2 &&
        e1?.image2 == e2?.image2;
  }

  @override
  int hash(AboutUsRecord? e) => const ListEquality()
      .hash([e?.image, e?.description, e?.description2, e?.image2]);

  @override
  bool isValidKey(Object? o) => o is AboutUsRecord;
}
