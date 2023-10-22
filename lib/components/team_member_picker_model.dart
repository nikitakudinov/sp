import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'team_member_picker_widget.dart' show TeamMemberPickerWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeamMemberPickerModel extends FlutterFlowModel<TeamMemberPickerWidget> {
  ///  Local state fields for this component.

  bool headerVISIBILITY = true;

  bool messageVISIBILITY = false;

  bool searchVISIBILITY = false;

  bool membersVISIBILITY = true;

  bool addbuttonVISIBILITY = true;

  List<UserStruct> members = [];
  void addToMembers(UserStruct item) => members.add(item);
  void removeFromMembers(UserStruct item) => members.remove(item);
  void removeAtIndexFromMembers(int index) => members.removeAt(index);
  void insertAtIndexInMembers(int index, UserStruct item) =>
      members.insert(index, item);
  void updateMembersAtIndex(int index, Function(UserStruct) updateFn) =>
      members[index] = updateFn(members[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (LISTUSERBYID)] action in TeamMemberPicker widget.
  ApiCallResponse? jesonMembersData;
  // Stores action output result for [Custom Action - jsonDTUser] action in TeamMemberPicker widget.
  List<UserStruct>? dTMembers;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
