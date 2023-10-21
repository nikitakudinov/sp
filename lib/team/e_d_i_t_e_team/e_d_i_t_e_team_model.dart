import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/country_picker_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'e_d_i_t_e_team_widget.dart' show EDITETeamWidget;
import 'package:easy_debounce/easy_debounce.dart';
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

  TeamStruct? team;
  void updateTeamStruct(Function(TeamStruct) updateFn) =>
      updateFn(team ??= TeamStruct());

  String? name = '';

  String? tag = '';

  bool membersSettingsVISIBILITY = false;

  bool titleSettingsVISIBILITY = false;

  bool titleSquad = true;

  int selectedUserId = 01;

  String selectedUserLogo =
      'https://supabase.proplayclub.ru/storage/v1/object/public/playground/logos/placeholder.png';

  String selectedUserTag = 'не выбран';

  String selectedUserNickname = 'не выбран';

  String selectedUserCountry = 'Не выбран';

  String selectedUserFlag = '';

  int? selectedUserIndex;

  String selectedUserRole = 'не выбран';

  String selectedUserPermissionsRole = 'не выбран';

  bool selectedUserPermissionsLineUp = true;

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

  // Stores action output result for [Backend Call - Update Row] action in Button widget.
  List<TeamRow>? updateLogo;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for countryPicker component.
  late CountryPickerModel countryPickerModel;
  // State field(s) for DropDownRole widget.
  String? dropDownRoleValue;
  FormFieldController<String>? dropDownRoleValueController;
  // State field(s) for DropDownPermissionsRole widget.
  String? dropDownPermissionsRoleValue;
  FormFieldController<String>? dropDownPermissionsRoleValueController;
  // State field(s) for CheckboxLinewUp widget.
  bool? checkboxLinewUpValue;
  // Stores action output result for [Backend Call - Update Row] action in Button widget.
  List<UserRow>? updateMember;
  // Stores action output result for [Backend Call - Update Row] action in Button widget.
  List<TeamRow>? updateTeam;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    countryPickerModel = createModel(context, () => CountryPickerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    countryPickerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
