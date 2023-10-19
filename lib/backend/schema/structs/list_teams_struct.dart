// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListTeamsStruct extends BaseStruct {
  ListTeamsStruct({
    List<TeamStruct>? teams,
  }) : _teams = teams;

  // "Teams" field.
  List<TeamStruct>? _teams;
  List<TeamStruct> get teams => _teams ?? const [];
  set teams(List<TeamStruct>? val) => _teams = val;
  void updateTeams(Function(List<TeamStruct>) updateFn) =>
      updateFn(_teams ??= []);
  bool hasTeams() => _teams != null;

  static ListTeamsStruct fromMap(Map<String, dynamic> data) => ListTeamsStruct(
        teams: getStructList(
          data['Teams'],
          TeamStruct.fromMap,
        ),
      );

  static ListTeamsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ListTeamsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Teams': _teams?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Teams': serializeParam(
          _teams,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ListTeamsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListTeamsStruct(
        teams: deserializeStructParam<TeamStruct>(
          data['Teams'],
          ParamType.DataStruct,
          true,
          structBuilder: TeamStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ListTeamsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListTeamsStruct && listEquality.equals(teams, other.teams);
  }

  @override
  int get hashCode => const ListEquality().hash([teams]);
}

ListTeamsStruct createListTeamsStruct() => ListTeamsStruct();
