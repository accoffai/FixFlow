import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'plan_project_page_widget.dart' show PlanProjectPageWidget;
import 'package:flutter/material.dart';

class PlanProjectPageModel extends FlutterFlowModel<PlanProjectPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (fixflow brain)] action in PlanProjectPage widget.
  ApiCallResponse? apiResultk46;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Column widget.
  ApiCallResponse? apiResultg9o;
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameTextController;
  String? Function(BuildContext, String?)? projectNameTextControllerValidator;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in projectName widget.
  ApiCallResponse? apiResultspj;
  // State field(s) for describeProject widget.
  FocusNode? describeProjectFocusNode;
  TextEditingController? describeProjectTextController;
  String? Function(BuildContext, String?)?
      describeProjectTextControllerValidator;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in describeProject widget.
  ApiCallResponse? apiResultok2;
  // State field(s) for estimatedBudget widget.
  FocusNode? estimatedBudgetFocusNode;
  TextEditingController? estimatedBudgetTextController;
  String? Function(BuildContext, String?)?
      estimatedBudgetTextControllerValidator;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in estimatedBudget widget.
  ApiCallResponse? apiResultdqr;
  // State field(s) for Zip widget.
  FocusNode? zipFocusNode;
  TextEditingController? zipTextController;
  String? Function(BuildContext, String?)? zipTextControllerValidator;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Zip widget.
  ApiCallResponse? apiResultlhz;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Gps widget.
  ApiCallResponse? apiResult9ui;
  // Stores action output result for [Backend Call - API (fixflow brain)] action in Button widget.
  ApiCallResponse? apiResulttwr;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    projectNameFocusNode?.dispose();
    projectNameTextController?.dispose();

    describeProjectFocusNode?.dispose();
    describeProjectTextController?.dispose();

    estimatedBudgetFocusNode?.dispose();
    estimatedBudgetTextController?.dispose();

    zipFocusNode?.dispose();
    zipTextController?.dispose();
  }
}
