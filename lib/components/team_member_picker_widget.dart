import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'team_member_picker_model.dart';
export 'team_member_picker_model.dart';

class TeamMemberPickerWidget extends StatefulWidget {
  const TeamMemberPickerWidget({
    Key? key,
    required this.docId,
  }) : super(key: key);

  final int? docId;

  @override
  _TeamMemberPickerWidgetState createState() => _TeamMemberPickerWidgetState();
}

class _TeamMemberPickerWidgetState extends State<TeamMemberPickerWidget> {
  late TeamMemberPickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamMemberPickerModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (_model.headerVISIBILITY)
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Состав',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              if (_model.addbuttonVISIBILITY)
                FFButtonWidget(
                  onPressed: () {
                    print('addbutton pressed ...');
                  },
                  text: 'Button',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
            ],
          ),
        if (_model.messageVISIBILITY)
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Hello World',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://picsum.photos/seed/204/600',
                            width: 45.0,
                            height: 45.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Hello World',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            Text(
                              'Hello World',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Button',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Button',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        if (_model.searchVISIBILITY)
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Label here...',
                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
              Expanded(
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Button',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        if (_model.membersVISIBILITY)
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      'https://picsum.photos/seed/204/600',
                      width: 45.0,
                      height: 45.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
      ],
    );
  }
}
