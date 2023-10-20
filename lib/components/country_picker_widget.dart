import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'country_picker_model.dart';
export 'country_picker_model.dart';

class CountryPickerWidget extends StatefulWidget {
  const CountryPickerWidget({Key? key}) : super(key: key);

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
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
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
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 8.0, 5.0, 8.0),
                            child: Container(
                              width: 24.0,
                              height: 16.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: CachedNetworkImage(
                                  fadeInDuration: Duration(milliseconds: 3000),
                                  fadeOutDuration: Duration(milliseconds: 3000),
                                  imageUrl: countrysListItem.flagLinkH24,
                                  width: 24.0,
                                  height: 16.0,
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
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
