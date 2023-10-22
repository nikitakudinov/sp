import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'User';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get nickname => getField<String>('Nickname');
  set nickname(String? value) => setField<String>('Nickname', value);

  String? get memberOfTeam => getField<String>('MemberOfTeam');
  set memberOfTeam(String? value) => setField<String>('MemberOfTeam', value);

  String? get avatar => getField<String>('Avatar');
  set avatar(String? value) => setField<String>('Avatar', value);

  String? get tag => getField<String>('Tag');
  set tag(String? value) => setField<String>('Tag', value);

  String? get uid => getField<String>('UID');
  set uid(String? value) => setField<String>('UID', value);

  String? get role => getField<String>('Role');
  set role(String? value) => setField<String>('Role', value);

  String? get permissionsRole => getField<String>('PermissionsRole');
  set permissionsRole(String? value) =>
      setField<String>('PermissionsRole', value);

  bool? get lineUp => getField<bool>('LineUp');
  set lineUp(bool? value) => setField<bool>('LineUp', value);

  String? get country => getField<String>('Country');
  set country(String? value) => setField<String>('Country', value);

  String? get flag => getField<String>('Flag');
  set flag(String? value) => setField<String>('Flag', value);
}
