import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgentDataRecord extends FirestoreRecord {
  AgentDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "current_ticket_load" field.
  int? _currentTicketLoad;
  int get currentTicketLoad => _currentTicketLoad ?? 0;
  bool hasCurrentTicketLoad() => _currentTicketLoad != null;

  // "shift_start" field.
  DateTime? _shiftStart;
  DateTime? get shiftStart => _shiftStart;
  bool hasShiftStart() => _shiftStart != null;

  // "shift_end" field.
  DateTime? _shiftEnd;
  DateTime? get shiftEnd => _shiftEnd;
  bool hasShiftEnd() => _shiftEnd != null;

  void _initializeFields() {
    _status = snapshotData['status'] as String?;
    _name = snapshotData['name'] as String?;
    _currentTicketLoad = castToType<int>(snapshotData['current_ticket_load']);
    _shiftStart = snapshotData['shift_start'] as DateTime?;
    _shiftEnd = snapshotData['shift_end'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AgentData');

  static Stream<AgentDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgentDataRecord.fromSnapshot(s));

  static Future<AgentDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgentDataRecord.fromSnapshot(s));

  static AgentDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgentDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgentDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgentDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgentDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgentDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgentDataRecordData({
  String? status,
  String? name,
  int? currentTicketLoad,
  DateTime? shiftStart,
  DateTime? shiftEnd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
      'name': name,
      'current_ticket_load': currentTicketLoad,
      'shift_start': shiftStart,
      'shift_end': shiftEnd,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgentDataRecordDocumentEquality implements Equality<AgentDataRecord> {
  const AgentDataRecordDocumentEquality();

  @override
  bool equals(AgentDataRecord? e1, AgentDataRecord? e2) {
    return e1?.status == e2?.status &&
        e1?.name == e2?.name &&
        e1?.currentTicketLoad == e2?.currentTicketLoad &&
        e1?.shiftStart == e2?.shiftStart &&
        e1?.shiftEnd == e2?.shiftEnd;
  }

  @override
  int hash(AgentDataRecord? e) => const ListEquality().hash(
      [e?.status, e?.name, e?.currentTicketLoad, e?.shiftStart, e?.shiftEnd]);

  @override
  bool isValidKey(Object? o) => o is AgentDataRecord;
}
