import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'diagnose_page_model.dart';
export 'diagnose_page_model.dart';

/// Diagnose an Issue”
///
/// Subtext: “Upload a photo or take one now.
///
/// Then describe what’s wrong, and we’ll help you fix it.”
///
/// Main Input Fields:
///
/// Image Upload
///
/// 📸 Upload or open camera to take a picture
///
/// Store in Xano under diagnostics.image_url
///
/// Text Description
///
/// Multiline input: “What seems to be the problem?”
///
/// Connect to diagnostics.description
///
/// Location Field (auto-filled via GPS or manual ZIP input)
///
/// Connect to user.location or diagnostics.zip_code
///
/// Submit Button:
///
/// Label: “Run Diagnosis”
///
/// Button color: Neon orange
///
/// Spinner/loading animation during processing
///
/// 🧠 Backend Connection in Xano
/// Submit Flow:
///
/// On tap of Run Diagnosis, trigger a POST to diagnostics table with:
///
/// user_id (from session)
///
/// image_url
///
/// description
///
/// location
///
/// After storing the input, call OpenAI (already connected) to analyze the
/// issue using prompt templates.
///
/// Response should include:
///
/// diagnosis_summary
///
/// likely_cause
///
/// suggested_solution
///
/// tools_needed
///
/// urgency_level (optional: “Low, Medium, High”)
///
/// Then, route user to Page 5: Diagnosis Results
///
/// ✅ Gemini Instruction
/// "Create a page named DiagnoseIssue. Let the user upload or take a photo of
/// their home repair issue, type a brief description, and auto-fill location.
/// Once submitted, send the data to Xano via the diagnostics table. Display a
/// loading indicator during processing, then transition to a result page once
/// the diagnosis is ready. Use dark theme background (#1c1c1e), vibrant
/// orange buttons, and clean spacing. This page should feel simple and
/// intuitive."
class DiagnosePageWidget extends StatefulWidget {
  const DiagnosePageWidget({
    super.key,
    required this.userInput,
    required this.zip,
    required this.photoURL,
    required this.problemDescription,
    required this.location,
    required this.diagnosisResults,
    required this.suggestedFFix,
    required this.fixSteps,
    required this.gps,
    required this.diagnoisePage,
  });

  final String? userInput;
  final String? zip;
  final String? photoURL;
  final String? problemDescription;
  final String? location;
  final String? diagnosisResults;
  final String? suggestedFFix;
  final String? fixSteps;
  final LatLng? gps;
  final dynamic diagnoisePage;

  static String routeName = 'DiagnosePage';
  static String routePath = '/diagnosePage';

  @override
  State<DiagnosePageWidget> createState() => _DiagnosePageWidgetState();
}

class _DiagnosePageWidgetState extends State<DiagnosePageWidget> {
  late DiagnosePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiagnosePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final selectedMedia = await selectMediaWithSourceBottomSheet(
        context: context,
        allowPhoto: true,
      );
      if (selectedMedia != null &&
          selectedMedia
              .every((m) => validateFileFormat(m.storagePath, context))) {
        safeSetState(() => _model.isDataUploading_uploadDataGz1 = true);
        var selectedUploadedFiles = <FFUploadedFile>[];

        try {
          selectedUploadedFiles = selectedMedia
              .map((m) => FFUploadedFile(
                    name: m.storagePath.split('/').last,
                    bytes: m.bytes,
                    height: m.dimensions?.height,
                    width: m.dimensions?.width,
                    blurHash: m.blurHash,
                  ))
              .toList();
        } finally {
          _model.isDataUploading_uploadDataGz1 = false;
        }
        if (selectedUploadedFiles.length == selectedMedia.length) {
          safeSetState(() {
            _model.uploadedLocalFile_uploadDataGz1 =
                selectedUploadedFiles.first;
          });
        } else {
          safeSetState(() {});
          return;
        }
      }

      _model.apiResult3v6 = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.diagnoisePage?.toString(),
        screenContext: widget.diagnoisePage?.toString(),
        inputType: widget.diagnoisePage?.toString(),
        inputValue: widget.diagnoisePage?.toString(),
      );

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResult3v6?.succeeded ?? true)) {
        context.pushNamed(FalseErrorWidget.routeName);
      }
    });

    _model.stateProblemTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.userInput,
      'state the issue',
    ));
    _model.stateProblemFocusNode ??= FocusNode();

    _model.locationInputTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.zip,
      'Location',
    ));
    _model.locationInputFocusNode ??= FocusNode();
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
        backgroundColor: Color(0xFF1C1C1E),
        appBar: AppBar(
          backgroundColor: Color(0xFF1C1C1E),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 20.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed(
                MainDashWidget.routeName,
                queryParameters: {
                  'planProject': serializeParam(
                    widget.diagnoisePage,
                    ParamType.JSON,
                  ),
                  'quickLogsPage': serializeParam(
                    widget.diagnoisePage,
                    ParamType.JSON,
                  ),
                  'myProjects': serializeParam(
                    widget.diagnoisePage,
                    ParamType.JSON,
                  ),
                  'mainDash': serializeParam(
                    widget.diagnoisePage,
                    ParamType.JSON,
                  ),
                  'userName': serializeParam(
                    widget.diagnoisePage?.toString(),
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
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Diagnose an Issue',
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                      ),
                      Text(
                        'Upload a photo or take one now. Then describe what\'s wrong, and we\'ll help you fix it.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFFB0B0B0),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF2C2C2E),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: Color(0xFF3A3A3C),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
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
                                  validateFileFormat(m.storagePath, context))) {
                            safeSetState(() =>
                                _model.isDataUploading_uploadData2q1 = true);
                            var selectedUploadedFiles = <FFUploadedFile>[];

                            try {
                              selectedUploadedFiles = selectedMedia
                                  .map((m) => FFUploadedFile(
                                        name: m.storagePath.split('/').last,
                                        bytes: m.bytes,
                                        height: m.dimensions?.height,
                                        width: m.dimensions?.width,
                                        blurHash: m.blurHash,
                                      ))
                                  .toList();
                            } finally {
                              _model.isDataUploading_uploadData2q1 = false;
                            }
                            if (selectedUploadedFiles.length ==
                                selectedMedia.length) {
                              safeSetState(() {
                                _model.uploadedLocalFile_uploadData2q1 =
                                    selectedUploadedFiles.first;
                              });
                            } else {
                              safeSetState(() {});
                              return;
                            }
                          }

                          context.pushNamed(
                            DiagnosisdetailsWidget.routeName,
                            queryParameters: {
                              'photoURL': serializeParam(
                                widget.diagnoisePage?.toString(),
                                ParamType.String,
                              ),
                              'problemDescription': serializeParam(
                                widget.diagnoisePage?.toString(),
                                ParamType.String,
                              ),
                              'location': serializeParam(
                                widget.diagnoisePage?.toString(),
                                ParamType.String,
                              ),
                              'diagnosisResult': serializeParam(
                                widget.diagnoisePage?.toString(),
                                ParamType.String,
                              ),
                              'suggestedFix': serializeParam(
                                widget.diagnoisePage?.toString(),
                                ParamType.String,
                              ),
                              'fixSteps': serializeParam(
                                widget.diagnoisePage?.toString(),
                                ParamType.String,
                              ),
                              'diagnoiseDetails': serializeParam(
                                widget.diagnoisePage,
                                ParamType.JSON,
                              ),
                            }.withoutNulls,
                          );

                          _model.apiResultdie =
                              await FixFlowAIGroup.fixflowBrainCall.call();

                          if (!(_model.apiResultdie?.succeeded ?? true)) {
                            context.pushNamed(FalseErrorWidget.routeName);
                          }

                          safeSetState(() {});
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Color(0xFFFF6B35),
                              size: 48.0,
                            ),
                            Text(
                              'Upload or Take Photo',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                            ),
                            Text(
                              'Tap to open camera or select from gallery',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFB0B0B0),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What seems to be the problem?',
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                      ),
                      TextFormField(
                        controller: _model.stateProblemTextController,
                        focusNode: _model.stateProblemFocusNode,
                        onFieldSubmitted: (_) async {
                          _model.apiResult9rh =
                              await FixFlowAIGroup.fixflowBrainCall.call();

                          if (!(_model.apiResult9rh?.succeeded ?? true)) {
                            context.pushNamed(FalseErrorWidget.routeName);
                          }

                          safeSetState(() {});
                        },
                        autofocus: false,
                        textCapitalization: TextCapitalization.sentences,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Describe the issue in detail...',
                          hintStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF8E8E93),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF3A3A3C),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF6B35),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          filled: true,
                          fillColor: Color(0xFF2C2C2E),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        maxLines: 4,
                        minLines: 3,
                        keyboardType: TextInputType.multiline,
                        cursorColor: Color(0xFFFF6B35),
                        validator: _model.stateProblemTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [
                          if (!isAndroid && !isiOS)
                            TextInputFormatter.withFunction(
                                (oldValue, newValue) {
                              return TextEditingValue(
                                selection: newValue.selection,
                                text: newValue.text.toCapitalization(
                                    TextCapitalization.sentences),
                              );
                            }),
                        ],
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 56.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF2C2C2E),
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Color(0xFF3A3A3C),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color(0xFFFF6B35),
                                size: 20.0,
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller:
                                      _model.locationInputTextController,
                                  focusNode: _model.locationInputFocusNode,
                                  onFieldSubmitted: (_) async {
                                    _model.apiResult3sf = await FixFlowAIGroup
                                        .fixflowBrainCall
                                        .call();

                                    if (!(_model.apiResult3sf?.succeeded ??
                                        true)) {
                                      context.pushNamed(
                                          FalseErrorWidget.routeName);
                                    }

                                    safeSetState(() {});
                                  },
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Auto-detected or enter ZIP code',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF8E8E93),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  cursorColor: Color(0xFFFF6B35),
                                  validator: _model
                                      .locationInputTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  widget.gps?.toString(),
                                  'GPS',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFFF6B35),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFF6B35), Color(0xFFFF8C42)],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(1.0, -1.0),
                        end: AlignmentDirectional(-1.0, 1.0),
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.apiResulta25 =
                            await FixFlowAIGroup.fixflowBrainCall.call(
                          userId: widget.diagnoisePage?.toString(),
                          screenContext: widget.diagnoisePage?.toString(),
                          inputType: widget.diagnoisePage?.toString(),
                          inputValue: widget.diagnoisePage?.toString(),
                        );

                        context.pushNamed(
                          DiagnosisdetailsWidget.routeName,
                          queryParameters: {
                            'photoURL': serializeParam(
                              widget.diagnoisePage?.toString(),
                              ParamType.String,
                            ),
                            'problemDescription': serializeParam(
                              widget.diagnoisePage?.toString(),
                              ParamType.String,
                            ),
                            'location': serializeParam(
                              widget.diagnoisePage?.toString(),
                              ParamType.String,
                            ),
                            'diagnosisResult': serializeParam(
                              widget.diagnoisePage?.toString(),
                              ParamType.String,
                            ),
                            'suggestedFix': serializeParam(
                              widget.diagnoisePage?.toString(),
                              ParamType.String,
                            ),
                            'fixSteps': serializeParam(
                              widget.diagnoisePage?.toString(),
                              ParamType.String,
                            ),
                            'diagnoiseDetails': serializeParam(
                              widget.diagnoisePage,
                              ParamType.JSON,
                            ),
                          }.withoutNulls,
                        );

                        if (!(_model.apiResulta25?.succeeded ?? true)) {
                          context.pushNamed(FalseErrorWidget.routeName);
                        }

                        safeSetState(() {});
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.psychology_outlined,
                            color: Color(0xFF1C1C1E),
                            size: 24.0,
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.apiResultyq8 =
                                  await FixFlowAIGroup.fixflowBrainCall.call(
                                userId: widget.diagnoisePage?.toString(),
                                screenContext:
                                    widget.diagnoisePage?.toString(),
                                inputType: widget.diagnoisePage?.toString(),
                                inputValue: widget.diagnoisePage?.toString(),
                              );

                              context.pushNamed(
                                DiagnosisdetailsWidget.routeName,
                                queryParameters: {
                                  'photoURL': serializeParam(
                                    widget.diagnoisePage?.toString(),
                                    ParamType.String,
                                  ),
                                  'problemDescription': serializeParam(
                                    widget.problemDescription,
                                    ParamType.String,
                                  ),
                                  'location': serializeParam(
                                    widget.location,
                                    ParamType.String,
                                  ),
                                  'diagnosisResult': serializeParam(
                                    widget.diagnosisResults,
                                    ParamType.String,
                                  ),
                                  'suggestedFix': serializeParam(
                                    widget.suggestedFFix,
                                    ParamType.String,
                                  ),
                                  'fixSteps': serializeParam(
                                    widget.fixSteps,
                                    ParamType.String,
                                  ),
                                  'diagnoiseDetails': serializeParam(
                                    widget.diagnoisePage,
                                    ParamType.JSON,
                                  ),
                                }.withoutNulls,
                              );

                              if (!(_model.apiResultyq8?.succeeded ?? true)) {
                                context.pushNamed(FalseErrorWidget.routeName);
                              }

                              safeSetState(() {});
                            },
                            child: Text(
                              valueOrDefault<String>(
                                widget.diagnoisePage?.toString(),
                                'Diagnose',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1C1C1E),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2E),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 24.0,
                              height: 24.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF6B35),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Processing your diagnosis...',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'This may take a few moments',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFFB0B0B0),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 24.0))
                    .addToStart(SizedBox(height: 32.0))
                    .addToEnd(SizedBox(height: 32.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
