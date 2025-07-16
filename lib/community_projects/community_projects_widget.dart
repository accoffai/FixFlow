import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'community_projects_model.dart';
export 'community_projects_model.dart';

/// ✅ Revised Community Projects Preview (Mock Page)
/// 🎯 Goal:
/// Make it look like a thriving FixFlow community hub, without actually
/// building in functionality yet.
///
/// 🖼️ Page Contents (Simple, Fast to Render):
/// Full-screen background image:
/// A vibrant collage-style image of:
///
/// DIY projects (before/after)
///
/// Happy people with tools
///
/// Interior/exterior improvements
/// 👉 (Can use a single rich hero image or multiple stacked frames like
/// Instagram stories)
///
/// Large Bold Title (centered or top):
/// FixFlow Community Projects
///
/// Subtext / Hook:
/// “See what others are fixing, building, and creating around you!”
///
/// Center Overlay:
/// 🔒 COMING SOON
///
/// Semi-transparent background behind the text
///
/// Optional: a lock icon or a blurred “scrolling feed” fake preview
///
/// Back Button only (top left or bottom nav style)
///
/// 🎨 Visual Tips:
/// Use one big graphic asset instead of multiple UI elements (faster for
/// FlutterFlow AI to load)
///
/// Avoid components like ListView, Tabs, Nested Containers
///
/// Keep this page under 3 visual layers max:
///
/// 1: Background image
///
/// 2: “Coming Soon” overlay
///
/// 3: Back button
///
/// ✅ Final Outcome:
/// Loads reliably ✅
///
/// Looks like a real part of the app ✅
///
/// Keeps users engaged, curious ✅
///
/// Doesn’t need real data or functionality ✅
class CommunityProjectsWidget extends StatefulWidget {
  const CommunityProjectsWidget({
    super.key,
    required this.fixflowCommonity,
    this.gps,
  });

  final dynamic fixflowCommonity;
  final LatLng? gps;

  static String routeName = 'communityProjects';
  static String routePath = '/communityProjects';

  @override
  State<CommunityProjectsWidget> createState() =>
      _CommunityProjectsWidgetState();
}

class _CommunityProjectsWidgetState extends State<CommunityProjectsWidget> {
  late CommunityProjectsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommunityProjectsModel());
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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1592414744317-a67bc7363ddf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTIyOTI2MzV8&ixlib=rb-4.1.0&q=80&w=1080',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0x40000000), Color(0x80000000)],
                    stops: [0.3, 0.7],
                    begin: AlignmentDirectional(0.0, 1.0),
                    end: AlignmentDirectional(0, -1.0),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 60.0, 24.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Color(0x4DFFFFFF),
                          borderRadius: 24.0,
                          borderWidth: 1.0,
                          buttonSize: 48.0,
                          fillColor: Color(0x4D000000),
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
                                  widget.fixflowCommonity,
                                  ParamType.JSON,
                                ),
                                'quickLogsPage': serializeParam(
                                  widget.fixflowCommonity,
                                  ParamType.JSON,
                                ),
                                'myProjects': serializeParam(
                                  widget.fixflowCommonity,
                                  ParamType.JSON,
                                ),
                                'mainDash': serializeParam(
                                  widget.fixflowCommonity,
                                  ParamType.JSON,
                                ),
                                'userName': serializeParam(
                                  widget.fixflowCommonity?.toString(),
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
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'FixFlow Community',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .displayLarge
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .displayLarge
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 42.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .displayLarge
                                        .fontStyle,
                                    lineHeight: 1.1,
                                  ),
                            ),
                            Text(
                              'Projects',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .displayLarge
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .displayLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 42.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .displayLarge
                                        .fontStyle,
                                    lineHeight: 1.1,
                                  ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 0.0, 32.0, 0.0),
                          child: Text(
                            'See what others are fixing, building, and creating around you!',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xE6FFFFFF),
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.3,
                                ),
                          ),
                        ),
                        Container(
                          width: 280.0,
                          height: 203.39,
                          decoration: BoxDecoration(
                            color: Color(0xB3000000),
                            borderRadius: BorderRadius.circular(24.0),
                            border: Border.all(
                              color: Color(0x4DFFFFFF),
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.lock_outlined,
                                  color: Colors.white,
                                  size: 48.0,
                                ),
                                Text(
                                  'COMING SOON',
                                  textAlign: TextAlign.center,
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
                                        fontSize: 28.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Text(
                                    'We\'re building something amazing for our community!',
                                    textAlign: TextAlign.center,
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
                                          color: Color(0xCCFFFFFF),
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
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 24.0)),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 120.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Color(0x80000000)],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 32.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.people_rounded,
                                color: Color(0xCCFFFFFF),
                                size: 20.0,
                              ),
                              Text(
                                'Join thousands of DIY enthusiasts',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xCCFFFFFF),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
