import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'team_member_picker_widget.dart' show TeamMemberPickerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeamMemberPickerModel extends FlutterFlowModel<TeamMemberPickerWidget> {
  ///  Local state fields for this component.

  bool headerVISIBILITY = true;

  bool messageVISIBILITY = false;

  bool searchVISIBILITY = false;

  bool membersVISIBILITY = true;

  bool addbuttonVISIBILITY = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
