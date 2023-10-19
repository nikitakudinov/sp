import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (LISTUSERBYUID)] action in HomePage widget.
  ApiCallResponse? apiResulta5r;
  // Stores action output result for [Backend Call - Update Row] action in Button widget.
  List<UserRow>? updateUserData;
  // Stores action output result for [Backend Call - API (LISTUSERBYUID)] action in Button widget.
  ApiCallResponse? userData;
  // Stores action output result for [Backend Call - Update Row] action in Button widget.
  List<TeamRow>? apiResultxsb;
  // Stores action output result for [Backend Call - Delete Row] action in Button widget.
  List<RequestRow>? deliteRequest;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
