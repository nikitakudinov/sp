import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';

Future loadTeam(
  BuildContext context, {
  int? teamId,
}) async {
  ApiCallResponse? apiResult55t;

  apiResult55t = await TeamGroup.listteambyidCall.call(
    idList: teamId?.toString(),
  );
  if ((apiResult55t?.succeeded ?? true)) {
    FFAppState().update(() {
      FFAppState().Team = TeamStruct.fromMap(getJsonField(
        (apiResult55t?.jsonBody ?? ''),
        r'''$[:]''',
      ));
    });
  }
}

Future loadTeamMembers(
  BuildContext context, {
  required int? teamId,
}) async {
  ApiCallResponse? apiResultsxr;
  List<UserStruct>? dTUser;

  apiResultsxr = await UserGroup.listuserbyidCall.call(
    idList: functions.cleanResponse(getJsonField(
      FFAppState().Team.toMap(),
      r'''$.Members''',
      true,
    )),
  );
  if ((apiResultsxr?.succeeded ?? true)) {
    dTUser = await actions.jsonDTUser(
      getJsonField(
        (apiResultsxr?.jsonBody ?? ''),
        r'''$[:]''',
        true,
      ),
    );
    FFAppState().update(() {
      FFAppState().TeamMembers = dTUser!.toList().cast<UserStruct>();
    });
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('1'),
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
