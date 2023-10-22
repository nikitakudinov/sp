import '../database.dart';

class MessageTable extends SupabaseTable<MessageRow> {
  @override
  String get tableName => 'Message';

  @override
  MessageRow createRow(Map<String, dynamic> data) => MessageRow(data);
}

class MessageRow extends SupabaseDataRow {
  MessageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MessageTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get sender => getField<int>('Sender');
  set sender(int? value) => setField<int>('Sender', value);

  int? get chat => getField<int>('Chat');
  set chat(int? value) => setField<int>('Chat', value);

  String? get message => getField<String>('Message');
  set message(String? value) => setField<String>('Message', value);
}
