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

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  int get id => getField<int>('Id')!;
  set id(int value) => setField<int>('Id', value);

  DateTime? get createdAt => getField<DateTime>('CreatedAt');
  set createdAt(DateTime? value) => setField<DateTime>('CreatedAt', value);

  DateTime? get updatedAt => getField<DateTime>('UpdatedAt');
  set updatedAt(DateTime? value) => setField<DateTime>('UpdatedAt', value);

  String? get tag => getField<String>('Tag');
  set tag(String? value) => setField<String>('Tag', value);

  String? get logo => getField<String>('Logo');
  set logo(String? value) => setField<String>('Logo', value);

  String? get country => getField<String>('Country');
  set country(String? value) => setField<String>('Country', value);

  String? get flag => getField<String>('Flag');
  set flag(String? value) => setField<String>('Flag', value);

  String? get membersID => getField<String>('MembersID');
  set membersID(String? value) => setField<String>('MembersID', value);

  int? get membersCount => getField<int>('MembersCount');
  set membersCount(int? value) => setField<int>('MembersCount', value);

  int? get membersOfTournamentsID => getField<int>('MembersOfTournamentsID');
  set membersOfTournamentsID(int? value) =>
      setField<int>('MembersOfTournamentsID', value);

  int? get membersOfTournamentsCount =>
      getField<int>('MembersOfTournamentsCount');
  set membersOfTournamentsCount(int? value) =>
      setField<int>('MembersOfTournamentsCount', value);

  String? get creatorID => getField<String>('CreatorID');
  set creatorID(String? value) => setField<String>('CreatorID', value);

  int? get creatorCount => getField<int>('CreatorCount');
  set creatorCount(int? value) => setField<int>('CreatorCount', value);

  String? get creatorFBUserId => getField<String>('CreatorFBUserId');
  set creatorFBUserId(String? value) =>
      setField<String>('CreatorFBUserId', value);
}
