import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'entry_widget.dart' show EntryWidget;
import 'package:flutter/material.dart';

class EntryModel extends FlutterFlowModel<EntryWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (fixflow brain)] action in entry widget.
  ApiCallResponse? apiResultqux;
  // State field(s) for email_input widget.
  FocusNode? emailInputFocusNode;
  TextEditingController? emailInputTextController;
  String? Function(BuildContext, String?)? emailInputTextControllerValidator;
  // State field(s) for Password_input widget.
  FocusNode? passwordInputFocusNode;
  TextEditingController? passwordInputTextController;
  late bool passwordInputVisibility;
  String? Function(BuildContext, String?)? passwordInputTextControllerValidator;
  // State field(s) for Confirm_Password_input widget.
  FocusNode? confirmPasswordInputFocusNode;
  TextEditingController? confirmPasswordInputTextController;
  late bool confirmPasswordInputVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (Auth Login )] action in Button widget.
  ApiCallResponse? apiResult1dy;
  // Stores action output result for [Backend Call - API (Auth Login )] action in Text widget.
  ApiCallResponse? apiResultpvs;
  // Stores action output result for [Backend Call - API (Auth signup)] action in Text widget.
  ApiCallResponse? apiResultdib;
  // Stores action output result for [Backend Call - API (ForgotPassword)] action in Text widget.
  ApiCallResponse? apiResult2uu;

  @override
  void initState(BuildContext context) {
    passwordInputVisibility = false;
    confirmPasswordInputVisibility = false;
  }

  @override
  void dispose() {
    emailInputFocusNode?.dispose();
    emailInputTextController?.dispose();

    passwordInputFocusNode?.dispose();
    passwordInputTextController?.dispose();

    confirmPasswordInputFocusNode?.dispose();
    confirmPasswordInputTextController?.dispose();
  }
}
