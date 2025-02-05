import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketDataRecord extends FirestoreRecord {
  TicketDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "assigned_agent" field.
  String? _assignedAgent;
  String get assignedAgent => _assignedAgent ?? '';
  bool hasAssignedAgent() => _assignedAgent != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "estimated_time" field.
  int? _estimatedTime;
  int get estimatedTime => _estimatedTime ?? 0;
  bool hasEstimatedTime() => _estimatedTime != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _assignedAgent = snapshotData['assigned_agent'] as String?;
    _status = snapshotData['status'] as String?;
    _description = snapshotData['description'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _estimatedTime = castToType<int>(snapshotData['estimated_time']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TicketData');

  static Stream<TicketDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketDataRecord.fromSnapshot(s));

  static Future<TicketDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TicketDataRecord.fromSnapshot(s));

  static TicketDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TicketDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketDataRecordData({
  String? title,
  String? assignedAgent,
  String? status,
  String? description,
  DateTime? dueDate,
  int? estimatedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'assigned_agent': assignedAgent,
      'status': status,
      'description': description,
      'due_date': dueDate,
      'estimated_time': estimatedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class TicketDataRecordDocumentEquality implements Equality<TicketDataRecord> {
  const TicketDataRecordDocumentEquality();

  @override
  bool equals(TicketDataRecord? e1, TicketDataRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.assignedAgent == e2?.assignedAgent &&
        e1?.status == e2?.status &&
        e1?.description == e2?.description &&
        e1?.dueDate == e2?.dueDate &&
        e1?.estimatedTime == e2?.estimatedTime;
  }

  @override
  int hash(TicketDataRecord? e) => const ListEquality().hash([
        e?.title,
        e?.assignedAgent,
        e?.status,
        e?.description,
        e?.dueDate,
        e?.estimatedTime
      ]);

  @override
  bool isValidKey(Object? o) => o is TicketDataRecord;
}
