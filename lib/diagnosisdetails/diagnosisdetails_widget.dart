import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'diagnosisdetails_model.dart';
export 'diagnosisdetails_model.dart';

/// Page Name: diagnosisdetails
/// Purpose: Show what the AI or backend determined based on the user's image,
/// description, and location.
///
/// 🧱 What to include on diagnosisdetails page:
/// UI Element	Value (Bind this to...)
/// Photo/Image Preview	parameters.imageURL (or whatever param you pass)
/// Issue Description	parameters.description
/// Detected Location	parameters.zipCode or parameters.location
/// Diagnosis Result	parameters.result (from AI/Xano response)
/// Suggested Fix Steps	parameters.steps (if applicable)
/// Back or Close Button	Pop current page action
class DiagnosisdetailsWidget extends StatefulWidget {
  const DiagnosisdetailsWidget({
    super.key,
    required this.photoURL,
    required this.problemDescription,
    required this.location,
    required this.diagnosisResult,
    required this.suggestedFix,
    required this.fixSteps,
    required this.diagnoiseDetails,
    this.gps,
  });

  final String? photoURL;
  final String? problemDescription;
  final String? location;
  final String? diagnosisResult;
  final String? suggestedFix;
  final String? fixSteps;
  final dynamic diagnoiseDetails;
  final LatLng? gps;

  static String routeName = 'diagnosisdetails';
  static String routePath = '/diagnosisdetails';

  @override
  State<DiagnosisdetailsWidget> createState() => _DiagnosisdetailsWidgetState();
}

class _DiagnosisdetailsWidgetState extends State<DiagnosisdetailsWidget> {
  late DiagnosisdetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiagnosisdetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResults1n = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.diagnoiseDetails?.toString(),
        screenContext: widget.diagnoiseDetails?.toString(),
        inputType: widget.diagnoiseDetails?.toString(),
        inputValue: widget.diagnoiseDetails?.toString(),
      );

      await FixFlowAIGroup.alarmTriggerCall.call();

      await FixFlowAIGroup.openAIBuildControlCall.call();

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResults1n?.succeeded ?? true)) {
        context.pushNamed(FalseErrorWidget.routeName);
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed(
                MainDashWidget.routeName,
                queryParameters: {
                  'planProject': serializeParam(
                    widget.diagnoiseDetails,
                    ParamType.JSON,
                  ),
                  'quickLogsPage': serializeParam(
                    widget.diagnoiseDetails,
                    ParamType.JSON,
                  ),
                  'myProjects': serializeParam(
                    widget.diagnoiseDetails,
                    ParamType.JSON,
                  ),
                  'mainDash': serializeParam(
                    widget.diagnoiseDetails,
                    ParamType.JSON,
                  ),
                  'userName': serializeParam(
                    widget.diagnoiseDetails?.toString(),
                    ParamType.String,
                  ),
                  'gps': serializeParam(
                    widget.gps,
                    ParamType.LatLng,
                  ),
                }.withoutNulls,
              );
            },
          ),
          title: Text(
            'Diagnosis Details',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Builder(
                      builder: (context) {
                        final dianosisDetails =
                            widget.diagnoiseDetails!.toList();

                        return Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: List.generate(dianosisDetails.length,
                              (dianosisDetailsIndex) {
                            final dianosisDetailsItem =
                                dianosisDetails[dianosisDetailsIndex];
                            return Container(
                              width: double.infinity,
                              height: 250.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    safeSetState(() => _model
                                        .isDataUploading_uploadDataLbm = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();
                                    } finally {
                                      _model.isDataUploading_uploadDataLbm =
                                          false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                        selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile_uploadDataLbm =
                                            selectedUploadedFiles.first;
                                      });
                                    } else {
                                      safeSetState(() {});
                                      return;
                                    }
                                  }

                                  _model.apiResult48a = await FixFlowAIGroup
                                      .fixflowBrainCall
                                      .call();

                                  if (!(_model.apiResult48a?.succeeded ??
                                      true)) {
                                    context
                                        .pushNamed(FalseErrorWidget.routeName);
                                  }

                                  safeSetState(() {});
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.network(
                                    widget.photoURL!,
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          FindContractorWidget.routeName,
                          queryParameters: {
                            'name': serializeParam(
                              (_model.apiResultfgr?.jsonBody ?? '').toString(),
                              ParamType.String,
                            ),
                            'trade': serializeParam(
                              widget.diagnoiseDetails?.toString(),
                              ParamType.String,
                            ),
                            'rating': serializeParam(
                              widget.diagnoiseDetails?.toString(),
                              ParamType.String,
                            ),
                            'reviews': serializeParam(
                              widget.diagnoiseDetails?.toString(),
                              ParamType.String,
                            ),
                            'image': serializeParam(
                              widget.diagnoiseDetails?.toString(),
                              ParamType.String,
                            ),
                            'findContractor': serializeParam(
                              widget.diagnoiseDetails,
                              ParamType.JSON,
                            ),
                            'gps': serializeParam(
                              widget.gps,
                              ParamType.LatLng,
                            ),
                            'projectType': serializeParam(
                              '',
                              ParamType.String,
                            ),
                            'timeline': serializeParam(
                              '',
                              ParamType.String,
                            ),
                            'budget': serializeParam(
                              0,
                              ParamType.int,
                            ),
                            'zip': serializeParam(
                              '',
                              ParamType.String,
                            ),
                            'userContractorPreference': serializeParam(
                              widget.diagnoiseDetails?.toString(),
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );

                        await FixFlowAIGroup.fixflowBrainCall.call();

                        if (!(_model.apiResultfgr?.jsonBody ?? '')) {
                          context.pushNamed(FalseErrorWidget.routeName);
                        }
                      },
                      text: 'Get Professional Help',
                      options: FFButtonOptions(
                        height: 48.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Expanded(
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.apiResultvpz =
                              await FixFlowAIGroup.postReportCall.call();

                          await FixFlowAIGroup.fixflowBrainCall.call();

                          await FixFlowAIGroup.mySavedProjectsCall.call();

                          if (!(_model.apiResultvpz?.succeeded ?? true)) {
                            context.pushNamed(FalseErrorWidget.routeName);
                          }

                          safeSetState(() {});
                        },
                        text: 'Save Report',
                        options: FFButtonOptions(
                          height: 48.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
