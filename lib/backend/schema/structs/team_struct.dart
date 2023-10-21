// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamStruct extends BaseStruct {
  TeamStruct({
    int? id,
    String? createdAt,
    String? name,
    List<int>? members,
    String? tag,
    String? logo,
    String? creator,
    List<UserStruct>? user,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        _members = members,
        _tag = tag,
        _logo = logo,
        _creator = creator,
        _user = user;

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

  // "Members" field.
  List<int>? _members;
  List<int> get members => _members ?? const [];
  set members(List<int>? val) => _members = val;
  void updateMembers(Function(List<int>) updateFn) => updateFn(_members ??= []);
  bool hasMembers() => _members != null;

  // "Tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  // "Logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  // "Creator" field.
  String? _creator;
  String get creator => _creator ?? '';
  set creator(String? val) => _creator = val;
  bool hasCreator() => _creator != null;

  // "User" field.
  List<UserStruct>? _user;
  List<UserStruct> get user => _user ?? const [];
  set user(List<UserStruct>? val) => _user = val;
  void updateUser(Function(List<UserStruct>) updateFn) =>
      updateFn(_user ??= []);
  bool hasUser() => _user != null;

  static TeamStruct fromMap(Map<String, dynamic> data) => TeamStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        name: data['Name'] as String?,
        members: getDataList(data['Members']),
        tag: data['Tag'] as String?,
        logo: data['Logo'] as String?,
        creator: data['Creator'] as String?,
        user: getStructList(
          data['User'],
          UserStruct.fromMap,
        ),
      );

  static TeamStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TeamStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'Name': _name,
        'Members': _members,
        'Tag': _tag,
        'Logo': _logo,
        'Creator': _creator,
        'User': _user?.map((e) => e.toMap()).toList(),
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
        'Members': serializeParam(
          _members,
          ParamType.int,
          true,
        ),
        'Tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'Logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'Creator': serializeParam(
          _creator,
          ParamType.String,
        ),
        'User': serializeParam(
          _user,
          ParamType.DataStruct,
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
        members: deserializeParam<int>(
          data['Members'],
          ParamType.int,
          true,
        ),
        tag: deserializeParam(
          data['Tag'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['Logo'],
          ParamType.String,
          false,
        ),
        creator: deserializeParam(
          data['Creator'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam<UserStruct>(
          data['User'],
          ParamType.DataStruct,
          true,
          structBuilder: UserStruct.fromSerializableMap,
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
        listEquality.equals(members, other.members) &&
        tag == other.tag &&
        logo == other.logo &&
        creator == other.creator &&
        listEquality.equals(user, other.user);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, name, members, tag, logo, creator, user]);
}

TeamStruct createTeamStruct({
  int? id,
  String? createdAt,
  String? name,
  String? tag,
  String? logo,
  String? creator,
}) =>
    TeamStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      tag: tag,
      logo: logo,
      creator: creator,
    );
