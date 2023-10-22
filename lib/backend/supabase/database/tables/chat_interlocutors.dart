import '../database.dart';

class ChatInterlocutorsTable extends SupabaseTable<ChatInterlocutorsRow> {
  @override
  String get tableName => 'ChatInterlocutors';

  @override
  ChatInterlocutorsRow createRow(Map<String, dynamic> data) =>
      ChatInterlocutorsRow(data);
}

class ChatInterlocutorsRow extends SupabaseDataRow {
  ChatInterlocutorsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatInterlocutorsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get chatId => getField<int>('chat_id')!;
  set chatId(int value) => setField<int>('chat_id', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);
}
