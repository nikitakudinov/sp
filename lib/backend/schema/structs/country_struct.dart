// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountryStruct extends BaseStruct {
  CountryStruct({
    String? iso2,
    String? ruName,
    String? enName,
    String? flagLink16x12,
    String? flagLink32x24,
    String? flagLink48x36,
    String? flagLinkH24,
  })  : _iso2 = iso2,
        _ruName = ruName,
        _enName = enName,
        _flagLink16x12 = flagLink16x12,
        _flagLink32x24 = flagLink32x24,
        _flagLink48x36 = flagLink48x36,
        _flagLinkH24 = flagLinkH24;

  // "Iso2" field.
  String? _iso2;
  String get iso2 => _iso2 ?? '';
  set iso2(String? val) => _iso2 = val;
  bool hasIso2() => _iso2 != null;

  // "RuName" field.
  String? _ruName;
  String get ruName => _ruName ?? '';
  set ruName(String? val) => _ruName = val;
  bool hasRuName() => _ruName != null;

  // "EnName" field.
  String? _enName;
  String get enName => _enName ?? '';
  set enName(String? val) => _enName = val;
  bool hasEnName() => _enName != null;

  // "FlagLink16x12" field.
  String? _flagLink16x12;
  String get flagLink16x12 => _flagLink16x12 ?? '';
  set flagLink16x12(String? val) => _flagLink16x12 = val;
  bool hasFlagLink16x12() => _flagLink16x12 != null;

  // "FlagLink32x24" field.
  String? _flagLink32x24;
  String get flagLink32x24 => _flagLink32x24 ?? '';
  set flagLink32x24(String? val) => _flagLink32x24 = val;
  bool hasFlagLink32x24() => _flagLink32x24 != null;

  // "FlagLink48x36" field.
  String? _flagLink48x36;
  String get flagLink48x36 => _flagLink48x36 ?? '';
  set flagLink48x36(String? val) => _flagLink48x36 = val;
  bool hasFlagLink48x36() => _flagLink48x36 != null;

  // "FlagLinkH24" field.
  String? _flagLinkH24;
  String get flagLinkH24 => _flagLinkH24 ?? '';
  set flagLinkH24(String? val) => _flagLinkH24 = val;
  bool hasFlagLinkH24() => _flagLinkH24 != null;

  static CountryStruct fromMap(Map<String, dynamic> data) => CountryStruct(
        iso2: data['Iso2'] as String?,
        ruName: data['RuName'] as String?,
        enName: data['EnName'] as String?,
        flagLink16x12: data['FlagLink16x12'] as String?,
        flagLink32x24: data['FlagLink32x24'] as String?,
        flagLink48x36: data['FlagLink48x36'] as String?,
        flagLinkH24: data['FlagLinkH24'] as String?,
      );

  static CountryStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CountryStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Iso2': _iso2,
        'RuName': _ruName,
        'EnName': _enName,
        'FlagLink16x12': _flagLink16x12,
        'FlagLink32x24': _flagLink32x24,
        'FlagLink48x36': _flagLink48x36,
        'FlagLinkH24': _flagLinkH24,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Iso2': serializeParam(
          _iso2,
          ParamType.String,
        ),
        'RuName': serializeParam(
          _ruName,
          ParamType.String,
        ),
        'EnName': serializeParam(
          _enName,
          ParamType.String,
        ),
        'FlagLink16x12': serializeParam(
          _flagLink16x12,
          ParamType.String,
        ),
        'FlagLink32x24': serializeParam(
          _flagLink32x24,
          ParamType.String,
        ),
        'FlagLink48x36': serializeParam(
          _flagLink48x36,
          ParamType.String,
        ),
        'FlagLinkH24': serializeParam(
          _flagLinkH24,
          ParamType.String,
        ),
      }.withoutNulls;

  static CountryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountryStruct(
        iso2: deserializeParam(
          data['Iso2'],
          ParamType.String,
          false,
        ),
        ruName: deserializeParam(
          data['RuName'],
          ParamType.String,
          false,
        ),
        enName: deserializeParam(
          data['EnName'],
          ParamType.String,
          false,
        ),
        flagLink16x12: deserializeParam(
          data['FlagLink16x12'],
          ParamType.String,
          false,
        ),
        flagLink32x24: deserializeParam(
          data['FlagLink32x24'],
          ParamType.String,
          false,
        ),
        flagLink48x36: deserializeParam(
          data['FlagLink48x36'],
          ParamType.String,
          false,
        ),
        flagLinkH24: deserializeParam(
          data['FlagLinkH24'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CountryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountryStruct &&
        iso2 == other.iso2 &&
        ruName == other.ruName &&
        enName == other.enName &&
        flagLink16x12 == other.flagLink16x12 &&
        flagLink32x24 == other.flagLink32x24 &&
        flagLink48x36 == other.flagLink48x36 &&
        flagLinkH24 == other.flagLinkH24;
  }

  @override
  int get hashCode => const ListEquality().hash([
        iso2,
        ruName,
        enName,
        flagLink16x12,
        flagLink32x24,
        flagLink48x36,
        flagLinkH24
      ]);
}

CountryStruct createCountryStruct({
  String? iso2,
  String? ruName,
  String? enName,
  String? flagLink16x12,
  String? flagLink32x24,
  String? flagLink48x36,
  String? flagLinkH24,
}) =>
    CountryStruct(
      iso2: iso2,
      ruName: ruName,
      enName: enName,
      flagLink16x12: flagLink16x12,
      flagLink32x24: flagLink32x24,
      flagLink48x36: flagLink48x36,
      flagLinkH24: flagLinkH24,
    );
