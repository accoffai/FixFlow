import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'diagnose_page_widget.dart' show DiagnosePageWidget;
import 'package:flutter/material.dart';

class DiagnosePageModel extends FlutterFlowModel<DiagnosePageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataGz1 = false;
  FFUploadedFile uploadedLocalFile_uploadDataGz1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (fixflow brain)] action in DiagnosePage widget.
  ApiCallResponse? apiResult3v6;
  bool isDataUploading_uploadData2q1 = false;
  FFUploadedFile uploadedLocalFile_uploadData2q1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (fixflow brain)] action in Column widget.
  ApiCallResponse? apiResultdie;
  // State field(s) for StateProblem widget.
  FocusNode? stateProblemFocusNode;
  TextEditingController? stateProblemTextController;
  String? Function(BuildContext, String?)? stateProblemTextControllerValidator;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in StateProblem widget.
  ApiCallResponse? apiResult9rh;
  // State field(s) for LocationInput widget.
  FocusNode? locationInputFocusNode;
  TextEditingController? locationInputTextController;
  String? Function(BuildContext, String?)? locationInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in LocationInput widget.
  ApiCallResponse? apiResult3sf;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Row widget.
  ApiCallResponse? apiResulta25;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Text widget.
  ApiCallResponse? apiResultyq8;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    stateProblemFocusNode?.dispose();
    stateProblemTextController?.dispose();

    locationInputFocusNode?.dispose();
    locationInputTextController?.dispose();
  }
}
