// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? id,
    String? createdAt,
    String? nickname,
    int? memberOfTeam,
    String? avatar,
  })  : _id = id,
        _createdAt = createdAt,
        _nickname = nickname,
        _memberOfTeam = memberOfTeam,
        _avatar = avatar;

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

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        nickname: data['Nickname'] as String?,
        memberOfTeam: castToType<int>(data['MemberOfTeam']),
        avatar: data['Avatar'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'Nickname': _nickname,
        'MemberOfTeam': _memberOfTeam,
        'Avatar': _avatar,
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
        'MemberOfTeam': serializeParam(
          _memberOfTeam,
          ParamType.int,
        ),
        'Avatar': serializeParam(
          _avatar,
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
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nickname == other.nickname &&
        memberOfTeam == other.memberOfTeam &&
        avatar == other.avatar;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, nickname, memberOfTeam, avatar]);
}

UserStruct createUserStruct({
  int? id,
  String? createdAt,
  String? nickname,
  int? memberOfTeam,
  String? avatar,
}) =>
    UserStruct(
      id: id,
      createdAt: createdAt,
      nickname: nickname,
      memberOfTeam: memberOfTeam,
      avatar: avatar,
    );
