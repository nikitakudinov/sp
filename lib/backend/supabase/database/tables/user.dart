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

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nickname => getField<String>('Nickname');
  set nickname(String? value) => setField<String>('Nickname', value);

  int? get memberOfTeam => getField<int>('MemberOfTeam');
  set memberOfTeam(int? value) => setField<int>('MemberOfTeam', value);

  String? get avatar => getField<String>('Avatar');
  set avatar(String? value) => setField<String>('Avatar', value);
}
