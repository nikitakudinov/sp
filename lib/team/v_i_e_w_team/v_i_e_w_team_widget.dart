import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'v_i_e_w_team_model.dart';
export 'v_i_e_w_team_model.dart';

class VIEWTeamWidget extends StatefulWidget {
  const VIEWTeamWidget({
    Key? key,
    required this.teamId,
  }) : super(key: key);

  final int? teamId;

  @override
  _VIEWTeamWidgetState createState() => _VIEWTeamWidgetState();
}

class _VIEWTeamWidgetState extends State<VIEWTeamWidget> {
  late VIEWTeamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VIEWTeamModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<TeamRow>>(
      future: _model.teamItemData(
        uniqueQueryKey: valueOrDefault<String>(
          widget.teamId?.toString(),
          '0',
        ),
        requestFn: () => TeamTable().querySingleRow(
          queryFn: (q) => q.eq(
            'id',
            widget.teamId,
          ),
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<TeamRow> vIEWTeamTeamRowList = snapshot.data!;
        final vIEWTeamTeamRow =
            vIEWTeamTeamRowList.isNotEmpty ? vIEWTeamTeamRowList.first : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: true,
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FutureBuilder<List<UserRow>>(
                    future: _model.teamMembers(
                      uniqueQueryKey: valueOrDefault<String>(
                        vIEWTeamTeamRow?.id?.toString(),
                        '0',
                      ),
                      requestFn: () => UserTable().queryRows(
                        queryFn: (q) => q.in_(
                          'id',
                          vIEWTeamTeamRow!.members,
                        ),
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<UserRow> listViewUserRowList = snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewUserRowList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewUserRow =
                              listViewUserRowList[listViewIndex];
                          return Text(
                            listViewUserRow.nickname!,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
