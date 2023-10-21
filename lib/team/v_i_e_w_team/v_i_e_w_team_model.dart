import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'v_i_e_w_team_widget.dart' show VIEWTeamWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VIEWTeamModel extends FlutterFlowModel<VIEWTeamWidget> {
  ///  Local state fields for this page.

  List<UserStruct> members = [];
  void addToMembers(UserStruct item) => members.add(item);
  void removeFromMembers(UserStruct item) => members.remove(item);
  void removeAtIndexFromMembers(int index) => members.removeAt(index);
  void insertAtIndexInMembers(int index, UserStruct item) =>
      members.insert(index, item);
  void updateMembersAtIndex(int index, Function(UserStruct) updateFn) =>
      members[index] = updateFn(members[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (LISTUSERBYID)] action in VIEW_team widget.
  ApiCallResponse? apiResultz22;
  // Stores action output result for [Custom Action - jsonDTUser] action in VIEW_team widget.
  List<UserStruct>? dTUser;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
