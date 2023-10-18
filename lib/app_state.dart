import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<TeamStruct> _Teams = [];
  List<TeamStruct> get Teams => _Teams;
  set Teams(List<TeamStruct> _value) {
    _Teams = _value;
  }

  void addToTeams(TeamStruct _value) {
    _Teams.add(_value);
  }

  void removeFromTeams(TeamStruct _value) {
    _Teams.remove(_value);
  }

  void removeAtIndexFromTeams(int _index) {
    _Teams.removeAt(_index);
  }

  void updateTeamsAtIndex(
    int _index,
    TeamStruct Function(TeamStruct) updateFn,
  ) {
    _Teams[_index] = updateFn(_Teams[_index]);
  }

  void insertAtIndexInTeams(int _index, TeamStruct _value) {
    _Teams.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
