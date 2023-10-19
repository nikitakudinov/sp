import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'e_d_i_t_e_team_widget.dart' show EDITETeamWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EDITETeamModel extends FlutterFlowModel<EDITETeamWidget> {
  ///  Local state fields for this page.

  String? imagePath = 'false';

  String members = '';

  List<UserStruct> membersList1 = [];
  void addToMembersList1(UserStruct item) => membersList1.add(item);
  void removeFromMembersList1(UserStruct item) => membersList1.remove(item);
  void removeAtIndexFromMembersList1(int index) => membersList1.removeAt(index);
  void insertAtIndexInMembersList1(int index, UserStruct item) =>
      membersList1.insert(index, item);
  void updateMembersList1AtIndex(int index, Function(UserStruct) updateFn) =>
      membersList1[index] = updateFn(membersList1[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (LISTTEAMBYID)] action in EDITE_team widget.
  ApiCallResponse? apiResult3ba;
  // Stores action output result for [Backend Call - API (LISTUSERBYID)] action in EDITE_team widget.
  ApiCallResponse? apiResulttx2;
  // Stores action output result for [Custom Action - jsonDTUser] action in EDITE_team widget.
  List<UserStruct>? dTMembers;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
