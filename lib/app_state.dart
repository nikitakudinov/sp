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

  List<CountryStruct> _Countrys = [];
  List<CountryStruct> get Countrys => _Countrys;
  set Countrys(List<CountryStruct> _value) {
    _Countrys = _value;
  }

  void addToCountrys(CountryStruct _value) {
    _Countrys.add(_value);
  }

  void removeFromCountrys(CountryStruct _value) {
    _Countrys.remove(_value);
  }

  void removeAtIndexFromCountrys(int _index) {
    _Countrys.removeAt(_index);
  }

  void updateCountrysAtIndex(
    int _index,
    CountryStruct Function(CountryStruct) updateFn,
  ) {
    _Countrys[_index] = updateFn(_Countrys[_index]);
  }

  void insertAtIndexInCountrys(int _index, CountryStruct _value) {
    _Countrys.insert(_index, _value);
  }

  List<ChatStruct> _Chats = [];
  List<ChatStruct> get Chats => _Chats;
  set Chats(List<ChatStruct> _value) {
    _Chats = _value;
  }

  void addToChats(ChatStruct _value) {
    _Chats.add(_value);
  }

  void removeFromChats(ChatStruct _value) {
    _Chats.remove(_value);
  }

  void removeAtIndexFromChats(int _index) {
    _Chats.removeAt(_index);
  }

  void updateChatsAtIndex(
    int _index,
    ChatStruct Function(ChatStruct) updateFn,
  ) {
    _Chats[_index] = updateFn(_Chats[_index]);
  }

  void insertAtIndexInChats(int _index, ChatStruct _value) {
    _Chats.insert(_index, _value);
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
