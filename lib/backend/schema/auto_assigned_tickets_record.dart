import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AutoAssignedTicketsRecord extends FirestoreRecord {
  AutoAssignedTicketsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "assigned_agent" field.
  String? _assignedAgent;
  String get assignedAgent => _assignedAgent ?? '';
  bool hasAssignedAgent() => _assignedAgent != null;

  // "assigned_at" field.
  String? _assignedAt;
  String get assignedAt => _assignedAt ?? '';
  bool hasAssignedAt() => _assignedAt != null;

  // "due_date" field.
  String? _dueDate;
  String get dueDate => _dueDate ?? '';
  bool hasDueDate() => _dueDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "isDone" field.
  bool? _isDone;
  bool get isDone => _isDone ?? false;
  bool hasIsDone() => _isDone != null;

  void _initializeFields() {
    _assignedAgent = snapshotData['assigned_agent'] as String?;
    _assignedAt = snapshotData['assigned_at'] as String?;
    _dueDate = snapshotData['due_date'] as String?;
    _status = snapshotData['status'] as String?;
    _title = snapshotData['title'] as String?;
    _isDone = snapshotData['isDone'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AutoAssignedTickets');

  static Stream<AutoAssignedTicketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AutoAssignedTicketsRecord.fromSnapshot(s));

  static Future<AutoAssignedTicketsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AutoAssignedTicketsRecord.fromSnapshot(s));

  static AutoAssignedTicketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AutoAssignedTicketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AutoAssignedTicketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AutoAssignedTicketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AutoAssignedTicketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AutoAssignedTicketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAutoAssignedTicketsRecordData({
  String? assignedAgent,
  String? assignedAt,
  String? dueDate,
  String? status,
  String? title,
  bool? isDone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'assigned_agent': assignedAgent,
      'assigned_at': assignedAt,
      'due_date': dueDate,
      'status': status,
      'title': title,
      'isDone': isDone,
    }.withoutNulls,
  );

  return firestoreData;
}

class AutoAssignedTicketsRecordDocumentEquality
    implements Equality<AutoAssignedTicketsRecord> {
  const AutoAssignedTicketsRecordDocumentEquality();

  @override
  bool equals(AutoAssignedTicketsRecord? e1, AutoAssignedTicketsRecord? e2) {
    return e1?.assignedAgent == e2?.assignedAgent &&
        e1?.assignedAt == e2?.assignedAt &&
        e1?.dueDate == e2?.dueDate &&
        e1?.status == e2?.status &&
        e1?.title == e2?.title &&
        e1?.isDone == e2?.isDone;
  }

  @override
  int hash(AutoAssignedTicketsRecord? e) => const ListEquality().hash([
        e?.assignedAgent,
        e?.assignedAt,
        e?.dueDate,
        e?.status,
        e?.title,
        e?.isDone
      ]);

  @override
  bool isValidKey(Object? o) => o is AutoAssignedTicketsRecord;
}
