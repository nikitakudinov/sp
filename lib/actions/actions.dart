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
  ApiCallResponse? apiResultoxb;
  ApiCallResponse? apiResultj3d;
  List<UserStruct>? dTMembers;

  apiResultoxb = await TeamGroup.listteambyidCall.call(
    idList: teamId?.toString(),
  );
  if ((apiResultoxb?.succeeded ?? true)) {
    apiResultj3d = await UserGroup.listuserbyidintCall.call(
      idList: functions.listINTtoSTRING(FFAppState().Team.members.toList()),
    );
    if ((apiResultj3d?.succeeded ?? true)) {
      dTMembers = await actions.jsonDTUser(
        getJsonField(
          (apiResultj3d?.jsonBody ?? ''),
          r'''$[:]''',
          true,
        ),
      );
      FFAppState().update(() {
        FFAppState().TeamMembers = dTMembers!.toList().cast<UserStruct>();
      });
    }
  }
}

Future loadCountrys(BuildContext context) async {
  ApiCallResponse? apiResultfco;
  List<CountryStruct>? dTCountry;

  apiResultfco = await CountryGroup.listcountrysCall.call();
  if ((apiResultfco?.succeeded ?? true)) {
    dTCountry = await actions.jsonDTCountry(
      getJsonField(
        (apiResultfco?.jsonBody ?? ''),
        r'''$[:]''',
        true,
      ),
    );
    FFAppState().update(() {
      FFAppState().Countrys = dTCountry!.toList().cast<CountryStruct>();
    });
  }
}
