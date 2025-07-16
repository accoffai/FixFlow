import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_project_guidance_widget.dart' show MyProjectGuidanceWidget;
import 'package:flutter/material.dart';

class MyProjectGuidanceModel extends FlutterFlowModel<MyProjectGuidanceWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (fixflow brain)] action in MyProjectGuidance widget.
  ApiCallResponse? apiResultsny;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Container widget.
  ApiCallResponse? apiResultqyz;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in diyGuide widget.
  ApiCallResponse? apiResultrdb;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Container widget.
  ApiCallResponse? apiResultlir;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Container widget.
  ApiCallResponse? apiResult6ye;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Row widget.
  ApiCallResponse? apiResult4yg;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in ListView widget.
  ApiCallResponse? apiResult6sm;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Container widget.
  ApiCallResponse? apiResultc3l;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in TextField widget.
  ApiCallResponse? apiResultm18;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in IconButton widget.
  ApiCallResponse? apiResultw44;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in chat widget.
  ApiCallResponse? apiResultom7;
  bool isDataUploading_uploadDataRmt = false;
  FFUploadedFile uploadedLocalFile_uploadDataRmt =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (fixflow brain)] action in IconButton widget.
  ApiCallResponse? apiResultc69;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Button widget.
  ApiCallResponse? apiResultvh5;
  bool isDataUploading_uploadDataPy8 = false;
  FFUploadedFile uploadedLocalFile_uploadDataPy8 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (fixflow brain)] action in Row widget.
  ApiCallResponse? apiResulta74;
  // Stores action output result for [Backend Call - API (My Saved Projects)] action in savedProjects widget.
  ApiCallResponse? apiResultxuc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
