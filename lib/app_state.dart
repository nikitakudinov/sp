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

  List<UserStruct> _Users = [];
  List<UserStruct> get Users => _Users;
  set Users(List<UserStruct> _value) {
    _Users = _value;
  }

  void addToUsers(UserStruct _value) {
    _Users.add(_value);
  }

  void removeFromUsers(UserStruct _value) {
    _Users.remove(_value);
  }

  void removeAtIndexFromUsers(int _index) {
    _Users.removeAt(_index);
  }

  void updateUsersAtIndex(
    int _index,
    UserStruct Function(UserStruct) updateFn,
  ) {
    _Users[_index] = updateFn(_Users[_index]);
  }

  void insertAtIndexInUsers(int _index, UserStruct _value) {
    _Users.insert(_index, _value);
  }

  UserStruct _User = UserStruct();
  UserStruct get User => _User;
  set User(UserStruct _value) {
    _User = _value;
  }

  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(_User);
  }

  List<UserStruct> _TeamMembers = [];
  List<UserStruct> get TeamMembers => _TeamMembers;
  set TeamMembers(List<UserStruct> _value) {
    _TeamMembers = _value;
  }

  void addToTeamMembers(UserStruct _value) {
    _TeamMembers.add(_value);
  }

  void removeFromTeamMembers(UserStruct _value) {
    _TeamMembers.remove(_value);
  }

  void removeAtIndexFromTeamMembers(int _index) {
    _TeamMembers.removeAt(_index);
  }

  void updateTeamMembersAtIndex(
    int _index,
    UserStruct Function(UserStruct) updateFn,
  ) {
    _TeamMembers[_index] = updateFn(_TeamMembers[_index]);
  }

  void insertAtIndexInTeamMembers(int _index, UserStruct _value) {
    _TeamMembers.insert(_index, _value);
  }

  TeamStruct _Team = TeamStruct();
  TeamStruct get Team => _Team;
  set Team(TeamStruct _value) {
    _Team = _value;
  }

  void updateTeamStruct(Function(TeamStruct) updateFn) {
    updateFn(_Team);
  }

  UserStruct _authenticatedUser = UserStruct();
  UserStruct get authenticatedUser => _authenticatedUser;
  set authenticatedUser(UserStruct _value) {
    _authenticatedUser = _value;
  }

  void updateAuthenticatedUserStruct(Function(UserStruct) updateFn) {
    updateFn(_authenticatedUser);
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
