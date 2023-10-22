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
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'e_d_i_t_e_team_model.dart';
export 'e_d_i_t_e_team_model.dart';

class EDITETeamWidget extends StatefulWidget {
  const EDITETeamWidget({
    Key? key,
    required this.teamId,
    this.teamIndex,
    required this.name,
    required this.tag,
    required this.country,
    required this.flag,
  }) : super(key: key);

  final int? teamId;
  final int? teamIndex;
  final String? name;
  final String? tag;
  final String? country;
  final String? flag;

  @override
  _EDITETeamWidgetState createState() => _EDITETeamWidgetState();
}

class _EDITETeamWidgetState extends State<EDITETeamWidget> {
  late EDITETeamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EDITETeamModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult3ba = await TeamGroup.listteambyidCall.call(
        idList: widget.teamId?.toString(),
      );
      if ((_model.apiResult3ba?.succeeded ?? true)) {
        setState(() {
          _model.members = functions.cleanResponse(getJsonField(
            (_model.apiResult3ba?.jsonBody ?? ''),
            r'''$[:].Members''',
            true,
          ))!;
          _model.imagePath = getJsonField(
            (_model.apiResult3ba?.jsonBody ?? ''),
            r'''$[:].Logo''',
          );
          _model.updateTeamStruct(
            (e) => e
              ..country = TeamGroup.listteambyidCall
                  .country(
                    (_model.apiResult3ba?.jsonBody ?? ''),
                  )
                  .toString()
                  .toString()
              ..flag = TeamGroup.listteambyidCall.flag(
                (_model.apiResult3ba?.jsonBody ?? ''),
              ),
          );
          _model.name = TeamGroup.listteambyidCall
              .name(
                (_model.apiResult3ba?.jsonBody ?? ''),
              )
              .toString();
          _model.tag = TeamGroup.listteambyidCall
              .tag(
                (_model.apiResult3ba?.jsonBody ?? ''),
              )
              .toString();
        });
        setState(() {
          FFAppState().Team = TeamStruct(
            id: TeamGroup.listteambyidCall.id(
              (_model.apiResult3ba?.jsonBody ?? ''),
            ),
            name: TeamGroup.listteambyidCall
                .name(
                  (_model.apiResult3ba?.jsonBody ?? ''),
                )
                .toString(),
            tag: TeamGroup.listteambyidCall
                .tag(
                  (_model.apiResult3ba?.jsonBody ?? ''),
                )
                .toString(),
            country: TeamGroup.listteambyidCall
                .country(
                  (_model.apiResult3ba?.jsonBody ?? ''),
                )
                .toString()
                .toString(),
            flag: TeamGroup.listteambyidCall.flag(
              (_model.apiResult3ba?.jsonBody ?? ''),
            ),
            logo: TeamGroup.listteambyidCall.logo(
              (_model.apiResult3ba?.jsonBody ?? ''),
            ),
          );
        });
        _model.apiResulttx2 = await UserGroup.listuserbyidCall.call(
          idList: _model.members,
        );
        if ((_model.apiResulttx2?.succeeded ?? true)) {
          _model.dTMembers = await actions.jsonDTUser(
            getJsonField(
              (_model.apiResulttx2?.jsonBody ?? ''),
              r'''$[:]''',
              true,
            ),
          );
          setState(() {
            _model.membersList1 = _model.dTMembers!.toList().cast<UserStruct>();
          });
        }
        await action_blocks.loadCountrys(context);
      }
    });

    _model.textController1 ??= TextEditingController(text: widget.name);
    _model.textFieldFocusNode1 ??= FocusNode();
    _model.textController2 ??= TextEditingController(text: widget.tag);
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: true,
          title: Text(
            'Управление командой',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto Condensed',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (_model.imagePath != 'false')
                              Container(
                                width: 110.0,
                                height: 110.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Visibility(
                                  visible: _model.imagePath != 'false',
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        _model.imagePath,
                                        'https://supabase.proplayclub.ru:8000/storage/v1/object/public/playground/logos/placeholder.png',
                                      ),
                                      width: 1085.0,
                                      height: 105.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            if (_model.imagePath ==
                                'https://supabase.proplayclub.ru/storage/v1/object/public/playground/logos/placeholder.png')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 10.0, 10.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final selectedMedia = await selectMedia(
                                      storageFolderPath: 'team_logos',
                                      maxWidth: 150.00,
                                      maxHeight: 150.00,
                                      imageQuality: 100,
                                      mediaSource: MediaSource.photoGallery,
                                      multiImage: false,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(
                                          () => _model.isDataUploading = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      var downloadUrls = <String>[];
                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();

                                        downloadUrls =
                                            await uploadSupabaseStorageFiles(
                                          bucketName: 'playground',
                                          selectedFiles: selectedMedia,
                                        );
                                      } finally {
                                        _model.isDataUploading = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                              selectedMedia.length &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        setState(() {
                                          _model.uploadedLocalFile =
                                              selectedUploadedFiles.first;
                                          _model.uploadedFileUrl =
                                              downloadUrls.first;
                                        });
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }

                                    setState(() {
                                      _model.imagePath = _model.uploadedFileUrl;
                                    });
                                  },
                                  text: 'Загрузить',
                                  icon: Icon(
                                    Icons.upload_file,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 115.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              'Encode Sans Semi Condensed',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            if (_model.imagePath !=
                                'https://supabase.proplayclub.ru/storage/v1/object/public/playground/logos/placeholder.png')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 10.0, 10.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await deleteSupabaseFileFromPublicUrl(
                                        _model.imagePath!);
                                    await TeamTable().update(
                                      data: {
                                        'Logo':
                                            'https://supabase.proplayclub.ru/storage/v1/object/public/playground/logos/placeholder.png',
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'id',
                                        widget.teamId,
                                      ),
                                    );
                                    setState(() {
                                      _model.imagePath =
                                          'https://supabase.proplayclub.ru/storage/v1/object/public/playground/logos/placeholder.png';
                                    });

                                    setState(() {});
                                  },
                                  text: 'Удалить',
                                  icon: Icon(
                                    Icons.delete,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 115.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              'Encode Sans Semi Condensed',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: TextFormField(
                                    controller: _model.textController1,
                                    focusNode: _model.textFieldFocusNode1,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController1',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        setState(() {
                                          _model.name =
                                              _model.textController1.text;
                                        });
                                      },
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Название',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      filled: true,
                                      fillColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10.0, 5.0, 10.0, 5.0),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model.textController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: TextFormField(
                                    controller: _model.textController2,
                                    focusNode: _model.textFieldFocusNode2,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController2',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        setState(() {
                                          _model.tag =
                                              _model.textController2.text;
                                        });
                                      },
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'TAG',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      filled: true,
                                      fillColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10.0, 5.0, 10.0, 5.0),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model.textController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.countryPickerModel,
                                updateCallback: () => setState(() {}),
                                child: CountryPickerWidget(
                                  country: widget.country,
                                  flag: widget.flag!,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (_model.titleSquad)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Состав команыды',
                          style: FlutterFlowTheme.of(context).titleMedium,
                        ),
                      ],
                    ),
                  ),
                if (_model.titleSettingsVISIBILITY)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Настройки члена команы',
                          style: FlutterFlowTheme.of(context).titleMedium,
                        ),
                      ],
                    ),
                  ),
                if (_model.membersSettingsVISIBILITY)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5.0),
                                      child: Image.network(
                                        _model.selectedUserLogo,
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '[${_model.selectedUserTag}]${_model.selectedUserNickname}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  _model.selectedUserRole,
                                                  'Не выбран',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Encode Sans Semi Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                _model
                                                    .selectedUserPermissionsRole,
                                                'Не выбран',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Encode Sans Semi Condensed',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownRoleValueController ??=
                                              FormFieldController<String>(
                                            _model.dropDownRoleValue ??=
                                                _model.selectedUserRole,
                                          ),
                                          options: [
                                            'Лидер',
                                            'Модератор',
                                            'Игрок команды'
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.dropDownRoleValue = val),
                                          height: 40.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Роль',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderWidth: 1.0,
                                          borderRadius: 5.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownPermissionsRoleValueController ??=
                                                FormFieldController<String>(
                                              _model.dropDownPermissionsRoleValue ??=
                                                  _model
                                                      .selectedUserPermissionsRole,
                                            ),
                                            options: [
                                              'Модератор',
                                              'Администратор'
                                            ],
                                            onChanged: (val) => setState(() =>
                                                _model.dropDownPermissionsRoleValue =
                                                    val),
                                            height: 40.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            hintText: 'Права',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 0.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderWidth: 1.0,
                                            borderRadius: 5.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                              child: Checkbox(
                                                value: _model
                                                        .checkboxLinewUpValue ??=
                                                    _model
                                                        .selectedUserPermissionsLineUp,
                                                onChanged: (newValue) async {
                                                  setState(() => _model
                                                          .checkboxLinewUpValue =
                                                      newValue!);
                                                },
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                checkColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                              ),
                                            ),
                                            Text(
                                              'В основном составе',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setState(() {
                                        _model.membersSettingsVISIBILITY =
                                            false;
                                        _model.titleSettingsVISIBILITY = false;
                                        _model.titleSquad = true;
                                      });
                                    },
                                    text: 'Отмена',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                'Encode Sans Semi Condensed',
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                          ),
                                      elevation: 1.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await UserTable().update(
                                        data: {
                                          'Role': _model.dropDownRoleValue,
                                          'PermissionsRole': _model
                                              .dropDownPermissionsRoleValue,
                                          'LineUp': _model
                                              .selectedUserPermissionsLineUp,
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'id',
                                          _model.selectedUserId,
                                        ),
                                      );
                                      setState(() {
                                        _model.updateMembersList1AtIndex(
                                          _model.selectedUserIndex!,
                                          (e) => e
                                            ..role = _model.dropDownRoleValue
                                            ..permissionsRole = _model
                                                .dropDownPermissionsRoleValue,
                                        );
                                        _model.membersSettingsVISIBILITY =
                                            false;
                                      });
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Данные обновлены',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );

                                      setState(() {});
                                    },
                                    text: 'Сохранить',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                'Encode Sans Semi Condensed',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                      elevation: 1.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 15.0),
                  child: Builder(
                    builder: (context) {
                      final membersList = _model.membersList1.toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: membersList.length,
                        itemBuilder: (context, membersListIndex) {
                          final membersListItem = membersList[membersListIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.network(
                                      membersListItem.avatar,
                                      width: 50.0,
                                      height: 50.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '[${membersListItem.tag}] ${membersListItem.nickname}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Container(
                                                width: 16.0,
                                                height: 12.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  child: Image.network(
                                                    membersListItem.flag,
                                                    width: 16.0,
                                                    height: 12.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              membersListItem.country,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Text(
                                                membersListItem.role,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Encode Sans Semi Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 10.0,
                                                          lineHeight: 0.8,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              membersListItem.permissionsRole,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Encode Sans Semi Condensed',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        fontSize: 10.0,
                                                        lineHeight: 0.8,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.settings_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    setState(() {
                                      _model.membersSettingsVISIBILITY = true;
                                      _model.titleSettingsVISIBILITY = true;
                                      _model.titleSquad = false;
                                      _model.selectedUserId =
                                          membersListItem.id;
                                      _model.selectedUserLogo =
                                          membersListItem.avatar;
                                      _model.selectedUserTag =
                                          membersListItem.tag;
                                      _model.selectedUserNickname =
                                          membersListItem.nickname;
                                      _model.selectedUserRole =
                                          membersListItem.role;
                                      _model.selectedUserPermissionsRole =
                                          membersListItem.permissionsRole;
                                      _model.selectedUserIndex =
                                          membersListIndex;
                                    });
                                    setState(() {
                                      _model.dropDownRoleValueController
                                          ?.value = membersListItem.role;
                                    });
                                    setState(() {
                                      _model.dropDownPermissionsRoleValueController
                                              ?.value =
                                          membersListItem.permissionsRole;
                                    });
                                    setState(() {
                                      _model.checkboxLinewUpValue = true;
                                    });
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 30.0, 15.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await TeamTable().update(
                              data: {
                                'Name': _model.name,
                                'Tag': _model.tag,
                                'Logo': _model.imagePath,
                                'Country':
                                    _model.countryPickerModel.selectedCountry,
                                'Flag': _model.countryPickerModel.selectedFlag,
                              },
                              matchingRows: (rows) => rows.eq(
                                'id',
                                widget.teamId,
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Изменения сохранены',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );

                            context.pushNamed('LIST_team');

                            setState(() {});
                          },
                          text: 'Сохранить',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Encode Sans Semi Condensed',
                                  color: Colors.white,
                                ),
                            elevation: 1.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  FFAppState().Team.name,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Text(
                  FFAppState().Team.tag,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
