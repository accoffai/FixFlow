import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'projectsummary_build_model.dart';
export 'projectsummary_build_model.dart';

/// Project Results + Enhancements Page ("Project Summary & Build Assistant")
/// 🟠 Header
/// Title: “Project Summary & Enhancements”
///
/// Back button (← Plan Project Page)
///
/// Progress Tracker: "1 of 3" or “Generated” status (if needed)
///
/// 📋 Section 1: Generated Project Summary
/// Auto-filled by GPT after pressing "Generate Blueprint" on Plan Project
/// Page
///
/// Project Name
///
/// Type: (Remodel / Repair / Build)
///
/// Room: (Kitchen / Bathroom / etc.)
///
/// Scope of Work: Tiling, plumbing, etc.
///
/// Timeline & Budget (auto-populated if entered)
///
/// Auto Notes from GPT:
///
/// Estimated difficulty
///
/// Time commitment
///
/// High-level suggestions
///
/// 🧠 Section 2: GPT Enhancement Chat
/// Real conversation area for follow-up guidance from GPT
///
/// Header: "Let’s Improve This Project"
///
/// Chatbox UI:
///
/// Text input: “How can I improve this build?”
///
/// Voice mic button (🎤)
///
/// Paperclip (📎) for file/image uploads
///
/// Send Button (→)
///
/// 💬 AI Feed Example:
///
/// GPT: “To improve waterproofing, consider using RedGard before tile
/// installation…”
///
/// 📁 Section 3: Finalize & Save
/// Save to My Projects button → sends all collected details to My Projects
///
/// Optional Toggle: “Also Start DIY Checklist Now” → navigates straight into
/// Project Guidance Page (DIY Tracker)
///
/// ✅ Connected Flow Summary:
/// Plan Project Page → (Hit Generate)
///
/// Project Results + Enhancements Page (This one)
///
/// Save to My Projects
///
/// Enter Project Guidance (DIY Tracker) when they’re ready to start
///
/// 💡 Gemini Instructions:
/// You only need Gemini to build static layout containers. Structure each of
/// the 3 sections cleanly:
///
/// Give Chat area a nice elevated card
///
/// Leave space for GPT responses (scrollable if long)
///
/// Save Button at bottom, big and vibrant
///
/// Maintain the current color theme (dark background, vibrant accents)
class ProjectsummaryBuildWidget extends StatefulWidget {
  const ProjectsummaryBuildWidget({
    super.key,
    required this.projectName,
    required this.describeProject,
    required this.estimatedBudget,
    required this.howsoontobedone,
    required this.zip,
    required this.gps,
    required this.aiDifficulty,
    required this.aiTimeCommitment,
    required this.aiProTips,
    required this.fixflowAssistant,
    required this.userInput,
    required this.savedChecklist,
    required this.savedProject,
    required this.projectSummary,
    this.navigate,
    this.conversationList,
    this.conversation,
    required this.conversationFLow,
  });

  final String? projectName;
  final String? describeProject;
  final String? estimatedBudget;
  final String? howsoontobedone;
  final String? zip;
  final String? gps;
  final String? aiDifficulty;
  final String? aiTimeCommitment;
  final String? aiProTips;
  final String? fixflowAssistant;
  final String? userInput;
  final dynamic savedChecklist;
  final dynamic savedProject;
  final dynamic projectSummary;
  final LatLng? navigate;
  final int? conversationList;
  final String? conversation;
  final dynamic conversationFLow;

  static String routeName = 'projectsummaryBuild';
  static String routePath = '/projectsummaryBuild';

  @override
  State<ProjectsummaryBuildWidget> createState() =>
      _ProjectsummaryBuildWidgetState();
}

class _ProjectsummaryBuildWidgetState extends State<ProjectsummaryBuildWidget> {
  late ProjectsummaryBuildModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectsummaryBuildModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult6nu = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.projectSummary?.toString(),
        screenContext: widget.projectSummary?.toString(),
        inputType: widget.projectSummary?.toString(),
        inputValue: widget.projectSummary?.toString(),
      );

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.salesEngineLogCall.call();

      if (!(_model.apiResult6nu?.succeeded ?? true)) {
        context.pushNamed(FalseErrorWidget.routeName);
      }
    });

    _model.textController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.userInput,
      'User Input',
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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed(
                MainDashWidget.routeName,
                queryParameters: {
                  'planProject': serializeParam(
                    widget.projectSummary,
                    ParamType.JSON,
                  ),
                  'quickLogsPage': serializeParam(
                    widget.projectSummary,
                    ParamType.JSON,
                  ),
                  'myProjects': serializeParam(
                    widget.projectSummary,
                    ParamType.JSON,
                  ),
                  'mainDash': serializeParam(
                    widget.projectSummary,
                    ParamType.JSON,
                  ),
                  'userName': serializeParam(
                    widget.projectSummary?.toString(),
                    ParamType.String,
                  ),
                  'gps': serializeParam(
                    widget.navigate,
                    ParamType.LatLng,
                  ),
                }.withoutNulls,
              );
            },
          ),
          title: Text(
            'Project Summary & Enhancements',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.apiResultuf9 =
                          await FixFlowAIGroup.fixflowBrainCall.call();

                      if (!(_model.apiResultuf9?.succeeded ?? true)) {
                        context.pushNamed(FalseErrorWidget.routeName);
                      }

                      safeSetState(() {});
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF2A2A2A),
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                          color: Color(0xFF404040),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.assignment_outlined,
                                  color: Color(0xFFFF6B35),
                                  size: 24.0,
                                ),
                                Text(
                                  'Generated Project Summary',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                            Builder(
                              builder: (context) {
                                final summaryView =
                                    widget.projectSummary!.toList();

                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.apiResultkg5 = await FixFlowAIGroup
                                        .fixflowBrainCall
                                        .call();

                                    if (!(_model.apiResultkg5?.succeeded ??
                                        true)) {
                                      context.pushNamed(
                                          FalseErrorWidget.routeName);
                                    }

                                    safeSetState(() {});
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: List.generate(summaryView.length,
                                        (summaryViewIndex) {
                                      final summaryViewItem =
                                          summaryView[summaryViewIndex];
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Project Name',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFFCCCCCC),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              widget.projectName,
                                              'projectName',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Colors.white,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ],
                                      );
                                    }).divide(SizedBox(height: 12.0)),
                                  ),
                                );
                              },
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color(0xFF404040),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'AI Analysis:',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFFFF6B35),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.apiResult0br = await FixFlowAIGroup
                                          .fixflowBrainCall
                                          .call(
                                        userId: '',
                                        screenContext: '',
                                        inputType: '',
                                        inputValue: '',
                                      );

                                      if (!(_model.apiResult0br?.succeeded ??
                                          true)) {
                                        context.pushNamed(
                                            FalseErrorWidget.routeName);
                                      }

                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF1F1F1F),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Builder(
                                          builder: (context) {
                                            final aiAnalysis = widget
                                                .projectSummary!
                                                .toList();

                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: List.generate(
                                                  aiAnalysis.length,
                                                  (aiAnalysisIndex) {
                                                final aiAnalysisItem =
                                                    aiAnalysis[aiAnalysisIndex];
                                                return Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.trending_up_rounded,
                                                      color: Color(0xFFFF6B35),
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        widget.aiDifficulty,
                                                        'difficulty',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .inter(
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
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
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
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                );
                                              }).divide(SizedBox(height: 6.0)),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            4.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: Color(0xFF404040),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.psychology_rounded,
                                color: Color(0xFFFF6B35),
                                size: 24.0,
                              ),
                              Text(
                                'Let\'s Improve This Project',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                          Container(
                            width: double.infinity,
                            height: 300.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF1F1F1F),
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: Color(0xFF333333),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Builder(
                                builder: (context) {
                                  final conversationFLow =
                                      widget.conversationFLow!.toList();

                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.apiResult4od = await FixFlowAIGroup
                                          .fixflowBrainCall
                                          .call(
                                        userId: '',
                                        screenContext: '',
                                        inputType: '',
                                        inputValue: '',
                                      );

                                      if (!(_model.apiResult4od?.succeeded ??
                                          true)) {
                                        context.pushNamed(
                                            FalseErrorWidget.routeName);
                                      }

                                      safeSetState(() {});
                                    },
                                    child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      itemCount: conversationFLow.length,
                                      itemBuilder:
                                          (context, conversationFLowIndex) {
                                        final conversationFLowItem =
                                            conversationFLow[
                                                conversationFLowIndex];
                                        return Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF333333),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 32.0,
                                                    height: 32.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFFF6B35),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Icon(
                                                        Icons.smart_toy_rounded,
                                                        color: Colors.white,
                                                        size: 20.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      4.0),
                                                          child: Text(
                                                            'AI Assistant',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFFFF6B35),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            widget
                                                                .fixflowAssistant,
                                                            'FIxFlow ',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                                lineHeight: 1.4,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 12.0)),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFF1F1F1F),
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: Color(0xFF333333),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      onFieldSubmitted: (_) async {
                                        _model.apiResults9g =
                                            await FixFlowAIGroup
                                                .fixflowBrainCall
                                                .call();

                                        if ((_model.apiResults9g?.succeeded ??
                                            true)) {
                                          safeSetState(() {
                                            _model.textController?.text =
                                                valueOrDefault<String>(
                                              widget.userInput,
                                              'User Input',
                                            );
                                          });
                                        } else {
                                          context.pushNamed(
                                              FalseErrorWidget.routeName);
                                        }

                                        safeSetState(() {});
                                      },
                                      autofocus: false,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: valueOrDefault<String>(
                                          widget.userInput,
                                          'User Input',
                                        ),
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
                                              fontSize: 14.0,
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
                                            fontSize: 14.0,
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
                                      maxLines: 3,
                                      minLines: 1,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        if (!isAndroid && !isiOS)
                                          TextInputFormatter.withFunction(
                                              (oldValue, newValue) {
                                            return TextEditingValue(
                                              selection: newValue.selection,
                                              text: newValue.text
                                                  .toCapitalization(
                                                      TextCapitalization.words),
                                            );
                                          }),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 20.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xFF333333),
                                        icon: Icon(
                                          Icons.mic_rounded,
                                          color: Color(0xFFCCCCCC),
                                          size: 20.0,
                                        ),
                                        onPressed: () async {
                                          _model.apiResultvdu =
                                              await FixFlowAIGroup
                                                  .fixflowBrainCall
                                                  .call(
                                            userId: widget.projectSummary
                                                ?.toString(),
                                            screenContext: widget
                                                .projectSummary
                                                ?.toString(),
                                            inputType: widget.projectSummary
                                                ?.toString(),
                                            inputValue: widget.projectSummary
                                                ?.toString(),
                                          );

                                          await FixFlowAIGroup
                                              .verbalChatroomCall
                                              .call();

                                          if (!(_model
                                                  .apiResultvdu?.succeeded ??
                                              true)) {
                                            context.pushNamed(
                                                FalseErrorWidget.routeName);
                                          }

                                          safeSetState(() {});
                                        },
                                      ),
                                      FlutterFlowIconButton(
                                        borderRadius: 20.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xFF333333),
                                        icon: Icon(
                                          Icons.attach_file_rounded,
                                          color: Color(0xFFCCCCCC),
                                          size: 20.0,
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
                                                      m.storagePath,
                                                      context))) {
                                            safeSetState(() => _model
                                                    .isDataUploading_uploadDataNkx =
                                                true);
                                            var selectedUploadedFiles =
                                                <FFUploadedFile>[];

                                            try {
                                              selectedUploadedFiles =
                                                  selectedMedia
                                                      .map(
                                                          (m) => FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                      .toList();
                                            } finally {
                                              _model.isDataUploading_uploadDataNkx =
                                                  false;
                                            }
                                            if (selectedUploadedFiles.length ==
                                                selectedMedia.length) {
                                              safeSetState(() {
                                                _model.uploadedLocalFile_uploadDataNkx =
                                                    selectedUploadedFiles.first;
                                              });
                                            } else {
                                              safeSetState(() {});
                                              return;
                                            }
                                          }
                                        },
                                      ),
                                      FutureBuilder<ApiCallResponse>(
                                        future: FixFlowAIGroup.messageCall.call(
                                          receiverId: widget.conversationList,
                                          messageText: widget.conversation,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final iconButtonMessageResponse =
                                              snapshot.data!;

                                          return FlutterFlowIconButton(
                                            borderRadius: 20.0,
                                            buttonSize: 40.0,
                                            fillColor: Color(0xFFFF6B35),
                                            icon: Icon(
                                              Icons.send_rounded,
                                              color: Colors.white,
                                              size: 20.0,
                                            ),
                                            onPressed: () async {
                                              _model.apiResulta7e =
                                                  await FixFlowAIGroup
                                                      .fixflowBrainCall
                                                      .call();

                                              await FixFlowAIGroup.messageCall
                                                  .call(
                                                receiverId:
                                                    widget.projectSummary,
                                                messageText: widget
                                                    .projectSummary
                                                    ?.toString(),
                                              );

                                              if (!(_model.apiResulta7e
                                                      ?.succeeded ??
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
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: Color(0xFF404040),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.save_rounded,
                                color: Color(0xFFFF6B35),
                                size: 24.0,
                              ),
                              Text(
                                'Finalize & Save',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.apiResultoua = await FixFlowAIGroup
                                  .mySavedProjectsCall
                                  .call();

                              await FixFlowAIGroup.adminActionCall.call();

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

                              if (!(_model.apiResultoua?.succeeded ?? true)) {
                                context.pushNamed(FalseErrorWidget.routeName);
                              }

                              safeSetState(() {});
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF404040),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    _model.apiResultv8w = await FixFlowAIGroup
                                        .fixflowBrainCall
                                        .call(
                                      userId: getJsonField(
                                        widget.savedProject,
                                        r'''$.savedproject''',
                                      ).toString(),
                                      screenContext: getJsonField(
                                        widget.savedProject,
                                        r'''$.savedproject''',
                                      ).toString(),
                                      inputType: getJsonField(
                                        widget.savedProject,
                                        r'''$.savedproject''',
                                      ).toString(),
                                      inputValue: getJsonField(
                                        widget.savedProject,
                                        r'''$.savedproject''',
                                      ).toString(),
                                    );

                                    context.pushNamed(
                                      MyProjectsWidget.routeName,
                                      queryParameters: {
                                        'savedChecklist': serializeParam(
                                          getJsonField(
                                            widget.savedChecklist,
                                            r'''$.savedchecklist''',
                                          ).toString(),
                                          ParamType.String,
                                        ),
                                        'savedProject': serializeParam(
                                          getJsonField(
                                            widget.savedProject,
                                            r'''$.savedproject''',
                                          ),
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

                                    await FixFlowAIGroup.mySavedProjectsCall
                                        .call();

                                    if (!(_model.apiResultv8w?.succeeded ??
                                        true)) {
                                      context.pushNamed(
                                          FalseErrorWidget.routeName);
                                    }

                                    safeSetState(() {});
                                  },
                                  text: valueOrDefault<String>(
                                    widget.savedProject?.toString(),
                                    'Save Progress',
                                  ),
                                  icon: Icon(
                                    Icons.bookmark_add_rounded,
                                    size: 24.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 56.0,
                                    padding: EdgeInsets.all(8.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconColor: Colors.white,
                                    color: Color(0xFFFF6B35),
                                    textStyle: FlutterFlowTheme.of(context)
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
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ].divide(SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 24.0))
                    .addToStart(SizedBox(height: 16.0))
                    .addToEnd(SizedBox(height: 32.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
