// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EscreenshotscreenshotStruct extends FFFirebaseStruct {
  EscreenshotscreenshotStruct({
    String? img,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _img = img,
        super(firestoreUtilData);

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  static EscreenshotscreenshotStruct fromMap(Map<String, dynamic> data) =>
      EscreenshotscreenshotStruct(
        img: data['img'] as String?,
      );

  static EscreenshotscreenshotStruct? maybeFromMap(dynamic data) => data is Map
      ? EscreenshotscreenshotStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static EscreenshotscreenshotStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EscreenshotscreenshotStruct(
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EscreenshotscreenshotStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EscreenshotscreenshotStruct && img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([img]);
}

EscreenshotscreenshotStruct createEscreenshotscreenshotStruct({
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EscreenshotscreenshotStruct(
      img: img,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EscreenshotscreenshotStruct? updateEscreenshotscreenshotStruct(
  EscreenshotscreenshotStruct? escreenshotscreenshot, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    escreenshotscreenshot
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEscreenshotscreenshotStructData(
  Map<String, dynamic> firestoreData,
  EscreenshotscreenshotStruct? escreenshotscreenshot,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (escreenshotscreenshot == null) {
    return;
  }
  if (escreenshotscreenshot.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      escreenshotscreenshot.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final escreenshotscreenshotData = getEscreenshotscreenshotFirestoreData(
      escreenshotscreenshot, forFieldValue);
  final nestedData =
      escreenshotscreenshotData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      escreenshotscreenshot.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEscreenshotscreenshotFirestoreData(
  EscreenshotscreenshotStruct? escreenshotscreenshot, [
  bool forFieldValue = false,
]) {
  if (escreenshotscreenshot == null) {
    return {};
  }
  final firestoreData = mapToFirestore(escreenshotscreenshot.toMap());

  // Add any Firestore field values
  escreenshotscreenshot.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEscreenshotscreenshotListFirestoreData(
  List<EscreenshotscreenshotStruct>? escreenshotscreenshots,
) =>
    escreenshotscreenshots
        ?.map((e) => getEscreenshotscreenshotFirestoreData(e, true))
        .toList() ??
    [];
