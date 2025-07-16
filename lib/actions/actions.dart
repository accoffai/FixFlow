import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';

Future updateUserProfile(BuildContext context) async {
  ApiCallResponse? apiResultis0;

  await action_blocks.updateUserProfile(context);
  apiResultis0 = await FixFlowAIGroup.projectPlannedCall.call(
    userId: '',
  );

  if (!(apiResultis0.succeeded ?? true)) {
    context.pushNamed(FalseErrorWidget.routeName);
  }
}

Future changePassword(BuildContext context) async {
  ApiCallResponse? apiResultpa6;

  apiResultpa6 = await FixFlowAIGroup.adminActionCall.call();

  if (!(apiResultpa6.succeeded ?? true)) {
    context.pushNamed(FalseErrorWidget.routeName);
  }
}

Future<String?> contractorSearch(
  BuildContext context, {
  required String? projectType,
  required String? budget,
  required String? timeline,
  required String? zipCode,
}) async {
  ApiCallResponse? apiResult6sq;

  apiResult6sq = await FixFlowAIGroup.fixflowBrainCall.call();

  if (!(apiResult6sq.succeeded ?? true)) {
    context.pushNamed(FalseErrorWidget.routeName);
  }

  return null;
}
