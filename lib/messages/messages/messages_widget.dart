import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'messages_model.dart';
export 'messages_model.dart';

class MessagesWidget extends StatefulWidget {
  const MessagesWidget({Key? key}) : super(key: key);

  @override
  _MessagesWidgetState createState() => _MessagesWidgetState();
}

class _MessagesWidgetState extends State<MessagesWidget> {
  late MessagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessagesModel());
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
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Сообщения',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto Condensed',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                child: FutureBuilder<List<ChatRow>>(
                  future: ChatTable().queryRows(
                    queryFn: (q) => q
                        .contains(
                          ' companion1',
                          '{' + FFAppState().authenticatedUser.id + '}',
                        )
                        .contains(
                          ' companion2',
                          '{' + FFAppState().authenticatedUser.id + '}',
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
                    List<ChatRow> listViewChatRowList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewChatRowList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewChatRow =
                            listViewChatRowList[listViewIndex];
                        return Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FutureBuilder<List<UserRow>>(
                                              future:
                                                  UserTable().querySingleRow(
                                                queryFn: (q) => q.eq(
                                                  'id',
                                                  listViewChatRow
                                                      .companion1.first,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<UserRow> textUserRowList =
                                                    snapshot.data!;
                                                final textUserRow =
                                                    textUserRowList.isNotEmpty
                                                        ? textUserRowList.first
                                                        : null;
                                                return Text(
                                                  textUserRow!.nickname!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                );
                                              },
                                            ),
                                            FutureBuilder<List<UserRow>>(
                                              future:
                                                  UserTable().querySingleRow(
                                                queryFn: (q) => q.eq(
                                                  'id',
                                                  listViewChatRow
                                                      .companion2.first,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<UserRow> textUserRowList =
                                                    snapshot.data!;
                                                final textUserRow =
                                                    textUserRowList.isNotEmpty
                                                        ? textUserRowList.first
                                                        : null;
                                                return Text(
                                                  textUserRow!.nickname!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 15.0, 0.0),
                                          child: Text(
                                            'Hello World',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Text(
                                          'Hello World',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
