import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'if_only_this_app_c_ould_model.dart';
export 'if_only_this_app_c_ould_model.dart';

/// If Only This App Could…”
/// This is your signature feature request hub, giving users a real voice
/// while planting the idea that more is coming — and it’s built with them in
/// mind.
///
/// 🧱 Layout Summary:
/// Title:
/// If Only This App Could…
///
/// Subtext:
/// “We’re building this with you. Tell us what you wish FixFlow AI could do.”
///
/// Input Box (Multiline Text Field)
/// Placeholder:
/// What’s one thing you wish this app could do for your home, tools, or
/// repairs?
///
/// Submit Button (Bold Orange)
/// Text: Share My Idea
///
/// Confirmation Modal
/// “Thanks for sharing! Our AI team reviews every idea to improve FixFlow for
/// you and others.”
///
/// Optional Toggle:
/// Notify me if this gets added → triggers backend logic to notify user via
/// email or push notification when their request is implemented
///
/// 🔗 Backend Integration (Xano):
/// POST submit_feature_idea
/// ➤ Writes to feedback table
///
/// feedback_text: text input
///
/// feedback_type: "feature_request"
///
/// user_id: current user
///
/// timestamp: auto
///
/// POST enable_notify_on_feature (optional toggle)
/// ➤ Adds user to notification group (notification or user_settings table)
class IfOnlyThisAppCOuldWidget extends StatefulWidget {
  const IfOnlyThisAppCOuldWidget({
    super.key,
    required this.userRequest,
    required this.ifOnlyAppPage,
    this.gps,
    required this.ifOnlyTHisAPP,
  });

  final String? userRequest;
  final dynamic ifOnlyAppPage;
  final LatLng? gps;
  final String? ifOnlyTHisAPP;

  static String routeName = 'IfOnlyThisAppCOuld';
  static String routePath = '/ifOnlyThisAppCOuld';

  @override
  State<IfOnlyThisAppCOuldWidget> createState() =>
      _IfOnlyThisAppCOuldWidgetState();
}

class _IfOnlyThisAppCOuldWidgetState extends State<IfOnlyThisAppCOuldWidget> {
  late IfOnlyThisAppCOuldModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IfOnlyThisAppCOuldModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultg2e = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.ifOnlyAppPage?.toString(),
        screenContext: widget.ifOnlyAppPage?.toString(),
        inputType: widget.ifOnlyAppPage?.toString(),
        inputValue: widget.ifOnlyAppPage?.toString(),
      );

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.salesEngineLogCall.call();

      if (!(_model.apiResultg2e?.succeeded ?? true)) {
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
            borderRadius: 20.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed(
                MainDashWidget.routeName,
                queryParameters: {
                  'planProject': serializeParam(
                    widget.ifOnlyAppPage,
                    ParamType.JSON,
                  ),
                  'quickLogsPage': serializeParam(
                    widget.ifOnlyAppPage,
                    ParamType.JSON,
                  ),
                  'myProjects': serializeParam(
                    widget.ifOnlyAppPage,
                    ParamType.JSON,
                  ),
                  'mainDash': serializeParam(
                    widget.ifOnlyAppPage,
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
          title: Text(
            'Feature Request',
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
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'If Only This App Could…',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .fontStyle,
                            ),
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .displaySmall
                                .fontStyle,
                          ),
                    ),
                    Text(
                      'We\'re building this with you. Tell us what you wish FixFlow AI could do.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
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
                  ].divide(SizedBox(height: 12.0)),
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 100.0,
                        height: 235.3,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Text(
                          valueOrDefault<String>(
                            widget.ifOnlyTHisAPP,
                            '-',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                  onDoubleTap: () async {
                    _model.apiResult23k =
                        await FixFlowAIGroup.fixflowBrainCall.call();

                    await FixFlowAIGroup.submitFeatureRequestCall.call();

                    if (!(_model.apiResult23k?.succeeded ?? true)) {
                      context.pushNamed(FalseErrorWidget.routeName);
                    }

                    safeSetState(() {});
                  },
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.apiResultee5 =
                          await FixFlowAIGroup.fixflowBrainCall.call();

                      await FixFlowAIGroup.submitFeatureRequestCall.call();

                      if (!(_model.apiResultee5?.succeeded ?? true)) {
                        context.pushNamed(FalseErrorWidget.routeName);
                      }

                      safeSetState(() {});
                    },
                    text: 'Share My Idea',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 56.0,
                      padding: EdgeInsets.all(8.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFFF6B35),
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
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
    );
  }
}
