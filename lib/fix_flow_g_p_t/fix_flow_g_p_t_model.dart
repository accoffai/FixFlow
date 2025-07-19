import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'fix_flow_g_p_t_widget.dart' show FixFlowGPTWidget;
import 'package:flutter/material.dart';

class FixFlowGPTModel extends FlutterFlowModel<FixFlowGPTWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (fixflow brain)] action in FixFlowGPT widget.
  ApiCallResponse? apiResultg1p;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in IconButton widget.
  ApiCallResponse? apiResultmfg;
  // Stores action output result for [Backend Call - API (message)] action in ListView widget.
  ApiCallResponse? apiResultn49;
  // Stores action output result for [Backend Call - API (message)] action in Text widget.
  ApiCallResponse? apiResultc6h;
  bool isDataUploading_uploadDataFqe = false;
  FFUploadedFile uploadedLocalFile_uploadDataFqe =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (message)] action in TextField widget.
  ApiCallResponse? apiResultido;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in IconButton widget.
  ApiCallResponse? apiResultqj4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
