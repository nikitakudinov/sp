// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? id,
    String? createdAt,
    String? nickname,
    String? tag,
    int? memberOfTeam,
    String? avatar,
    String? uid,
    String? role,
    String? permissionsRole,
    String? lineUp,
    String? country,
    String? flag,
  })  : _id = id,
        _createdAt = createdAt,
        _nickname = nickname,
        _tag = tag,
        _memberOfTeam = memberOfTeam,
        _avatar = avatar,
        _uid = uid,
        _role = role,
        _permissionsRole = permissionsRole,
        _lineUp = lineUp,
        _country = country,
        _flag = flag;

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

  // "Nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  set nickname(String? val) => _nickname = val;
  bool hasNickname() => _nickname != null;

  // "Tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  // "MemberOfTeam" field.
  int? _memberOfTeam;
  int get memberOfTeam => _memberOfTeam ?? 0;
  set memberOfTeam(int? val) => _memberOfTeam = val;
  void incrementMemberOfTeam(int amount) =>
      _memberOfTeam = memberOfTeam + amount;
  bool hasMemberOfTeam() => _memberOfTeam != null;

  // "Avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;
  bool hasAvatar() => _avatar != null;

  // "UID" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;
  bool hasUid() => _uid != null;

  // "Role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;
  bool hasRole() => _role != null;

  // "PermissionsRole" field.
  String? _permissionsRole;
  String get permissionsRole => _permissionsRole ?? '';
  set permissionsRole(String? val) => _permissionsRole = val;
  bool hasPermissionsRole() => _permissionsRole != null;

  // "LineUp" field.
  String? _lineUp;
  String get lineUp => _lineUp ?? '';
  set lineUp(String? val) => _lineUp = val;
  bool hasLineUp() => _lineUp != null;

  // "Country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "Flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  set flag(String? val) => _flag = val;
  bool hasFlag() => _flag != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        nickname: data['Nickname'] as String?,
        tag: data['Tag'] as String?,
        memberOfTeam: castToType<int>(data['MemberOfTeam']),
        avatar: data['Avatar'] as String?,
        uid: data['UID'] as String?,
        role: data['Role'] as String?,
        permissionsRole: data['PermissionsRole'] as String?,
        lineUp: data['LineUp'] as String?,
        country: data['Country'] as String?,
        flag: data['Flag'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'Nickname': _nickname,
        'Tag': _tag,
        'MemberOfTeam': _memberOfTeam,
        'Avatar': _avatar,
        'UID': _uid,
        'Role': _role,
        'PermissionsRole': _permissionsRole,
        'LineUp': _lineUp,
        'Country': _country,
        'Flag': _flag,
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
        'Nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
        'Tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'MemberOfTeam': serializeParam(
          _memberOfTeam,
          ParamType.int,
        ),
        'Avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'UID': serializeParam(
          _uid,
          ParamType.String,
        ),
        'Role': serializeParam(
          _role,
          ParamType.String,
        ),
        'PermissionsRole': serializeParam(
          _permissionsRole,
          ParamType.String,
        ),
        'LineUp': serializeParam(
          _lineUp,
          ParamType.String,
        ),
        'Country': serializeParam(
          _country,
          ParamType.String,
        ),
        'Flag': serializeParam(
          _flag,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
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
        nickname: deserializeParam(
          data['Nickname'],
          ParamType.String,
          false,
        ),
        tag: deserializeParam(
          data['Tag'],
          ParamType.String,
          false,
        ),
        memberOfTeam: deserializeParam(
          data['MemberOfTeam'],
          ParamType.int,
          false,
        ),
        avatar: deserializeParam(
          data['Avatar'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['UID'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['Role'],
          ParamType.String,
          false,
        ),
        permissionsRole: deserializeParam(
          data['PermissionsRole'],
          ParamType.String,
          false,
        ),
        lineUp: deserializeParam(
          data['LineUp'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['Country'],
          ParamType.String,
          false,
        ),
        flag: deserializeParam(
          data['Flag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nickname == other.nickname &&
        tag == other.tag &&
        memberOfTeam == other.memberOfTeam &&
        avatar == other.avatar &&
        uid == other.uid &&
        role == other.role &&
        permissionsRole == other.permissionsRole &&
        lineUp == other.lineUp &&
        country == other.country &&
        flag == other.flag;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        nickname,
        tag,
        memberOfTeam,
        avatar,
        uid,
        role,
        permissionsRole,
        lineUp,
        country,
        flag
      ]);
}

UserStruct createUserStruct({
  int? id,
  String? createdAt,
  String? nickname,
  String? tag,
  int? memberOfTeam,
  String? avatar,
  String? uid,
  String? role,
  String? permissionsRole,
  String? lineUp,
  String? country,
  String? flag,
}) =>
    UserStruct(
      id: id,
      createdAt: createdAt,
      nickname: nickname,
      tag: tag,
      memberOfTeam: memberOfTeam,
      avatar: avatar,
      uid: uid,
      role: role,
      permissionsRole: permissionsRole,
      lineUp: lineUp,
      country: country,
      flag: flag,
    );
