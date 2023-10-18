import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future loadTeams(BuildContext context) async {
  ApiCallResponse? jsonTeamsList;
  List<TeamStruct>? teamsConvertedData;

  jsonTeamsList = await TeamGroup.listteamCall.call();
  if ((jsonTeamsList?.succeeded ?? true)) {
    teamsConvertedData = await actions.jsonToDataTypeTeam(
      getJsonField(
        (jsonTeamsList?.jsonBody ?? ''),
        r'''$''',
        true,
      ),
    );
    FFAppState().update(() {
      FFAppState().Teams = teamsConvertedData!.toList().cast<TeamStruct>();
    });
  }
}
