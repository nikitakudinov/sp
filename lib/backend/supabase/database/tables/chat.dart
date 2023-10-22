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

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get lastMessage => getField<String>('LastMessage');
  set lastMessage(String? value) => setField<String>('LastMessage', value);

  String? get lastMessageDate => getField<String>('LastMessageDate');
  set lastMessageDate(String? value) =>
      setField<String>('LastMessageDate', value);

  String? get lastMessageTime => getField<String>('LastMessageTime');
  set lastMessageTime(String? value) =>
      setField<String>('LastMessageTime', value);
}
