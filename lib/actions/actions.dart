import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future loadTeam(
  BuildContext context, {
  int? teamId,
}) async {
  ApiCallResponse? apiResultbwq;
  List<TeamStruct>? dTTeam;

  apiResultbwq = await TeamGroup.listteambyidCall.call(
    idList: teamId?.toString(),
  );
  if ((apiResultbwq?.succeeded ?? true)) {
    dTTeam = await actions.jsonDTTeam(
      getJsonField(
        (apiResultbwq?.jsonBody ?? ''),
        r'''$[:]''',
        true,
      ),
    );
    FFAppState().update(() {
      FFAppState().Team = dTTeam!.toList().cast<TeamStruct>();
    });
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('Team Data Loaded'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
