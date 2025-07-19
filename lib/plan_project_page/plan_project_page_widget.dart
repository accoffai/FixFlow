import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'plan_project_page_model.dart';
export 'plan_project_page_model.dart';

/// PlanProjectPage
/// Background Color: #1c1c1e
/// Colors to Use: Vibrant Orange (#FF5C00) for CTAs, Neon Blue (#00CFFF) for
/// accents, White (#FFFFFF) for readable labels
/// Font: Bold headers, clean sans-serif body text (use same styling from
/// previous pages)
///
/// 🔧 UI Layout Instructions for Gemini:
/// Page Title (Top Center):
///
/// Text: Plan a Project
///
/// Subtext: “Tell us what you’re building or fixing.
///
/// We’ll give you a step-by-step guide.”
///
/// Field 1 – Project Title (Text Input):
///
/// Label: “Project Name”
///
/// Placeholder: “e.g., Bathroom Sink Repair, Install Light Fixture”
///
/// Field 2 – Describe Project (Multiline Text Box):
///
/// Label: “Describe what you're trying to do”
///
/// Placeholder: “Explain the steps you think are involved or what you need
/// help with…”
///
/// Field 3 – Budget (Numeric Input):
///
/// Label: “Estimated Budget ($)”
///
/// Placeholder: “Optional, helps us recommend materials/tools”
///
/// Field 4 – Timeline (Dropdown or Slider):
///
/// Label: “How soon do you want it done?”
///
/// Options: Urgent, This Week, This Month, Flexible
///
/// Field 5 – Location (Auto-GPS or ZIP field):
///
/// Label: “Where is this project located?”
///
/// Placeholder: “Auto-detect or enter ZIP code”
///
/// Button: GPS auto-detect
///
/// Submit Button (Primary CTA):
///
/// Label: Generate Blueprint
///
/// Style: Use bold orange gradient with white text
///
/// Action: Connect this to Xano API: POST /plan_project
///
/// Input Fields: project_title, description, budget, timeline, location,
/// user_id
///
/// Response: Redirect to next page with generated plan
///
/// 🧠 Functionality Behind the Scenes (Gemini + Xano):
/// Button Logic (Run on Tap):
///
/// Validate all fields (except optional budget)
///
/// Send to Xano backend (/plan_project)
///
/// On success, show a loading animation, then redirect to GeneratedPlanPage
///
/// Dynamic GPS Field:
///
/// Gemini should use Firebase/Flutter GPS permission to autofill ZIP
///
/// Store in Xano field location
///
/// Visual Feedback:
///
/// If loading, use spinning wrench icon with text “Creating your repair
/// plan…”
class PlanProjectPageWidget extends StatefulWidget {
  const PlanProjectPageWidget({
    super.key,
    required this.projectName,
    required this.describeProject,
    required this.estimatedBudget,
    required this.selectTIme,
    required this.zip,
    required this.gps,
    required this.planProjectPage,
  });

  final String? projectName;
  final String? describeProject;
  final String? estimatedBudget;
  final String? selectTIme;
  final String? zip;
  final LatLng? gps;
  final dynamic planProjectPage;

  static String routeName = 'PlanProjectPage';
  static String routePath = '/planProjectPage';

  @override
  State<PlanProjectPageWidget> createState() => _PlanProjectPageWidgetState();
}

class _PlanProjectPageWidgetState extends State<PlanProjectPageWidget>
    with TickerProviderStateMixin {
  late PlanProjectPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlanProjectPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultk46 = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.planProjectPage?.toString(),
        screenContext: widget.planProjectPage?.toString(),
        inputType: widget.planProjectPage?.toString(),
        inputValue: widget.planProjectPage?.toString(),
      );

      await FixFlowAIGroup.alarmTriggerCall.call();

      await FixFlowAIGroup.openAIBuildControlCall.call();

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResultk46?.succeeded ?? true)) {
        context.pushNamed(FalseErrorWidget.routeName);
      }
    });

    _model.projectNameTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.projectName,
      'Project Name',
    ));
    _model.projectNameFocusNode ??= FocusNode();

    _model.describeProjectTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.describeProject,
      'Project details',
    ));
    _model.describeProjectFocusNode ??= FocusNode();

    _model.estimatedBudgetTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.estimatedBudget,
      'Budget',
    ));
    _model.estimatedBudgetFocusNode ??= FocusNode();

    _model.zipTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.zip,
      'Zip',
    ));
    _model.zipFocusNode ??= FocusNode();

    animationsMap.addAll({
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
        backgroundColor: Color(0xFF1C1C1E),
        appBar: AppBar(
          backgroundColor: Color(0xFF1C1C1E),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 20.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed(
                MainDashWidget.routeName,
                queryParameters: {
                  'planProject': serializeParam(
                    widget.planProjectPage,
                    ParamType.JSON,
                  ),
                  'quickLogsPage': serializeParam(
                    widget.planProjectPage,
                    ParamType.JSON,
                  ),
                  'myProjects': serializeParam(
                    widget.planProjectPage,
                    ParamType.JSON,
                  ),
                  'mainDash': serializeParam(
                    widget.planProjectPage,
                    ParamType.JSON,
                  ),
                  'userName': serializeParam(
                    '',
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
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.apiResultg9o =
                    await FixFlowAIGroup.fixflowBrainCall.call();

                if (!(_model.apiResultg9o?.succeeded ?? true)) {
                  context.pushNamed(FalseErrorWidget.routeName);
                }

                safeSetState(() {});
              },
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Plan a Project',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Text(
                            'Tell us what you\'re building or fixing. We\'ll give you a step-by-step guide.',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFCCCCCC),
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
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.apiResult7n1 =
                              await FixFlowAIGroup.fixflowBrainCall.call(
                            screenContext: widget.planProjectPage?.toString(),
                            inputType: widget.planProjectPage?.toString(),
                            inputValue: widget.planProjectPage?.toString(),
                            userId: widget.planProjectPage?.toString(),
                          );

                          if (!(_model.apiResult7n1?.succeeded ?? true)) {
                            context.pushNamed(FalseErrorWidget.routeName);
                          }

                          safeSetState(() {});
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Project Name',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                  controller: _model.projectNameTextController,
                                  focusNode: _model.projectNameFocusNode,
                                  onFieldSubmitted: (_) async {
                                    _model.apiResultspj = await FixFlowAIGroup
                                        .fixflowBrainCall
                                        .call();

                                    if (!(_model.apiResultspj?.succeeded ??
                                        true)) {
                                      context.pushNamed(
                                          FalseErrorWidget.routeName);
                                    }

                                    safeSetState(() {});
                                  },
                                  autofocus: false,
                                  textCapitalization: TextCapitalization.words,
                                  textInputAction: TextInputAction.next,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText:
                                        'e.g., Bathroom Sink Repair, Install Light Fixture',
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
                                          color: Color(0xFF888888),
                                          fontSize: 16.0,
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
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF444444),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF00CFFF),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF5C00),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF5C00),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF2C2C2E),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 16.0),
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
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  validator: _model
                                      .projectNameTextControllerValidator
                                      .asValidator(context),
                                  inputFormatters: [
                                    if (!isAndroid && !isiOS)
                                      TextInputFormatter.withFunction(
                                          (oldValue, newValue) {
                                        return TextEditingValue(
                                          selection: newValue.selection,
                                          text: newValue.text.toCapitalization(
                                              TextCapitalization.words),
                                        );
                                      }),
                                  ],
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Describe what you\'re trying to do',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                  controller:
                                      _model.describeProjectTextController,
                                  focusNode: _model.describeProjectFocusNode,
                                  onFieldSubmitted: (_) async {
                                    _model.apiResultok2 = await FixFlowAIGroup
                                        .fixflowBrainCall
                                        .call();

                                    if (!(_model.apiResultok2?.succeeded ??
                                        true)) {
                                      context.pushNamed(
                                          FalseErrorWidget.routeName);
                                    }

                                    safeSetState(() {});
                                  },
                                  autofocus: false,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText:
                                        'Explain the steps you think are involved or what you need help with…',
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
                                          color: Color(0xFF888888),
                                          fontSize: 16.0,
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
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF444444),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF00CFFF),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF5C00),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF5C00),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF2C2C2E),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 16.0),
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
                                        fontSize: 16.0,
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
                                  validator: _model
                                      .describeProjectTextControllerValidator
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
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Estimated Budget (\$)',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                  controller:
                                      _model.estimatedBudgetTextController,
                                  focusNode: _model.estimatedBudgetFocusNode,
                                  onFieldSubmitted: (_) async {
                                    _model.apiResultdqr = await FixFlowAIGroup
                                        .fixflowBrainCall
                                        .call();

                                    if (!(_model.apiResultdqr?.succeeded ??
                                        true)) {
                                      context.pushNamed(
                                          FalseErrorWidget.routeName);
                                    }

                                    safeSetState(() {});
                                  },
                                  autofocus: false,
                                  textInputAction: TextInputAction.next,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText:
                                        'Optional, helps us recommend materials/tools',
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
                                          color: Color(0xFF888888),
                                          fontSize: 16.0,
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
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF444444),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF00CFFF),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF5C00),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF5C00),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF2C2C2E),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 16.0),
                                    prefixIcon: Icon(
                                      Icons.attach_money,
                                      color: Color(0xFF888888),
                                      size: 20.0,
                                    ),
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
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  keyboardType: TextInputType.number,
                                  validator: _model
                                      .estimatedBudgetTextControllerValidator
                                      .asValidator(context),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Where is this project located?',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: _model.zipTextController,
                                        focusNode: _model.zipFocusNode,
                                        onFieldSubmitted: (_) async {
                                          _model.apiResultlhz =
                                              await FixFlowAIGroup
                                                  .fixflowBrainCall
                                                  .call(
                                            userId: '',
                                            screenContext: '',
                                            inputType: '',
                                            inputValue: '',
                                          );

                                          if (!(_model
                                                  .apiResultlhz?.succeeded ??
                                              true)) {
                                            context.pushNamed(
                                                FalseErrorWidget.routeName);
                                          }

                                          safeSetState(() {});
                                        },
                                        autofocus: false,
                                        textInputAction: TextInputAction.done,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText:
                                              'Auto-detect or enter ZIP code',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF888888),
                                                fontSize: 16.0,
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
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF444444),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF00CFFF),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5C00),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5C00),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFF2C2C2E),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 16.0),
                                          prefixIcon: Icon(
                                            Icons.location_on,
                                            color: Color(0xFF888888),
                                            size: 20.0,
                                          ),
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
                                              fontSize: 16.0,
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
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .zipTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 12.0,
                                      buttonSize: 56.0,
                                      fillColor: Color(0xFF00CFFF),
                                      icon: Icon(
                                        Icons.gps_fixed,
                                        color: Color(0xFF1C1C1E),
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        _model.apiResult9ui =
                                            await FixFlowAIGroup
                                                .fixflowBrainCall
                                                .call();

                                        if (!(_model.apiResult9ui?.succeeded ??
                                            true)) {
                                          context.pushNamed(
                                              FalseErrorWidget.routeName);
                                        }

                                        safeSetState(() {});
                                      },
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFFF5C00), Color(0xFFFF8C00)],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(1.0, -1.0),
                          end: AlignmentDirectional(-1.0, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            ProjectsummaryBuildWidget.routeName,
                            queryParameters: {
                              'projectName': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'describeProject': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'estimatedBudget': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'howsoontobedone': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'zip': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'gps': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'aiDifficulty': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'aiTimeCommitment': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'aiProTips': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'fixflowAssistant': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'userInput': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'savedChecklist': serializeParam(
                                widget.planProjectPage,
                                ParamType.JSON,
                              ),
                              'savedProject': serializeParam(
                                widget.planProjectPage,
                                ParamType.JSON,
                              ),
                              'projectSummary': serializeParam(
                                widget.planProjectPage,
                                ParamType.JSON,
                              ),
                              'navigate': serializeParam(
                                widget.gps,
                                ParamType.LatLng,
                              ),
                              'conversationList': serializeParam(
                                widget.planProjectPage,
                                ParamType.int,
                              ),
                              'conversation': serializeParam(
                                widget.planProjectPage?.toString(),
                                ParamType.String,
                              ),
                              'conversationFLow': serializeParam(
                                widget.planProjectPage,
                                ParamType.JSON,
                              ),
                            }.withoutNulls,
                          );

                          _model.apiResulttwr =
                              await FixFlowAIGroup.fixflowBrainCall.call(
                            userId: widget.planProjectPage?.toString(),
                            screenContext: widget.planProjectPage?.toString(),
                            inputType: widget.planProjectPage?.toString(),
                            inputValue: widget.planProjectPage?.toString(),
                          );

                          if (!(_model.apiResulttwr?.succeeded ?? true)) {
                            context.pushNamed(FalseErrorWidget.routeName);
                          }

                          safeSetState(() {});
                        },
                        text: valueOrDefault<String>(
                          widget.planProjectPage?.toString(),
                          'Generate Project ',
                        ),
                        icon: Icon(
                          Icons.build_circle,
                          size: 24.0,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 60.0,
                          padding: EdgeInsets.all(8.0),
                          iconAlignment: IconAlignment.start,
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconColor: Colors.white,
                          color: Colors.transparent,
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation']!),
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
      ),
    );
  }
}
