import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_dash_model.dart';
export 'main_dash_model.dart';

/// FixFlow Dashboard
/// Theme Colors:
///
/// Background: #1C1C1E
///
/// Primary Button: Vibrant Orange #FF4500
///
/// Accent Text: Neon Blue #00BFFF
///
/// Font: Clean, modern sans-serif (white/light gray)
///
/// 🎨 Layout Instructions:
/// Top Header (Fixed):
///
/// Logo Icon: FixFlow AI (same as welcome page)
///
/// Greeting Text: “Welcome back, [User Name]”
///
/// Subtext: “What would you like to work on today?”
///
/// Primary Action Cards (Grid or Scrollable List):
///
/// 🧰 Diagnose an Issue
/// → Route to AI-powered image/audio issue diagnosis
/// → Connect to: issue_reported table
/// → Buttons for “Take a Photo” / “Upload Voice Description”
/// → Triggers OpenAI integration for AI diagnosis
///
/// 📐 Plan a Project
/// → Route to project blueprint generator
/// → Connect to: project_planned, project_step, project_materials
/// → Auto-suggest tools/materials from: tool, material, tool_recommendation
///
/// 📍 Find a Contractor
/// → Opens contractor discovery
/// → Connect to: contractor_profile, contractor_service,
/// contractor_availability
///
/// 📚 DIY Guides
/// → Navigate to list of DIY tutorials
/// → Connect to: diy_guide, diy_guide_review, diy_guide_question
///
/// 💬 Community
/// → Navigate to community feed
/// → Connect to: community_post, comment, like, group, group_member
///
/// Bottom Navigation Bar (Fixed):
///
/// Home (active)
///
/// Projects
///
/// Bookings
///
/// Messages
///
/// Profile
///
/// 🔌 Backend Connections via Xano:
/// Fetch user data on login from user table to personalize dashboard
///
/// Use conditional logic to display:
///
/// If project_planned exists → Show “Resume Project”
///
/// If issue_reported in progress → Show “Pending Diagnosis”
///
/// Use GPS/location from user.location to auto-filter local contractors and
/// tool vendors
///
/// Display community content based on group_id or user_id relevance
///
/// ✅ Gemini Action Notes:
/// Every button here should be directly wired to a matching Xano API function
/// already configured
///
/// Dynamic visibility based on user data from Xano
///
/// When building widgets, always request the current user.id to filter/show
/// correct items
class MainDashWidget extends StatefulWidget {
  const MainDashWidget({
    super.key,
    required this.planProject,
    required this.quickLogsPage,
    required this.myProjects,
    required this.mainDash,
    required this.userName,
    required this.gps,
  });

  final dynamic planProject;
  final dynamic quickLogsPage;
  final dynamic myProjects;
  final dynamic mainDash;
  final String? userName;
  final LatLng? gps;

  static String routeName = 'MainDash';
  static String routePath = '/mainDash';

  @override
  State<MainDashWidget> createState() => _MainDashWidgetState();
}

class _MainDashWidgetState extends State<MainDashWidget>
    with TickerProviderStateMixin {
  late MainDashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainDashModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult823 = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.mainDash?.toString(),
        screenContext: widget.mainDash?.toString(),
        inputType: widget.mainDash?.toString(),
        inputValue: widget.mainDash?.toString(),
      );

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResult823?.succeeded ?? true)) {
        context.pushNamed(FalseErrorWidget.routeName);
      }
    });

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 1800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'gridViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
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
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF1C1C1E),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'FixFlow AI',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .fontStyle,
                                                ),
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'Smart Home Solutions',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF00BFFF),
                                                fontSize: 12.0,
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
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation']!),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    widget.userName,
                                    'Hello,',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmall
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontStyle,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation']!),
                                Text(
                                  'What would you like to work on today?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFFB0B0B0),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation2']!),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 0.7,
                      ),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 8.0,
                                  color: Color(0x40000000),
                                  offset: Offset(
                                    0.0,
                                    4.0,
                                  ),
                                )
                              ],
                              gradient: LinearGradient(
                                colors: [Color(0xFF2C2C2E), Color(0xFF3A3A3C)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, 1.0),
                                end: AlignmentDirectional(-1.0, -1.0),
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  DiagnosePageWidget.routeName,
                                  queryParameters: {
                                    'userInput': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'zip': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'photoURL': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'problemDescription': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'location': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'diagnosisResults': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'suggestedFFix': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'fixSteps': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'gps': serializeParam(
                                      widget.gps,
                                      ParamType.LatLng,
                                    ),
                                    'diagnoisePage': serializeParam(
                                      widget.planProject,
                                      ParamType.JSON,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFF4500),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.camera_alt_outlined,
                                        color: Colors.white,
                                        size: 28.0,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            DiagnosePageWidget.routeName,
                                            queryParameters: {
                                              'userInput': serializeParam(
                                                widget.planProject?.toString(),
                                                ParamType.String,
                                              ),
                                              'zip': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'photoURL': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'problemDescription':
                                                  serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'location': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'diagnosisResults':
                                                  serializeParam(
                                                widget.planProject?.toString(),
                                                ParamType.String,
                                              ),
                                              'suggestedFFix': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'fixSteps': serializeParam(
                                                widget.planProject?.toString(),
                                                ParamType.String,
                                              ),
                                              'gps': serializeParam(
                                                widget.gps,
                                                ParamType.LatLng,
                                              ),
                                              'diagnoisePage': serializeParam(
                                                widget.planProject,
                                                ParamType.JSON,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Text(
                                          'Diagnose Issue',
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
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'AI-powered diagnosis',
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
                                              color: Color(0xFF00BFFF),
                                              fontSize: 12.0,
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
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ],
                              ),
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation3']!),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 8.0,
                                  color: Color(0x40000000),
                                  offset: Offset(
                                    0.0,
                                    4.0,
                                  ),
                                )
                              ],
                              gradient: LinearGradient(
                                colors: [Color(0xFF2C2C2E), Color(0xFF3A3A3C)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, 1.0),
                                end: AlignmentDirectional(-1.0, -1.0),
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  PlanProjectPageWidget.routeName,
                                  queryParameters: {
                                    'projectName': serializeParam(
                                      widget.planProject?.toString(),
                                      ParamType.String,
                                    ),
                                    'describeProject': serializeParam(
                                      widget.planProject?.toString(),
                                      ParamType.String,
                                    ),
                                    'estimatedBudget': serializeParam(
                                      widget.planProject?.toString(),
                                      ParamType.String,
                                    ),
                                    'selectTIme': serializeParam(
                                      widget.planProject?.toString(),
                                      ParamType.String,
                                    ),
                                    'zip': serializeParam(
                                      widget.planProject?.toString(),
                                      ParamType.String,
                                    ),
                                    'gps': serializeParam(
                                      widget.gps,
                                      ParamType.LatLng,
                                    ),
                                    'planProjectPage': serializeParam(
                                      widget.planProject,
                                      ParamType.JSON,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFF4500),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.architecture_outlined,
                                        color: Colors.white,
                                        size: 28.0,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            PlanProjectPageWidget.routeName,
                                            queryParameters: {
                                              'projectName': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'describeProject': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'estimatedBudget': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'selectTIme': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'zip': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'gps': serializeParam(
                                                widget.gps,
                                                ParamType.LatLng,
                                              ),
                                              'planProjectPage': serializeParam(
                                                widget.planProject,
                                                ParamType.JSON,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Text(
                                          'Plan Project',
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
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Blueprint generator',
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
                                              color: Color(0xFF00BFFF),
                                              fontSize: 12.0,
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
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ],
                              ),
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation4']!),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 8.0,
                                  color: Color(0x40000000),
                                  offset: Offset(
                                    0.0,
                                    4.0,
                                  ),
                                )
                              ],
                              gradient: LinearGradient(
                                colors: [Color(0xFF2C2C2E), Color(0xFF3A3A3C)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, 1.0),
                                end: AlignmentDirectional(-1.0, -1.0),
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  FindContractorWidget.routeName,
                                  queryParameters: {
                                    'name': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'trade': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'rating': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'reviews': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'image': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'findContractor': serializeParam(
                                      widget.myProjects,
                                      ParamType.JSON,
                                    ),
                                    'gps': serializeParam(
                                      widget.gps,
                                      ParamType.LatLng,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFF4500),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.person_search_outlined,
                                        color: Colors.white,
                                        size: 28.0,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            FindContractorWidget.routeName,
                                            queryParameters: {
                                              'name': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'trade': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'rating': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'reviews': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'image': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'findContractor': serializeParam(
                                                widget.planProject,
                                                ParamType.JSON,
                                              ),
                                              'gps': serializeParam(
                                                widget.gps,
                                                ParamType.LatLng,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Text(
                                          'Find Contractor',
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
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Local professionals',
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
                                              color: Color(0xFF00BFFF),
                                              fontSize: 12.0,
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
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ],
                              ),
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation5']!),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 8.0,
                                  color: Color(0x40000000),
                                  offset: Offset(
                                    0.0,
                                    4.0,
                                  ),
                                )
                              ],
                              gradient: LinearGradient(
                                colors: [Color(0xFF2C2C2E), Color(0xFF3A3A3C)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, 1.0),
                                end: AlignmentDirectional(-1.0, -1.0),
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  IfOnlyThisAppCOuldWidget.routeName,
                                  queryParameters: {
                                    'userRequest': serializeParam(
                                      '',
                                      ParamType.String,
                                    ),
                                    'ifOnlyAppPage': serializeParam(
                                      widget.mainDash,
                                      ParamType.JSON,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFF4500),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.menu_book_outlined,
                                        color: Colors.white,
                                        size: 28.0,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            IfOnlyThisAppCOuldWidget.routeName,
                                            queryParameters: {
                                              'userRequest': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'ifOnlyAppPage': serializeParam(
                                                widget.mainDash,
                                                ParamType.JSON,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Text(
                                          'If Only This App Could',
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
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Wishful Thinking',
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
                                              color: Color(0xFF00BFFF),
                                              fontSize: 12.0,
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
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ],
                              ),
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation6']!),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['gridViewOnPageLoadAnimation']!),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8.0,
                            color: Color(0x40000000),
                            offset: Offset(
                              0.0,
                              4.0,
                            ),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [Color(0xFF2C2C2E), Color(0xFF3A3A3C)],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(1.0, 1.0),
                          end: AlignmentDirectional(-1.0, -1.0),
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            CommunityProjectsWidget.routeName,
                            queryParameters: {
                              'fixflowCommonity': serializeParam(
                                widget.mainDash,
                                ParamType.JSON,
                              ),
                              'gps': serializeParam(
                                widget.gps,
                                ParamType.LatLng,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF4500),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.groups_outlined,
                                  color: Colors.white,
                                  size: 32.0,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Join Community',
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
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Connect with DIY enthusiasts and share your projects',
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
                                          color: Color(0xFFB0B0B0),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  CommunityProjectsWidget.routeName,
                                  queryParameters: {
                                    'fixflowCommonity': serializeParam(
                                      widget.mainDash,
                                      ParamType.JSON,
                                    ),
                                    'gps': serializeParam(
                                      widget.gps,
                                      ParamType.LatLng,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xFF00BFFF),
                                size: 24.0,
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Container(
                      width: double.infinity,
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 24.0))
                    .addToStart(SizedBox(height: 20.0))
                    .addToEnd(SizedBox(height: 100.0)),
              ),
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation1']!),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                width: double.infinity,
                height: 90.0,
                decoration: BoxDecoration(
                  color: Color(0xFF2C2C2E),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                      color: Color(0x40000000),
                      offset: Offset(
                        0.0,
                        -4.0,
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF4500),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.home_outlined,
                                color: Colors.white,
                                size: 24.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              'Home',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                MyProjectsWidget.routeName,
                                queryParameters: {
                                  'savedChecklist': serializeParam(
                                    widget.myProjects?.toString(),
                                    ParamType.String,
                                  ),
                                  'savedProject': serializeParam(
                                    widget.myProjects,
                                    ParamType.JSON,
                                  ),
                                  'projectName': serializeParam(
                                    widget.myProjects?.toString(),
                                    ParamType.String,
                                  ),
                                  'location': serializeParam(
                                    widget.myProjects?.toString(),
                                    ParamType.String,
                                  ),
                                  'imageURL': serializeParam(
                                    widget.myProjects?.toString(),
                                    ParamType.String,
                                  ),
                                  'lastUpdated': serializeParam(
                                    widget.myProjects?.toString(),
                                    ParamType.String,
                                  ),
                                  'project': serializeParam(
                                    widget.myProjects?.toString(),
                                    ParamType.String,
                                  ),
                                  'diy': serializeParam(
                                    widget.myProjects,
                                    ParamType.JSON,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF3A3A3C),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      MyProjectsWidget.routeName,
                                      queryParameters: {
                                        'savedChecklist': serializeParam(
                                          widget.myProjects?.toString(),
                                          ParamType.String,
                                        ),
                                        'savedProject': serializeParam(
                                          widget.myProjects,
                                          ParamType.JSON,
                                        ),
                                        'projectName': serializeParam(
                                          widget.myProjects?.toString(),
                                          ParamType.String,
                                        ),
                                        'location': serializeParam(
                                          widget.myProjects?.toString(),
                                          ParamType.String,
                                        ),
                                        'imageURL': serializeParam(
                                          widget.myProjects?.toString(),
                                          ParamType.String,
                                        ),
                                        'lastUpdated': serializeParam(
                                          widget.myProjects?.toString(),
                                          ParamType.String,
                                        ),
                                        'project': serializeParam(
                                          widget.myProjects?.toString(),
                                          ParamType.String,
                                        ),
                                        'diy': serializeParam(
                                          widget.myProjects,
                                          ParamType.JSON,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Icon(
                                    Icons.folder_outlined,
                                    color: Color(0xFFB0B0B0),
                                    size: 24.0,
                                  ),
                                ).animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation1']!),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              'Projects',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFB0B0B0),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                BookingsPageWidget.routeName,
                                queryParameters: {
                                  'filterStatus': serializeParam(
                                    widget.mainDash?.toString(),
                                    ParamType.String,
                                  ),
                                  'sortData': serializeParam(
                                    widget.mainDash?.toString(),
                                    ParamType.String,
                                  ),
                                  'myBookingsPage': serializeParam(
                                    widget.mainDash,
                                    ParamType.JSON,
                                  ),
                                  'companyName': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'rep': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'fullfilmentStatus': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'date': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'time': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'location': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'rateService': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'cancel': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'viewDetails': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'home': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF3A3A3C),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      BookingsPageWidget.routeName,
                                      queryParameters: {
                                        'filterStatus': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'sortData': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'myBookingsPage': serializeParam(
                                          widget.mainDash,
                                          ParamType.JSON,
                                        ),
                                        'companyName': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'rep': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'fullfilmentStatus': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'date': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'time': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'location': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'rateService': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'cancel': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'viewDetails': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'home': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Icon(
                                    Icons.calendar_today_outlined,
                                    color: Color(0xFFB0B0B0),
                                    size: 24.0,
                                  ),
                                ).animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation2']!),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              'Bookings',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFB0B0B0),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                FixFlowGPTWidget.routeName,
                                queryParameters: {
                                  'fixflowgpt': serializeParam(
                                    widget.mainDash,
                                    ParamType.JSON,
                                  ),
                                  'userConversation': serializeParam(
                                    widget.mainDash?.toString(),
                                    ParamType.String,
                                  ),
                                  'aiConversation': serializeParam(
                                    widget.mainDash?.toString(),
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF3A3A3C),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      FixFlowGPTWidget.routeName,
                                      queryParameters: {
                                        'fixflowgpt': serializeParam(
                                          widget.mainDash,
                                          ParamType.JSON,
                                        ),
                                        'userConversation': serializeParam(
                                          widget.mainDash?.toString(),
                                          ParamType.String,
                                        ),
                                        'aiConversation': serializeParam(
                                          widget.mainDash?.toString(),
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );

                                    _model.apiResult3c5 = await FixFlowAIGroup
                                        .fixflowBrainCall
                                        .call();

                                    if (!(_model.apiResult3c5?.succeeded ??
                                        true)) {
                                      context.pushNamed(
                                          FalseErrorWidget.routeName);
                                    }

                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.chat_bubble_outline_rounded,
                                    color: Color(0xFFB0B0B0),
                                    size: 24.0,
                                  ),
                                ).animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation3']!),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation3']!),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              'FixFLow Room',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFB0B0B0),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(ProfilenewWidget.routeName);
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF3A3A3C),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context
                                        .pushNamed(ProfilenewWidget.routeName);
                                  },
                                  child: Icon(
                                    Icons.person_outline_rounded,
                                    color: Color(0xFFB0B0B0),
                                    size: 24.0,
                                  ),
                                ).animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation4']!),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation4']!),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              'Profile',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFB0B0B0),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
