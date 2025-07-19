import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'find_contractor_widget.dart' show FindContractorWidget;
import 'package:flutter/material.dart';

class FindContractorModel extends FlutterFlowModel<FindContractorWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (fixflow brain)] action in FindContractor widget.
  ApiCallResponse? apiResultayz;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Column widget.
  ApiCallResponse? apiResult32d;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in TextField widget.
  ApiCallResponse? apiResultxgg;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in ListView widget.
  ApiCallResponse? apiResultfnf;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Container widget.
  ApiCallResponse? apiResultolp;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in name widget.
  ApiCallResponse? apiResultn56;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in SearchContractors widget.
  ApiCallResponse? apiResultr0h;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks.
  Future contractorSelction(
    BuildContext context, {
    required String? projectType,
    required String? budget,
    required String? timeline,
    required String? zipcode,
  }) async {}
}
