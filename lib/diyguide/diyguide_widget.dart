import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'diyguide_model.dart';
export 'diyguide_model.dart';

/// Instruction for Gemini – DIY Document Viewer Page
/// 🛠 Goal: On the MyProjectGuidance page, create a section where users can
/// view, download, or send their AI-generated DIY guide (diyGuide), passed as
/// a parameter from the checklist or project selection.
///
/// ✅ 1. Create a Document Display Section
/// Add a container or column labeled DIY Document Viewer.
///
/// Inside it, insert:
///
/// A PDF viewer if diyGuide is a PDF link.
///
/// Or a WebView / HTML Renderer if it's HTML or rich text content.
///
/// Bind the viewer to the diyGuide parameter (already passed into this page).
///
/// plaintext
/// Copy
/// Edit
/// Bind viewer content → Variable: diyGuide
/// 🟧 2. Add Download Button
/// Add a button labeled "Download DIY Plan".
///
/// On tap:
///
/// Trigger file download using the diyGuide value (assumed to be a URL).
///
/// plaintext
/// Copy
/// Edit
/// Action: Download file
/// Source: diyGuide
/// If diyGuide is not a URL but plain content, wrap it into a downloadable
/// blob file in the backend and return the URL.
///
/// ✉️ 3. (Optional) Add "Send to Email" Button
/// Add an email input field if the user email isn’t already known.
///
/// Add a button labeled "Send to Email".
///
/// On tap:
///
/// Call the backend function: sendDocToEmail(userEmail, diyGuide).
///
/// 🧠 4. Parameter Already Set Up
/// diyGuide is already passed in the navigation event from the checklist
/// page, so just bind it to the content display and use it as the source for
/// download/email.
class DiyguideWidget extends StatefulWidget {
  const DiyguideWidget({
    super.key,
    required this.documentFormat,
    required this.generatedWhen,
    required this.pages,
    required this.projectName,
    required this.diyGuide,
    required this.diyPage,
  });

  final String? documentFormat;
  final String? generatedWhen;
  final String? pages;
  final String? projectName;
  final String? diyGuide;
  final dynamic diyPage;

  static String routeName = 'DIYGUIDE';
  static String routePath = '/diyguide';

  @override
  State<DiyguideWidget> createState() => _DiyguideWidgetState();
}

class _DiyguideWidgetState extends State<DiyguideWidget> {
  late DiyguideModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiyguideModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultj7l = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.diyPage?.toString(),
        screenContext: widget.diyPage?.toString(),
        inputType: widget.diyPage?.toString(),
        inputValue: widget.diyPage?.toString(),
      );

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResultj7l?.succeeded ?? true)) {
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed(
                MyProjectGuidanceWidget.routeName,
                queryParameters: {
                  'savedChecklist': serializeParam(
                    widget.diyPage,
                    ParamType.JSON,
                  ),
                  'savedProject': serializeParam(
                    widget.diyPage,
                    ParamType.JSON,
                  ),
                  'diyGuidance': serializeParam(
                    widget.diyPage?.toString(),
                    ParamType.String,
                  ),
                  'projectType': serializeParam(
                    widget.diyPage?.toString(),
                    ParamType.String,
                  ),
                  'location': serializeParam(
                    widget.diyPage?.toString(),
                    ParamType.String,
                  ),
                  'scope': serializeParam(
                    widget.diyPage?.toString(),
                    ParamType.String,
                  ),
                  'projectName': serializeParam(
                    widget.diyPage?.toString(),
                    ParamType.String,
                  ),
                  'locationType': serializeParam(
                    widget.diyPage?.toString(),
                    ParamType.String,
                  ),
                  'completionPercentage': serializeParam(
                    widget.diyPage,
                    ParamType.int,
                  ),
                  'aiOnlineStatus': serializeParam(
                    widget.diyPage,
                    ParamType.bool,
                  ),
                  'aiConversation': serializeParam(
                    widget.diyPage?.toString(),
                    ParamType.String,
                  ),
                  'userConversation': serializeParam(
                    widget.diyPage?.toString(),
                    ParamType.String,
                  ),
                  'statusColor': serializeParam(
                    widget.diyPage?.toString(),
                    ParamType.String,
                  ),
                  'conversationOverview': serializeParam(
                    widget.diyPage,
                    ParamType.JSON,
                  ),
                  'conversation': serializeParam(
                    widget.diyPage?.toString(),
                    ParamType.String,
                  ),
                  'conversatioFlow': serializeParam(
                    widget.diyPage?.toString(),
                    ParamType.String,
                  ),
                }.withoutNulls,
              );

              if (!(_model.apiResultsh5?.jsonBody ?? '')) {
                context.pushNamed(FalseErrorWidget.routeName);
              }
            },
          ),
          title: Text(
            'My DIY Guide',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
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
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.apiResultsh5 =
                    await FixFlowAIGroup.fixflowBrainCall.call(
                  userId: widget.diyPage?.toString(),
                  screenContext: widget.diyPage?.toString(),
                  inputType: widget.diyPage?.toString(),
                  inputValue: widget.diyPage?.toString(),
                );

                await FixFlowAIGroup.mySavedProjectsCall.call();

                await FixFlowAIGroup.dIYGuideCall.call();

                if (!(_model.apiResultsh5?.succeeded ?? true)) {
                  context.pushNamed(FalseErrorWidget.routeName);
                }

                safeSetState(() {});
              },
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'DIY Document Viewer',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 500.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Builder(
                        builder: (context) {
                          final diyGuide = widget.diyPage!.toList();

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: diyGuide.length,
                            itemBuilder: (context, diyGuideIndex) {
                              final diyGuideItem = diyGuide[diyGuideIndex];
                              return Text(
                                valueOrDefault<String>(
                                  widget.diyGuide,
                                  'DIY Guide',
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
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.projectName,
                            'Project Name',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                  Text(
                                    'Document Information',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Format:',
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
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
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
                                  Text(
                                    valueOrDefault<String>(
                                      widget.documentFormat,
                                      'format type',
                                    ),
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
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Generated:',
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
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
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
                                  Text(
                                    valueOrDefault<String>(
                                      widget.generatedWhen,
                                      'generated when',
                                    ),
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
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Pages:',
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
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
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
                                  Text(
                                    valueOrDefault<String>(
                                      widget.pages,
                                      'how many pages',
                                    ),
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
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 24.0))
                      .addToStart(SizedBox(height: 16.0))
                      .addToEnd(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
