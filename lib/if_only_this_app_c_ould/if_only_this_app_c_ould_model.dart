import '/flutter_flow/flutter_flow_util.dart';
import 'if_only_this_app_c_ould_widget.dart' show IfOnlyThisAppCOuldWidget;
import 'package:flutter/material.dart';

class IfOnlyThisAppCOuldModel
    extends FlutterFlowModel<IfOnlyThisAppCOuldWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
