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
import 'my_project_guidance_model.dart';
export 'my_project_guidance_model.dart';

/// Page Name: My Project Guidance
/// 🎯 Purpose
/// Let GPT guide the user through their project step-by-step — as a live AI
/// assistant, not a static blueprint.
///
/// 🧱 PAGE LAYOUT STRUCTURE (No mocks, only real utility)
/// 🔲 Header
/// Title: My Project Guidance
///
/// Optional: Display project name from previous page or passed parameter
/// (e.g., “Bathroom Remodel”)
///
/// 🔵 1. Project Details Summary Box (from previous input)
/// Label: Project Overview
///
/// Fields auto-filled from passed parameters or GPT-summarized:
///
/// Room: Bathroom
///
/// Type: Remodel
///
/// Scope: Tiling, plumbing, painting
///
/// ✅ You can also include an Edit icon to return to Plan Project page if
/// needed.
///
/// 💬 2. GPT CONVERSATION AREA
/// Large chat screen with:
///
/// Timestamped messages
///
/// Scrollable log
///
/// Checklist-style formatting for GPT responses like:
///
/// vbnet
/// Copy
/// Edit
/// ✅ Step 1: Shut off water supply
/// ⏳ Step 2: Remove old vanity
/// ⌨️ 3. Message Input + Tools
/// User Input Box:
///
/// Label: Ask for guidance or updates
///
/// Placeholder: "What do I need to do after tiling?"
///
/// Send Button: Connects directly to GPT function
///
/// Mic Input Option: (Optional) Use native mic input to log voice or ask
/// questions
///
/// Attachment Button: Let users upload a photo for visual feedback (if
/// supported)
///
/// 📋 4. Live Checklist Tracker (GPT-generated)
/// Shows project progress:
///
/// Toggle ON/OFF as steps are done
///
/// Automatically updated by GPT when prompted
///
/// Users can manually check/uncheck
///
/// Optional: Add small “% Completed” bar (visual encouragement)
///
/// 💾 5. Save Progress Button
/// Saves current GPT log + checklist to:
///
/// My Projects page
///
/// Labels with project name + timestamp
///
/// Also gives a prompt:
/// “Would you like to continue where you left off next time?” → YES/NO → tied
/// to app state.
///
/// 🔁 6. “Return to My Projects” Button
/// Navigates back to saved projects list.
///
/// Make sure it passes the correct state/context.
class MyProjectGuidanceWidget extends StatefulWidget {
  const MyProjectGuidanceWidget({
    super.key,
    required this.savedChecklist,
    required this.savedProject,
    required this.diyGuidance,
    required this.projectType,
    required this.location,
    required this.scope,
    required this.projectName,
    required this.locationType,
    required this.completionPercentage,
    bool? aiOnlineStatus,
    required this.aiConversation,
    required this.userConversation,
    required this.statusColor,
    required this.conversationOverview,
    this.conversation,
    this.conversatioFlow,
  }) : this.aiOnlineStatus = aiOnlineStatus ?? true;

  final dynamic savedChecklist;
  final dynamic savedProject;
  final String? diyGuidance;
  final String? projectType;
  final String? location;
  final String? scope;
  final String? projectName;
  final String? locationType;
  final int? completionPercentage;
  final bool aiOnlineStatus;
  final String? aiConversation;
  final String? userConversation;
  final String? statusColor;
  final dynamic conversationOverview;
  final String? conversation;
  final String? conversatioFlow;

  static String routeName = 'MyProjectGuidance';
  static String routePath = '/myProjectGuidance';

  @override
  State<MyProjectGuidanceWidget> createState() =>
      _MyProjectGuidanceWidgetState();
}

class _MyProjectGuidanceWidgetState extends State<MyProjectGuidanceWidget> {
  late MyProjectGuidanceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyProjectGuidanceModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultsny = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.savedProject?.toString(),
        screenContext: widget.savedProject?.toString(),
        inputType: widget.savedProject?.toString(),
        inputValue: widget.savedProject?.toString(),
      );

      await FixFlowAIGroup.alarmTriggerCall.call();

      await FixFlowAIGroup.openAIBuildControlCall.call();

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResultsny?.succeeded ?? true)) {
        context.pushNamed(FalseErrorWidget.routeName);
      }
    });

    _model.textController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.userConversation,
      '-',
    ));
    _model.textFieldFocusNode ??= FocusNode();
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
        backgroundColor: Color(0xFF1A1A1A),
        appBar: AppBar(
          backgroundColor: Color(0xFF1A1A1A),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project Guidance',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
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
                  Builder(
                    builder: (context) {
                      final completionStatus = getJsonField(
                        widget.savedChecklist,
                        r'''$.savedChecklist''',
                      ).toList();

                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.apiResulta74 =
                              await FixFlowAIGroup.fixflowBrainCall.call();

                          await FixFlowAIGroup.savedChecklistCall.call();

                          if (!(_model.apiResulta74?.succeeded ?? true)) {
                            context.pushNamed(FalseErrorWidget.routeName);
                          }

                          safeSetState(() {});
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(completionStatus.length,
                              (completionStatusIndex) {
                            final completionStatusItem =
                                completionStatus[completionStatusIndex];
                            return Container(
                              width: 60.0,
                              height: 4.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF8C00),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            );
                          }).divide(SizedBox(width: 4.0)),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: Color(0xFF404040),
                    icon: Icon(
                      Icons.folder_rounded,
                      color: Color(0xFFFF8C00),
                      size: 18.0,
                    ),
                    onPressed: () async {
                      _model.apiResultxuc =
                          await FixFlowAIGroup.mySavedProjectsCall.call();

                      context.pushNamed(
                        MyProjectsWidget.routeName,
                        queryParameters: {
                          'savedChecklist': serializeParam(
                            widget.savedProject?.toString(),
                            ParamType.String,
                          ),
                          'savedProject': serializeParam(
                            widget.savedProject,
                            ParamType.JSON,
                          ),
                          'projectName': serializeParam(
                            widget.savedProject?.toString(),
                            ParamType.String,
                          ),
                          'location': serializeParam(
                            widget.savedProject?.toString(),
                            ParamType.String,
                          ),
                          'imageURL': serializeParam(
                            widget.savedProject?.toString(),
                            ParamType.String,
                          ),
                          'lastUpdated': serializeParam(
                            widget.savedProject?.toString(),
                            ParamType.String,
                          ),
                          'project': serializeParam(
                            widget.savedProject?.toString(),
                            ParamType.String,
                          ),
                          'diy': serializeParam(
                            widget.savedProject,
                            ParamType.JSON,
                          ),
                        }.withoutNulls,
                      );

                      if (!(_model.apiResultxuc?.succeeded ?? true)) {
                        context.pushNamed(FalseErrorWidget.routeName);
                      }

                      safeSetState(() {});
                    },
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 12.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.apiResultqyz =
                        await FixFlowAIGroup.fixflowBrainCall.call();

                    await FixFlowAIGroup.dIYGuideCall.call();

                    if (!(_model.apiResultqyz?.succeeded ?? true)) {
                      context.pushNamed(FalseErrorWidget.routeName);
                    }

                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF2D2D2D),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'My Project Guidance',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.projectName,
                                      'Project Name',
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
                                          color: Color(0xFFFF8C00),
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Color(0xFF404040),
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Color(0xFFFF8C00),
                              size: 20.0,
                            ),
                            onPressed: () async {
                              _model.apiResultrdb =
                                  await FixFlowAIGroup.fixflowBrainCall.call();

                              context.pushNamed(
                                DiyguideWidget.routeName,
                                queryParameters: {
                                  'documentFormat': serializeParam(
                                    widget.savedProject?.toString(),
                                    ParamType.String,
                                  ),
                                  'generatedWhen': serializeParam(
                                    widget.savedProject?.toString(),
                                    ParamType.String,
                                  ),
                                  'pages': serializeParam(
                                    widget.savedProject?.toString(),
                                    ParamType.String,
                                  ),
                                  'projectName': serializeParam(
                                    widget.savedProject?.toString(),
                                    ParamType.String,
                                  ),
                                  'diyGuide': serializeParam(
                                    widget.savedProject?.toString(),
                                    ParamType.String,
                                  ),
                                  'diyPage': serializeParam(
                                    widget.savedProject,
                                    ParamType.JSON,
                                  ),
                                }.withoutNulls,
                              );

                              await FixFlowAIGroup.dIYGuideCall.call();

                              if (!(_model.apiResultrdb?.succeeded ?? true)) {
                                context.pushNamed(FalseErrorWidget.routeName);
                              }

                              safeSetState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.apiResultlir =
                        await FixFlowAIGroup.fixflowBrainCall.call();

                    await FixFlowAIGroup.mySavedProjectsCall.call();

                    if (!(_model.apiResultlir?.succeeded ?? true)) {
                      context.pushNamed(FalseErrorWidget.routeName);
                    }

                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF2D2D2D),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Color(0xFF404040),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Builder(
                        builder: (context) {
                          final projectOverview =
                              widget.savedProject!.toList();

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(projectOverview.length,
                                (projectOverviewIndex) {
                              final projectOverviewItem =
                                  projectOverview[projectOverviewIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Project Overview',
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
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              );
                            }).divide(SizedBox(height: 8.0)),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF2D2D2D),
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Color(0xFF404040),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Builder(
                      builder: (context) {
                        final conversationOverview =
                            widget.conversationOverview!.toList();

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(conversationOverview.length,
                              (conversationOverviewIndex) {
                            final conversationOverviewItem =
                                conversationOverview[conversationOverviewIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 12.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.apiResult6ye = await FixFlowAIGroup
                                      .fixflowBrainCall
                                      .call();

                                  if (!(_model.apiResult6ye?.succeeded ??
                                      true)) {
                                    context
                                        .pushNamed(FalseErrorWidget.routeName);
                                  }

                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF404040),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.apiResult4yg =
                                            await FixFlowAIGroup
                                                .fixflowBrainCall
                                                .call();

                                        if (!(_model.apiResult4yg?.succeeded ??
                                            true)) {
                                          context.pushNamed(
                                              FalseErrorWidget.routeName);
                                        }

                                        safeSetState(() {});
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'AI Guidance Chat',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.interTight(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Colors.white,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 8.0,
                                                height: 8.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF00FF00),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.network(
                                                      widget.statusColor!,
                                                    ).image,
                                                  ),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                widget.aiOnlineStatus
                                                    .toString(),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFF00FF00),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ].divide(SizedBox(width: 4.0)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF2D2D2D),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                onFieldSubmitted: (_) async {
                                  _model.apiResultm18 = await FixFlowAIGroup
                                      .fixflowBrainCall
                                      .call(
                                    userId: widget.conversation,
                                    screenContext: widget.conversatioFlow,
                                    inputType: '',
                                    inputValue: '',
                                  );

                                  if ((_model.apiResultm18?.succeeded ??
                                      true)) {
                                    safeSetState(() {
                                      _model.textController?.text =
                                          valueOrDefault<String>(
                                        widget.userConversation,
                                        '-',
                                      );
                                    });
                                  } else {
                                    context
                                        .pushNamed(FalseErrorWidget.routeName);
                                  }

                                  safeSetState(() {});
                                },
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: widget.userConversation,
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
                                        color: Color(0xFFAAAAAA),
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
                                      color: Color(0xFF404040),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF8C00),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFF1A1A1A),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          12.0, 12.0, 12.0, 12.0),
                                ),
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
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                maxLines: 3,
                                cursorColor: Color(0xFFFF8C00),
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            FutureBuilder<ApiCallResponse>(
                              future: FixFlowAIGroup.messageCall.call(
                                receiverId: widget.conversationOverview,
                                messageText:
                                    widget.conversationOverview?.toString(),
                                inputMessageText:
                                    widget.conversationOverview?.toString(),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final iconButtonMessageResponse =
                                    snapshot.data!;

                                return FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 44.0,
                                  fillColor: Color(0xFFFF8C00),
                                  icon: Icon(
                                    Icons.send_rounded,
                                    color: Color(0xFF1A1A1A),
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    _model.apiResultw44 = await FixFlowAIGroup
                                        .fixflowBrainCall
                                        .call(
                                      userId: widget.savedProject?.toString(),
                                      screenContext:
                                          widget.savedProject?.toString(),
                                      inputType:
                                          widget.savedProject?.toString(),
                                      inputValue:
                                          widget.savedProject?.toString(),
                                    );

                                    if (!(_model.apiResultw44?.succeeded ??
                                        true)) {
                                      context.pushNamed(
                                          FalseErrorWidget.routeName);
                                    }

                                    safeSetState(() {});
                                  },
                                );
                              },
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: Color(0xFF404040),
                              icon: Icon(
                                Icons.mic_rounded,
                                color: Color(0xFFFF8C00),
                                size: 18.0,
                              ),
                              onPressed: () async {
                                _model.apiResultom7 = await FixFlowAIGroup
                                    .fixflowBrainCall
                                    .call();

                                context.pushNamed(
                                  FixFLowChatroomWidget.routeName,
                                  queryParameters: {
                                    'fixFLowChat': serializeParam(
                                      widget.savedProject,
                                      ParamType.JSON,
                                    ),
                                  }.withoutNulls,
                                );

                                await FixFlowAIGroup.verbalChatroomCall.call();

                                if (!(_model.apiResultom7?.succeeded ?? true)) {
                                  context.pushNamed(FalseErrorWidget.routeName);
                                }

                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: Color(0xFF404040),
                              icon: Icon(
                                Icons.camera_alt_rounded,
                                color: Color(0xFFFF8C00),
                                size: 18.0,
                              ),
                              onPressed: () async {
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
                                      .isDataUploading_uploadDataRmt = true);
                                  var selectedUploadedFiles =
                                      <FFUploadedFile>[];

                                  try {
                                    selectedUploadedFiles = selectedMedia
                                        .map((m) => FFUploadedFile(
                                              name:
                                                  m.storagePath.split('/').last,
                                              bytes: m.bytes,
                                              height: m.dimensions?.height,
                                              width: m.dimensions?.width,
                                              blurHash: m.blurHash,
                                            ))
                                        .toList();
                                  } finally {
                                    _model.isDataUploading_uploadDataRmt =
                                        false;
                                  }
                                  if (selectedUploadedFiles.length ==
                                      selectedMedia.length) {
                                    safeSetState(() {
                                      _model.uploadedLocalFile_uploadDataRmt =
                                          selectedUploadedFiles.first;
                                    });
                                  } else {
                                    safeSetState(() {});
                                    return;
                                  }
                                }

                                _model.apiResultc69 =
                                    await FixFlowAIGroup.fixflowBrainCall.call(
                                  userId: '',
                                  screenContext: '',
                                  inputType: '',
                                  inputValue: '',
                                );

                                if (!(_model.apiResultc69?.succeeded ?? true)) {
                                  context.pushNamed(FalseErrorWidget.routeName);
                                }

                                safeSetState(() {});
                              },
                            ),
                            Expanded(
                              child: FFButtonWidget(
                                onPressed: () async {
                                  _model.apiResultvh5 = await FixFlowAIGroup
                                      .fixflowBrainCall
                                      .call(
                                    userId: widget.savedProject?.toString(),
                                    screenContext:
                                        widget.savedProject?.toString(),
                                    inputType: widget.savedProject?.toString(),
                                    inputValue:
                                        widget.savedProject?.toString(),
                                  );

                                  context.pushNamed(
                                    MyProjectsWidget.routeName,
                                    queryParameters: {
                                      'savedChecklist': serializeParam(
                                        widget.savedChecklist?.toString(),
                                        ParamType.String,
                                      ),
                                      'savedProject': serializeParam(
                                        widget.savedProject,
                                        ParamType.JSON,
                                      ),
                                      'projectName': serializeParam(
                                        widget.projectName,
                                        ParamType.String,
                                      ),
                                      'location': serializeParam(
                                        widget.location,
                                        ParamType.String,
                                      ),
                                      'imageURL': serializeParam(
                                        widget.savedProject?.toString(),
                                        ParamType.String,
                                      ),
                                      'lastUpdated': serializeParam(
                                        widget.savedProject?.toString(),
                                        ParamType.String,
                                      ),
                                      'project': serializeParam(
                                        widget.savedProject?.toString(),
                                        ParamType.String,
                                      ),
                                      'diy': serializeParam(
                                        widget.savedProject,
                                        ParamType.JSON,
                                      ),
                                    }.withoutNulls,
                                  );

                                  await FixFlowAIGroup.verbalChatroomCall
                                      .call();

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
                                        .isDataUploading_uploadDataPy8 = true);
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
                                      _model.isDataUploading_uploadDataPy8 =
                                          false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                        selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile_uploadDataPy8 =
                                            selectedUploadedFiles.first;
                                      });
                                    } else {
                                      safeSetState(() {});
                                      return;
                                    }
                                  }

                                  if (!(_model.apiResultvh5?.succeeded ??
                                      true)) {
                                    context
                                        .pushNamed(FalseErrorWidget.routeName);
                                  }

                                  safeSetState(() {});
                                },
                                text: 'Save Progress',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFFF8C00),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF1A1A1A),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
