import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
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
  ApiCallResponse? apiResultoxb;
  ApiCallResponse? apiResultj3d;

  apiResultoxb = await TeamGroup.listteambyidCall.call(
    idList: teamId?.toString(),
  );
  if ((apiResultoxb?.succeeded ?? true)) {
    apiResultj3d = await UserGroup.listuserbyidintCall.call(
      idListList: FFAppState().Team.members,
    );
    if ((apiResultj3d?.succeeded ?? true)) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('pisya'),
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
}
