import '../database.dart';

class ChatTable extends SupabaseTable<ChatRow> {
  @override
  String get tableName => 'Chat';

  @override
  ChatRow createRow(Map<String, dynamic> data) => ChatRow(data);
}

class ChatRow extends SupabaseDataRow {
  ChatRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get lastMessage => getField<String>('LastMessage');
  set lastMessage(String? value) => setField<String>('LastMessage', value);

  DateTime? get lastMessageDate => getField<DateTime>('LastMessageDate');
  set lastMessageDate(DateTime? value) =>
      setField<DateTime>('LastMessageDate', value);

  PostgresTime? get lastMessageTime =>
      getField<PostgresTime>('LastMessageTime');
  set lastMessageTime(PostgresTime? value) =>
      setField<PostgresTime>('LastMessageTime', value);

  List<int> get companion1 => getListField<int>(' companion1');
  set companion1(List<int>? value) => setListField<int>(' companion1', value);

  List<int> get companion2 => getListField<int>(' companion2');
  set companion2(List<int>? value) => setListField<int>(' companion2', value);
}
