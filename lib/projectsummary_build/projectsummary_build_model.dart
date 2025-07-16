import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'projectsummary_build_widget.dart' show ProjectsummaryBuildWidget;
import 'package:flutter/material.dart';

class ProjectsummaryBuildModel
    extends FlutterFlowModel<ProjectsummaryBuildWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (fixflow brain)] action in projectsummaryBuild widget.
  ApiCallResponse? apiResult6nu;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Container widget.
  ApiCallResponse? apiResultuf9;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Column widget.
  ApiCallResponse? apiResultkg5;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Container widget.
  ApiCallResponse? apiResult0br;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in ListView widget.
  ApiCallResponse? apiResult4od;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in TextField widget.
  ApiCallResponse? apiResults9g;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in IconButton widget.
  ApiCallResponse? apiResultvdu;
  bool isDataUploading_uploadDataNkx = false;
  FFUploadedFile uploadedLocalFile_uploadDataNkx =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (fixflow brain)] action in IconButton widget.
  ApiCallResponse? apiResulta7e;
  // Stores action output result for [Backend Call - API (My Saved Projects)] action in Column widget.
  ApiCallResponse? apiResultoua;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Button widget.
  ApiCallResponse? apiResultv8w;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
