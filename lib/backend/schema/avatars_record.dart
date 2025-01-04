import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvatarsRecord extends FirestoreRecord {
  AvatarsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "greenb" field.
  String? _greenb;
  String get greenb => _greenb ?? '';
  bool hasGreenb() => _greenb != null;

  // "specsb" field.
  String? _specsb;
  String get specsb => _specsb ?? '';
  bool hasSpecsb() => _specsb != null;

  // "beard" field.
  String? _beard;
  String get beard => _beard ?? '';
  bool hasBeard() => _beard != null;

  // "aunty" field.
  String? _aunty;
  String get aunty => _aunty ?? '';
  bool hasAunty() => _aunty != null;

  // "cap" field.
  String? _cap;
  String get cap => _cap ?? '';
  bool hasCap() => _cap != null;

  // "girl" field.
  String? _girl;
  String get girl => _girl ?? '';
  bool hasGirl() => _girl != null;

  // "orangeb" field.
  String? _orangeb;
  String get orangeb => _orangeb ?? '';
  bool hasOrangeb() => _orangeb != null;

  // "orangeg" field.
  String? _orangeg;
  String get orangeg => _orangeg ?? '';
  bool hasOrangeg() => _orangeg != null;

  // "uncle" field.
  String? _uncle;
  String get uncle => _uncle ?? '';
  bool hasUncle() => _uncle != null;

  void _initializeFields() {
    _greenb = snapshotData['greenb'] as String?;
    _specsb = snapshotData['specsb'] as String?;
    _beard = snapshotData['beard'] as String?;
    _aunty = snapshotData['aunty'] as String?;
    _cap = snapshotData['cap'] as String?;
    _girl = snapshotData['girl'] as String?;
    _orangeb = snapshotData['orangeb'] as String?;
    _orangeg = snapshotData['orangeg'] as String?;
    _uncle = snapshotData['uncle'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('avatars');

  static Stream<AvatarsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvatarsRecord.fromSnapshot(s));

  static Future<AvatarsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AvatarsRecord.fromSnapshot(s));

  static AvatarsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AvatarsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvatarsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvatarsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvatarsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvatarsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvatarsRecordData({
  String? greenb,
  String? specsb,
  String? beard,
  String? aunty,
  String? cap,
  String? girl,
  String? orangeb,
  String? orangeg,
  String? uncle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'greenb': greenb,
      'specsb': specsb,
      'beard': beard,
      'aunty': aunty,
      'cap': cap,
      'girl': girl,
      'orangeb': orangeb,
      'orangeg': orangeg,
      'uncle': uncle,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvatarsRecordDocumentEquality implements Equality<AvatarsRecord> {
  const AvatarsRecordDocumentEquality();

  @override
  bool equals(AvatarsRecord? e1, AvatarsRecord? e2) {
    return e1?.greenb == e2?.greenb &&
        e1?.specsb == e2?.specsb &&
        e1?.beard == e2?.beard &&
        e1?.aunty == e2?.aunty &&
        e1?.cap == e2?.cap &&
        e1?.girl == e2?.girl &&
        e1?.orangeb == e2?.orangeb &&
        e1?.orangeg == e2?.orangeg &&
        e1?.uncle == e2?.uncle;
  }

  @override
  int hash(AvatarsRecord? e) => const ListEquality().hash([
        e?.greenb,
        e?.specsb,
        e?.beard,
        e?.aunty,
        e?.cap,
        e?.girl,
        e?.orangeb,
        e?.orangeg,
        e?.uncle
      ]);

  @override
  bool isValidKey(Object? o) => o is AvatarsRecord;
}
