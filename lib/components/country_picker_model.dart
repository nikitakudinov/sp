import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'country_picker_widget.dart' show CountryPickerWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CountryPickerModel extends FlutterFlowModel<CountryPickerWidget> {
  ///  Local state fields for this component.

  String selectedFlag = 'Не выбран';

  String selectedCountry = 'Не выбрано';

  bool listVISIBILITY = false;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
