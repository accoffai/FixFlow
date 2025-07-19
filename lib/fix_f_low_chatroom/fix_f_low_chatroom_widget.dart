import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'fix_f_low_chatroom_model.dart';
export 'fix_f_low_chatroom_model.dart';

/// ✅ To Gemini (for FixFlow AI): Verbal Chatroom Implementation
/// 📌 Objective:
/// Implement a pure voice-only conversation room between the user and the
/// AI—no text input, no message history, no transcripts, and no downloads.
///
/// It functions exactly like the ChatGPT voice mode shown in the images
/// (microphone icon ➝ full voice conversation room).
///
/// 🛠️ Requirements:
/// Voice-Only Chatroom:
///
/// The user taps the mic icon.
///
/// They're immediately redirected into a voice-enabled chatroom.
///
/// Voice recognition listens and processes in real-time.
///
/// AI responds verbally only (no text reply).
///
/// Must feel like a natural, fluid call between user and AI.
///
/// Behavior:
///
/// No chat history visible.
///
/// No record/save of voice or conversation.
///
/// Each session is temporary unless otherwise triggered.
///
/// The AI response is directly from your app brain (not external).
///
/// UI/UX Flow:
///
/// Trigger: mic button on the DIY page.
///
/// Opens full-screen modal or voice-only interface.
///
/// Tap mic to talk ➝ AI listens ➝ AI speaks back.
///
/// Clear exit/back button for returning to DIY screen.
///
/// Tech Notes:
///
/// You’re not using WebRTC for video or audio calls.
///
/// You’re using Flutter; use speech_to_text + flutter_tts or integrate with
/// something like Vosk for on-device.
///
/// Use local audio playback (AI speech via TTS) and real-time mic listening.
class FixFLowChatroomWidget extends StatefulWidget {
  const FixFLowChatroomWidget({
    super.key,
    required this.fixFLowChat,
    this.navigate,
  });

  final dynamic fixFLowChat;
  final LatLng? navigate;

  static String routeName = 'FixFLowChatroom';
  static String routePath = '/fixFLowChatroom';

  @override
  State<FixFLowChatroomWidget> createState() => _FixFLowChatroomWidgetState();
}

class _FixFLowChatroomWidgetState extends State<FixFLowChatroomWidget> {
  late FixFLowChatroomModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FixFLowChatroomModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultopx = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.fixFLowChat?.toString(),
        screenContext: widget.fixFLowChat?.toString(),
        inputType: widget.fixFLowChat?.toString(),
        inputValue: widget.fixFLowChat?.toString(),
      );

      await FixFlowAIGroup.alarmTriggerCall.call();

      await FixFlowAIGroup.openAIBuildControlCall.call();

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResultopx?.succeeded ?? true)) {
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
        backgroundColor: Color(0xFF0A0A0A),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF0A0A0A),
                        Color(0xFF1A1A2E),
                        Color(0xFF16213E)
                      ],
                      stops: [0.0, 0.5, 1.0],
                      begin: AlignmentDirectional(0.0, 1.0),
                      end: AlignmentDirectional(0, -1.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            width: double.infinity,
                            height: 172.97,
                            decoration: BoxDecoration(
                              color: Color(0x1A16213E),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'FixFlow Voice Assistant',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Tap the microphone to start a voice conversation',
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
                                        ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: Container(
                            width: 200.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 20.0,
                                  color: Color(0x334A90E2),
                                  offset: Offset(
                                    0.0,
                                    8.0,
                                  ),
                                )
                              ],
                              gradient: LinearGradient(
                                colors: [Color(0xFF4A90E2), Color(0xFF357ABD)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, -1.0),
                                end: AlignmentDirectional(-1.0, 1.0),
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.apiResult2kx =
                                    await FixFlowAIGroup.fixflowBrainCall.call(
                                  userId: widget.fixFLowChat?.toString(),
                                  screenContext:
                                      widget.fixFLowChat?.toString(),
                                  inputType: widget.fixFLowChat?.toString(),
                                  inputValue: widget.fixFLowChat?.toString(),
                                );

                                await FixFlowAIGroup.verbalChatroomCall.call();

                                if (!(_model.apiResult2kx?.succeeded ?? true)) {
                                  context.pushNamed(FalseErrorWidget.routeName);
                                }

                                safeSetState(() {});
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.apiResultkxz = await FixFlowAIGroup
                                          .fixflowBrainCall
                                          .call();

                                      await FixFlowAIGroup.verbalChatroomCall
                                          .call();

                                      if (!(_model.apiResultkxz?.succeeded ??
                                          true)) {
                                        context.pushNamed(
                                            FalseErrorWidget.routeName);
                                      }

                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.mic_rounded,
                                      color: Colors.white,
                                      size: 48.0,
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.apiResulte3o = await FixFlowAIGroup
                                          .fixflowBrainCall
                                          .call();

                                      await FixFlowAIGroup.verbalChatroomCall
                                          .call();

                                      if (!(_model.apiResulte3o?.succeeded ??
                                          true)) {
                                        context.pushNamed(
                                            FalseErrorWidget.routeName);
                                      }

                                      safeSetState(() {});
                                    },
                                    child: Text(
                                      'Tap to Speak',
                                      textAlign: TextAlign.center,
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
                                  ),
                                ].divide(SizedBox(height: 12.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            width: double.infinity,
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: Color(0x1A16213E),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Ready to listen',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF4A90E2),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 8.0,
                                        height: 8.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF4A90E2),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        width: 8.0,
                                        height: 8.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF357ABD),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        width: 8.0,
                                        height: 8.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF2A5F8F),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.apiResultzzx =
                                  await FixFlowAIGroup.stopTalkingCall.call();

                              await FixFlowAIGroup.fixflowBrainCall.call();

                              if (!(_model.apiResultzzx?.succeeded ?? true)) {
                                context.pushNamed(FalseErrorWidget.routeName);
                              }

                              safeSetState(() {});
                            },
                            child: Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF4757),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 12.0,
                                    color: Color(0x33FF4757),
                                    offset: Offset(
                                      0.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.apiResultslv = await FixFlowAIGroup
                                        .stopTalkingCall
                                        .call();

                                    if (!(_model.apiResultslv?.succeeded ??
                                        true)) {
                                      context.pushNamed(
                                          FalseErrorWidget.routeName);
                                    }

                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.stop_rounded,
                                    color: Colors.white,
                                    size: 32.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: Container(
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
                                widget.fixFLowChat,
                                ParamType.JSON,
                              ),
                              'userConversation': serializeParam(
                                widget.fixFLowChat?.toString(),
                                ParamType.String,
                              ),
                              'fixflowAssistant': serializeParam(
                                widget.fixFLowChat?.toString(),
                                ParamType.String,
                              ),
                              'gps': serializeParam(
                                widget.navigate,
                                ParamType.LatLng,
                              ),
                              'conversationList': serializeParam(
                                widget.fixFLowChat,
                                ParamType.JSON,
                              ),
                              'inputMessageText': serializeParam(
                                widget.fixFLowChat?.toString(),
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: Color(0x1A16213E),
                            shape: BoxShape.circle,
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
                                      widget.fixFLowChat,
                                      ParamType.JSON,
                                    ),
                                    'userConversation': serializeParam(
                                      widget.fixFLowChat?.toString(),
                                      ParamType.String,
                                    ),
                                    'fixflowAssistant': serializeParam(
                                      widget.fixFLowChat?.toString(),
                                      ParamType.String,
                                    ),
                                    'gps': serializeParam(
                                      widget.navigate,
                                      ParamType.LatLng,
                                    ),
                                    'conversationList': serializeParam(
                                      widget.fixFLowChat,
                                      ParamType.JSON,
                                    ),
                                    'inputMessageText': serializeParam(
                                      widget.fixFLowChat?.toString(),
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );

                                if (widget.fixFLowChat !=
                                    widget.fixFLowChat) {
                                  context.pushNamed(FalseErrorWidget.routeName);
                                }
                              },
                              child: Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 40.0),
                    child: Container(
                      child: Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: Color(0x1A16213E),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 40.0),
                    child: Container(
                      child: Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: Color(0x1A16213E),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
