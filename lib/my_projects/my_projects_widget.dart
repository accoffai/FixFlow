import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_projects_model.dart';
export 'my_projects_model.dart';

/// Title: My Projects
///
/// Optional: Filter by status (e.g., dropdowns for All | In Progress |
/// Completed)
///
/// Optional: Sort by (e.g., Most Recent | A-Z)
///
/// 📁 Section 1: Ongoing Projects
/// Title: In Progress
///
/// Show active projects user is working on
///
/// Each card should include:
///
/// 📌 Project Title
///
/// ⏱ Last updated (e.g., “2 days ago”)
///
/// 📍 Location or category
///
/// CTA: Resume or Continue
///
/// ✅ Section 2: Completed Projects
/// Title: Completed Projects
///
/// Shows finished tasks for review or history
///
/// Each card:
///
/// 📌 Title
///
/// 📅 Completion date
///
/// 📷 Option to view final result (image/file if uploaded)
///
/// CTA: View Summary or Reopen Copy
///
/// ➕ Bottom Right Floating Action Button (FAB)
/// + Start New Project (routes to PlanProjectPage)
///
/// Design Details:
/// Use horizontal cards or tiles with small thumbnails (image preview of
/// project)
///
/// Highlight status badges:
///
/// In Progress → orange
///
/// Completed → green
///
/// Darkbackground
class MyProjectsWidget extends StatefulWidget {
  const MyProjectsWidget({
    super.key,
    required this.savedChecklist,
    required this.savedProject,
    required this.projectName,
    required this.location,
    required this.imageURL,
    required this.lastUpdated,
    required this.project,
    required this.diy,
    this.gps,
  });

  final String? savedChecklist;
  final dynamic savedProject;
  final String? projectName;
  final String? location;
  final String? imageURL;
  final String? lastUpdated;
  final String? project;
  final dynamic diy;
  final LatLng? gps;

  static String routeName = 'MyProjects';
  static String routePath = '/myProjects';

  @override
  State<MyProjectsWidget> createState() => _MyProjectsWidgetState();
}

class _MyProjectsWidgetState extends State<MyProjectsWidget> {
  late MyProjectsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyProjectsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult5qv = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.savedProject?.toString(),
        screenContext: widget.savedProject?.toString(),
        inputType: widget.savedChecklist,
        inputValue: widget.savedProject?.toString(),
      );

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResult5qv?.succeeded ?? true)) {
        context.pushNamed(FalseErrorWidget.routeName);
      }
    });
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      _model.apiResultju8 = await FixFlowAIGroup.fixflowBrainCall.call();

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResultju8?.succeeded ?? true)) {
        context.pushNamed(FalseErrorWidget.routeName);
      }
    }();

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
          title: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(
                MainDashWidget.routeName,
                queryParameters: {
                  'planProject': serializeParam(
                    widget.savedProject,
                    ParamType.JSON,
                  ),
                  'quickLogsPage': serializeParam(
                    widget.savedProject,
                    ParamType.JSON,
                  ),
                  'myProjects': serializeParam(
                    widget.savedProject,
                    ParamType.JSON,
                  ),
                  'mainDash': serializeParam(
                    widget.savedProject,
                    ParamType.JSON,
                  ),
                  'userName': serializeParam(
                    widget.savedProject?.toString(),
                    ParamType.String,
                  ),
                  'gps': serializeParam(
                    widget.gps,
                    ParamType.LatLng,
                  ),
                }.withoutNulls,
              );
            },
            child: Text(
              'My Projects',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    FixFlowGPTWidget.routeName,
                    queryParameters: {
                      'fixflowgpt': serializeParam(
                        widget.savedProject,
                        ParamType.JSON,
                      ),
                      'userConversation': serializeParam(
                        widget.savedProject?.toString(),
                        ParamType.String,
                      ),
                      'aiConversation': serializeParam(
                        widget.savedProject?.toString(),
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              _model.apiResult4de = await FixFlowAIGroup.fixflowBrainCall.call(
                userId: '',
                screenContext: '',
                inputType: '',
                inputValue: '',
              );

              await FixFlowAIGroup.postAlgorithmActivityCall.call();

              await FixFlowAIGroup.postSalesEngineLogCall.call();

              if (!(_model.apiResult4de?.succeeded ?? true)) {
                context.pushNamed(FalseErrorWidget.routeName);
              }

              safeSetState(() {});
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController1 ??=
                                FormFieldController<String>(
                              _model.dropDownValue1 ??= '',
                            ),
                            options: List<String>.from(
                                ['All', 'In Progress', 'Completed']),
                            optionLabels: ['All', 'In Progress', 'Completed'],
                            onChanged: (val) =>
                                safeSetState(() => _model.dropDownValue1 = val),
                            width: 100.0,
                            height: 36.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            hintText: 'All',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            fillColor: Color(0xFF2D2D2D),
                            elevation: 0.0,
                            borderColor: Color(0xFF404040),
                            borderWidth: 1.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController2 ??=
                                FormFieldController<String>(
                              _model.dropDownValue2 ??= '',
                            ),
                            options: List<String>.from(
                                ['Most Recent', 'A-Z', 'Oldest First']),
                            optionLabels: [
                              'Most Recent',
                              'A-Z',
                              'Oldest First'
                            ],
                            onChanged: (val) =>
                                safeSetState(() => _model.dropDownValue2 = val),
                            width: 120.0,
                            height: 37.57,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            hintText: 'Most Recent',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            fillColor: Color(0xFF2D2D2D),
                            elevation: 0.0,
                            borderColor: Color(0xFF404040),
                            borderWidth: 1.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final projects = widget.savedProject!.toList();

                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await FixFlowAIGroup.fixflowBrainCall.call(
                            userId: widget.savedProject?.toString(),
                            screenContext: widget.savedProject?.toString(),
                            inputType: widget.savedProject?.toString(),
                            inputValue: widget.savedProject?.toString(),
                          );

                          await FixFlowAIGroup.mySavedProjectsCall.call();

                          _model.apiResultqye =
                              await FixFlowAIGroup.savedChecklistCall.call();

                          await FixFlowAIGroup.dIYGuideCall.call();

                          if (!(_model.apiResultqye?.succeeded ?? true)) {
                            context.pushNamed(FalseErrorWidget.routeName);
                          }

                          safeSetState(() {});
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                              List.generate(projects.length, (projectsIndex) {
                            final projectsItem = projects[projectsIndex];
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.folder_open,
                                  color: Color(0xFFFF9500),
                                  size: 24.0,
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.apiResult2uh = await FixFlowAIGroup
                                        .fixflowBrainCall
                                        .call(
                                      userId: '',
                                      screenContext: '',
                                      inputType: '',
                                      inputValue: '',
                                    );

                                    context.pushNamed(
                                      MyProjectGuidanceWidget.routeName,
                                      queryParameters: {
                                        'savedChecklist': serializeParam(
                                          widget.savedProject,
                                          ParamType.JSON,
                                        ),
                                        'savedProject': serializeParam(
                                          widget.savedProject,
                                          ParamType.JSON,
                                        ),
                                        'diyGuidance': serializeParam(
                                          widget.savedProject?.toString(),
                                          ParamType.String,
                                        ),
                                        'projectType': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'location': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'scope': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'projectName': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'locationType': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'completionPercentage': serializeParam(
                                          0,
                                          ParamType.int,
                                        ),
                                        'aiOnlineStatus': serializeParam(
                                          false,
                                          ParamType.bool,
                                        ),
                                        'aiConversation': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'userConversation': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'statusColor': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );

                                    await FixFlowAIGroup.mySavedProjectsCall
                                        .call();

                                    await FixFlowAIGroup.savedChecklistCall
                                        .call();

                                    await FixFlowAIGroup.dIYGuideCall.call();

                                    if (!(_model.apiResult2uh?.succeeded ??
                                        true)) {
                                      context.pushNamed(
                                          FalseErrorWidget.routeName);
                                    }

                                    safeSetState(() {});
                                  },
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.savedChecklist,
                                      'In Progress',
                                    ),
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
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            );
                          }).divide(SizedBox(height: 16.0)),
                        ),
                      );
                    },
                  ),
                ),
              ]
                  .divide(SizedBox(height: 24.0))
                  .addToStart(SizedBox(height: 16.0))
                  .addToEnd(SizedBox(height: 80.0)),
            ),
          ),
        ),
      ),
    );
  }
}
