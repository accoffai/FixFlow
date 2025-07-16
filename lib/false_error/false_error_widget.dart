import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'false_error_model.dart';
export 'false_error_model.dart';

/// Page Name: UniversalErrorPage
///
/// 🧱 Layout Structure:
/// 🔲 Column (Main container – center everything):
/// Alignment: Center
///
/// Padding: Medium
///
/// 🧩 Inside the Column:
/// Emoji or Icon
///
/// Widget: Text or Icon
///
/// Value: 😓 or use a red "error" icon
///
/// Size: Extra Large
///
/// Alignment: Center
///
/// Error Message Text
///
/// Widget: Text
///
/// Value:
///
/// Copy
/// Edit
/// Oops!
///
/// Something went wrong.
/// Style: Bold, Large font
///
/// Color: Red or Theme Alert Color
///
/// Alignment: Center
///
/// Description
///
/// Widget: Text
///
/// Value:
///
/// kotlin
/// Copy
/// Edit
/// There was a problem loading this page or completing your request.
/// Please try again or return to your dashboard.
/// Style: Regular, Medium font
///
/// Color: Light Gray
///
/// Alignment: Center
///
/// Back to Dashboard Button
///
/// Widget: Button
///
/// Text: ← Back to Dashboard
///
/// Style: Primary button (theme color)
///
/// Action: Navigate to MainDashboardPage
class FalseErrorWidget extends StatefulWidget {
  const FalseErrorWidget({super.key});

  static String routeName = 'falseError';
  static String routePath = '/falseError';

  @override
  State<FalseErrorWidget> createState() => _FalseErrorWidgetState();
}

class _FalseErrorWidgetState extends State<FalseErrorWidget> {
  late FalseErrorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FalseErrorModel());
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
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                    child: Text(
                      '😓',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).displayLarge.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .displayLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .displayLarge
                                  .fontStyle,
                            ),
                            fontSize: 64.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .displayLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .displayLarge
                                .fontStyle,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Text(
                      'Oops! Something went wrong.',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).error,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                    child: Text(
                      'There was a problem loading this page or completing your request.\nPlease try again later.',
                      textAlign: TextAlign.center,
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
                            lineHeight: 1.5,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
