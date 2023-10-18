import '../database.dart';

class TeamTable extends SupabaseTable<TeamRow> {
  @override
  String get tableName => 'Team';

  @override
  TeamRow createRow(Map<String, dynamic> data) => TeamRow(data);
}

class TeamRow extends SupabaseDataRow {
  TeamRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TeamTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  String? get tag => getField<String>('Tag');
  set tag(String? value) => setField<String>('Tag', value);

  List<int> get members => getListField<int>('Members');
  set members(List<int>? value) => setListField<int>('Members', value);

  String? get logo => getField<String>('Logo');
  set logo(String? value) => setField<String>('Logo', value);
}
