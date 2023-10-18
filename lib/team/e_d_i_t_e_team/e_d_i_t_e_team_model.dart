import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/team_member_picker_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'e_d_i_t_e_team_widget.dart' show EDITETeamWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EDITETeamModel extends FlutterFlowModel<EDITETeamWidget> {
  ///  Local state fields for this page.

  String? imagePath;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (LISTTEAMBYID)] action in EDITE_team widget.
  ApiCallResponse? apiResultegc;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Model for TeamMemberPicker component.
  late TeamMemberPickerModel teamMemberPickerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    teamMemberPickerModel = createModel(context, () => TeamMemberPickerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    teamMemberPickerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
