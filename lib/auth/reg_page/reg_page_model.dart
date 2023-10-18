import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'reg_page_widget.dart' show RegPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegPageModel extends FlutterFlowModel<RegPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for repassword widget.
  TextEditingController? repasswordController;
  late bool repasswordVisibility;
  String? Function(BuildContext, String?)? repasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    repasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailController?.dispose();
    passwordController?.dispose();
    repasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
