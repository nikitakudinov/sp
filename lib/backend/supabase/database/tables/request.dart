import '../database.dart';

class RequestTable extends SupabaseTable<RequestRow> {
  @override
  String get tableName => 'Request';

  @override
  RequestRow createRow(Map<String, dynamic> data) => RequestRow(data);
}

class RequestRow extends SupabaseDataRow {
  RequestRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RequestTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get fromTeam => getField<int>('FromTeam');
  set fromTeam(int? value) => setField<int>('FromTeam', value);

  int? get toUser => getField<int>('ToUser');
  set toUser(int? value) => setField<int>('ToUser', value);

  String? get type => getField<String>('Type');
  set type(String? value) => setField<String>('Type', value);
}
