// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatStruct extends BaseStruct {
  ChatStruct({
    int? id,
    String? createdAt,
    String? lastMessage,
    String? lastMessageDate,
    String? lastMessageTime,
    List<int>? companion1,
    List<int>? companion2,
  })  : _id = id,
        _createdAt = createdAt,
        _lastMessage = lastMessage,
        _lastMessageDate = lastMessageDate,
        _lastMessageTime = lastMessageTime,
        _companion1 = companion1,
        _companion2 = companion2;

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

  // "LastMessage" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  set lastMessage(String? val) => _lastMessage = val;
  bool hasLastMessage() => _lastMessage != null;

  // "LastMessageDate" field.
  String? _lastMessageDate;
  String get lastMessageDate => _lastMessageDate ?? '';
  set lastMessageDate(String? val) => _lastMessageDate = val;
  bool hasLastMessageDate() => _lastMessageDate != null;

  // "LastMessageTime" field.
  String? _lastMessageTime;
  String get lastMessageTime => _lastMessageTime ?? '';
  set lastMessageTime(String? val) => _lastMessageTime = val;
  bool hasLastMessageTime() => _lastMessageTime != null;

  // "companion1" field.
  List<int>? _companion1;
  List<int> get companion1 => _companion1 ?? const [];
  set companion1(List<int>? val) => _companion1 = val;
  void updateCompanion1(Function(List<int>) updateFn) =>
      updateFn(_companion1 ??= []);
  bool hasCompanion1() => _companion1 != null;

  // "companion2" field.
  List<int>? _companion2;
  List<int> get companion2 => _companion2 ?? const [];
  set companion2(List<int>? val) => _companion2 = val;
  void updateCompanion2(Function(List<int>) updateFn) =>
      updateFn(_companion2 ??= []);
  bool hasCompanion2() => _companion2 != null;

  static ChatStruct fromMap(Map<String, dynamic> data) => ChatStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        lastMessage: data['LastMessage'] as String?,
        lastMessageDate: data['LastMessageDate'] as String?,
        lastMessageTime: data['LastMessageTime'] as String?,
        companion1: getDataList(data['companion1']),
        companion2: getDataList(data['companion2']),
      );

  static ChatStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ChatStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'LastMessage': _lastMessage,
        'LastMessageDate': _lastMessageDate,
        'LastMessageTime': _lastMessageTime,
        'companion1': _companion1,
        'companion2': _companion2,
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
        'LastMessage': serializeParam(
          _lastMessage,
          ParamType.String,
        ),
        'LastMessageDate': serializeParam(
          _lastMessageDate,
          ParamType.String,
        ),
        'LastMessageTime': serializeParam(
          _lastMessageTime,
          ParamType.String,
        ),
        'companion1': serializeParam(
          _companion1,
          ParamType.int,
          true,
        ),
        'companion2': serializeParam(
          _companion2,
          ParamType.int,
          true,
        ),
      }.withoutNulls;

  static ChatStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatStruct(
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
        lastMessage: deserializeParam(
          data['LastMessage'],
          ParamType.String,
          false,
        ),
        lastMessageDate: deserializeParam(
          data['LastMessageDate'],
          ParamType.String,
          false,
        ),
        lastMessageTime: deserializeParam(
          data['LastMessageTime'],
          ParamType.String,
          false,
        ),
        companion1: deserializeParam<int>(
          data['companion1'],
          ParamType.int,
          true,
        ),
        companion2: deserializeParam<int>(
          data['companion2'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'ChatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChatStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        lastMessage == other.lastMessage &&
        lastMessageDate == other.lastMessageDate &&
        lastMessageTime == other.lastMessageTime &&
        listEquality.equals(companion1, other.companion1) &&
        listEquality.equals(companion2, other.companion2);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        lastMessage,
        lastMessageDate,
        lastMessageTime,
        companion1,
        companion2
      ]);
}

ChatStruct createChatStruct({
  int? id,
  String? createdAt,
  String? lastMessage,
  String? lastMessageDate,
  String? lastMessageTime,
}) =>
    ChatStruct(
      id: id,
      createdAt: createdAt,
      lastMessage: lastMessage,
      lastMessageDate: lastMessageDate,
      lastMessageTime: lastMessageTime,
    );
