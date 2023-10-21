import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'country_picker_model.dart';
export 'country_picker_model.dart';

class CountryPickerWidget extends StatefulWidget {
  const CountryPickerWidget({
    Key? key,
    this.country,
    required this.flag,
  }) : super(key: key);

  final String? country;
  final String? flag;

  @override
  _CountryPickerWidgetState createState() => _CountryPickerWidgetState();
}

class _CountryPickerWidgetState extends State<CountryPickerWidget> {
  late CountryPickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountryPickerModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.selectedFlag = widget.flag!;
        _model.selectedCountry = widget.country!;
      });
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      primary: false,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
            child: Material(
              color: Colors.transparent,
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      _model.listVISIBILITY = true;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (_model.selectedFlag != 'false')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: 30.0,
                            height: 20.0,
                            decoration: BoxDecoration(),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.network(
                                _model.selectedFlag,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            _model.selectedCountry,
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (_model.listVISIBILITY)
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Builder(
                builder: (context) {
                  final countrysList = FFAppState().Countrys.toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: countrysList.length,
                    itemBuilder: (context, countrysListIndex) {
                      final countrysListItem = countrysList[countrysListIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.selectedFlag =
                                countrysListItem.flagLink48x36;
                            _model.selectedCountry = countrysListItem.ruName;
                            _model.listVISIBILITY = false;
                          });
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 8.0, 10.0, 8.0),
                              child: Container(
                                width: 30.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: CachedNetworkImage(
                                    fadeInDuration:
                                        Duration(milliseconds: 3000),
                                    fadeOutDuration:
                                        Duration(milliseconds: 3000),
                                    imageUrl: countrysListItem.flagLinkH24,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              countrysListItem.ruName,
                              style: FlutterFlowTheme.of(context).titleSmall,
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
    );
  }
}
