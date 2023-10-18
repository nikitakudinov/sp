// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamStruct extends BaseStruct {
  TeamStruct({
    int? id,
    String? createdAt,
    String? name,
    String? tag,
    List<String>? members,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        _tag = tag,
        _members = members;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "Tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  // "Members" field.
  List<String>? _members;
  List<String> get members => _members ?? const [];
  set members(List<String>? val) => _members = val;
  void updateMembers(Function(List<String>) updateFn) =>
      updateFn(_members ??= []);
  bool hasMembers() => _members != null;

  static TeamStruct fromMap(Map<String, dynamic> data) => TeamStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        name: data['Name'] as String?,
        tag: data['Tag'] as String?,
        members: getDataList(data['Members']),
      );

  static TeamStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TeamStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'Name': _name,
        'Tag': _tag,
        'Members': _members,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'Members': serializeParam(
          _members,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static TeamStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        tag: deserializeParam(
          data['Tag'],
          ParamType.String,
          false,
        ),
        members: deserializeParam<String>(
          data['Members'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'TeamStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TeamStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        tag == other.tag &&
        listEquality.equals(members, other.members);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, name, tag, members]);
}

TeamStruct createTeamStruct({
  int? id,
  String? createdAt,
  String? name,
  String? tag,
}) =>
    TeamStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      tag: tag,
    );
