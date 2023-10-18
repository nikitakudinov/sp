import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/request_manager.dart';

import 'v_i_e_w_team_widget.dart' show VIEWTeamWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VIEWTeamModel extends FlutterFlowModel<VIEWTeamWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Query cache managers for this widget.

  final _teamMembersManager = FutureRequestManager<List<UserRow>>();
  Future<List<UserRow>> teamMembers({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UserRow>> Function() requestFn,
  }) =>
      _teamMembersManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTeamMembersCache() => _teamMembersManager.clear();
  void clearTeamMembersCacheKey(String? uniqueKey) =>
      _teamMembersManager.clearRequest(uniqueKey);

  final _teamItemDataManager = FutureRequestManager<List<TeamRow>>();
  Future<List<TeamRow>> teamItemData({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<TeamRow>> Function() requestFn,
  }) =>
      _teamItemDataManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTeamItemDataCache() => _teamItemDataManager.clear();
  void clearTeamItemDataCacheKey(String? uniqueKey) =>
      _teamItemDataManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();

    /// Dispose query cache managers for this widget.

    clearTeamMembersCache();

    clearTeamItemDataCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
