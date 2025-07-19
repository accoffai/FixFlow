import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'fix_flow_g_p_t_model.dart';
export 'fix_flow_g_p_t_model.dart';

/// FixFlow GPT Chatroom (Design-Only Spec for Gemini)
/// Theme Colors:
///
/// Primary: #FF6600 (Orange)
///
/// Secondary: #333333 (Dark Gray)
///
/// Accent: #CCCCCC (Light Gray)
///
/// 📱 Main Layout (Column)
/// 🔹 Section 1: Header Bar
/// Title: "FixFlow AI Room"
///
/// Button (Top Right): Mic icon → navigates to Voice Chatroom
/// (Just a Page Navigation button)
///
/// 🔹 Section 2: Chat Display Area (Expanded)
/// Type: Scrollable Column
///
/// Each Message Bubble:
///
/// User messages: aligned right, dark gray background, white text
///
/// AI messages: aligned left, light gray background, black text
///
/// Rounded corners, subtle padding
///
/// 🔹 Section 3: Upload + Input Row
/// Type: Row Layout
///
/// Upload Button (left):
///
/// Icon: Paperclip
///
/// Tap to open gallery or file picker (stub only for now)
///
/// Text Input Field (expanded middle):
///
/// Hint Text: "Ask anything..."
///
/// Filled background (light gray), slight shadow
///
/// Send Button (right):
///
/// Icon: Paper Plane
///
/// Orange background, white icon
///
/// Triggers "Send" (no backend hookup yet)
///
/// 🧩 Optional: Scroll-To-Bottom Button
/// Appears when messages overflow
///
/// Small floating FAB with down arrow
class FixFlowGPTWidget extends StatefulWidget {
  const FixFlowGPTWidget({
    super.key,
    required this.fixflowgpt,
    required this.userConversation,
    required this.fixflowAssistant,
    this.gps,
    required this.conversationList,
    required this.inputMessageText,
    this.conversation,
    this.conversationflow,
  });

  final dynamic fixflowgpt;
  final String? userConversation;
  final String? fixflowAssistant;
  final LatLng? gps;
  final dynamic conversationList;
  final String? inputMessageText;
  final int? conversation;
  final String? conversationflow;

  static String routeName = 'FixFlowGPT';
  static String routePath = '/fixFlowGPT';

  @override
  State<FixFlowGPTWidget> createState() => _FixFlowGPTWidgetState();
}

class _FixFlowGPTWidgetState extends State<FixFlowGPTWidget> {
  late FixFlowGPTModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FixFlowGPTModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultg1p = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.fixflowgpt?.toString(),
        screenContext: widget.fixflowgpt?.toString(),
        inputType: widget.fixflowgpt?.toString(),
        inputValue: widget.fixflowgpt?.toString(),
      );

      await FixFlowAIGroup.alarmTriggerCall.call();

      await FixFlowAIGroup.openAIBuildControlCall.call();

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResultg1p?.succeeded ?? true)) {
        context.pushNamed(FalseErrorWidget.routeName);
      }
    });

    _model.textController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.inputMessageText,
      'Ask Anything...',
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
        backgroundColor: Color(0xFF333333),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Color(0xFF333333),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            MainDashWidget.routeName,
                            queryParameters: {
                              'planProject': serializeParam(
                                widget.fixflowgpt,
                                ParamType.JSON,
                              ),
                              'quickLogsPage': serializeParam(
                                widget.fixflowgpt,
                                ParamType.JSON,
                              ),
                              'myProjects': serializeParam(
                                widget.fixflowgpt,
                                ParamType.JSON,
                              ),
                              'mainDash': serializeParam(
                                widget.fixflowgpt,
                                ParamType.JSON,
                              ),
                              'userName': serializeParam(
                                widget.fixflowgpt?.toString(),
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
                          'FixFlow AI Room',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 20.0,
                        buttonSize: 40.0,
                        fillColor: Color(0xFFFF6600),
                        icon: Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          _model.apiResultmfg =
                              await FixFlowAIGroup.fixflowBrainCall.call(
                            userId: widget.fixflowgpt?.toString(),
                            screenContext: widget.fixflowgpt?.toString(),
                            inputType: widget.fixflowgpt?.toString(),
                            inputValue: widget.fixflowgpt?.toString(),
                          );

                          context.pushNamed(
                            FixFLowChatroomWidget.routeName,
                            queryParameters: {
                              'fixFLowChat': serializeParam(
                                widget.fixflowgpt,
                                ParamType.JSON,
                              ),
                            }.withoutNulls,
                          );

                          if (!(_model.apiResultmfg?.succeeded ?? true)) {
                            context.pushNamed(FalseErrorWidget.routeName);
                          }

                          safeSetState(() {});
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    final conversation = widget.conversationList!.toList();

                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.apiResultn49 =
                            await FixFlowAIGroup.messageCall.call();

                        if (!(_model.apiResultn49?.succeeded ?? true)) {
                          context.pushNamed(FalseErrorWidget.routeName);
                        }

                        safeSetState(() {});
                      },
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: conversation.length,
                        itemBuilder: (context, conversationIndex) {
                          final conversationItem =
                              conversation[conversationIndex];
                          return Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFF333333),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Color(0xFF333333),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        -2.0,
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderRadius: 23.0,
                        buttonSize: 46.0,
                        fillColor: Color(0xFFCCCCCC),
                        icon: Icon(
                          Icons.attach_file,
                          color: Color(0xFF333333),
                          size: 24.0,
                        ),
                        onPressed: () async {
                          final selectedMedia =
                              await selectMediaWithSourceBottomSheet(
                            context: context,
                            allowPhoto: true,
                          );
                          if (selectedMedia != null &&
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
                            safeSetState(() =>
                                _model.isDataUploading_uploadDataFqe = true);
                            var selectedUploadedFiles = <FFUploadedFile>[];

                            try {
                              selectedUploadedFiles = selectedMedia
                                  .map((m) => FFUploadedFile(
                                        name: m.storagePath.split('/').last,
                                        bytes: m.bytes,
                                        height: m.dimensions?.height,
                                        width: m.dimensions?.width,
                                        blurHash: m.blurHash,
                                      ))
                                  .toList();
                            } finally {
                              _model.isDataUploading_uploadDataFqe = false;
                            }
                            if (selectedUploadedFiles.length ==
                                selectedMedia.length) {
                              safeSetState(() {
                                _model.uploadedLocalFile_uploadDataFqe =
                                    selectedUploadedFiles.first;
                              });
                            } else {
                              safeSetState(() {});
                              return;
                            }
                          }
                        },
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onFieldSubmitted: (_) async {
                            _model.apiResultido =
                                await FixFlowAIGroup.messageCall.call(
                              inputMessageText: widget.inputMessageText,
                            );

                            if ((_model.apiResultido?.succeeded ?? true)) {
                              safeSetState(() {
                                _model.textController?.text =
                                    valueOrDefault<String>(
                                  widget.inputMessageText,
                                  'Ask Anything...',
                                );
                              });
                            } else {
                              context.pushNamed(FalseErrorWidget.routeName);
                            }

                            safeSetState(() {});
                          },
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: widget.inputMessageText,
                            hintStyle: FlutterFlowTheme.of(context)
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
                                  color: Color(0xFF666666),
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
                                color: Colors.transparent,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(23.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(23.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(23.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(23.0),
                            ),
                            filled: true,
                            fillColor: Color(0xFFCCCCCC),
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
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
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          cursorColor: Color(0xFF333333),
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      FutureBuilder<ApiCallResponse>(
                        future: FixFlowAIGroup.messageCall.call(
                          receiverId: widget.conversation,
                          messageText: widget.conversationflow,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          final iconButtonMessageResponse = snapshot.data!;

                          return FlutterFlowIconButton(
                            borderRadius: 23.0,
                            buttonSize: 46.0,
                            fillColor: Color(0xFFFF6600),
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              _model.apiResultqj4 =
                                  await FixFlowAIGroup.fixflowBrainCall.call(
                                inputType: widget.userConversation,
                                inputValue: widget.userConversation,
                              );

                              await FixFlowAIGroup.messageCall.call();

                              if (!(_model.apiResultqj4?.succeeded ?? true)) {
                                context.pushNamed(FalseErrorWidget.routeName);
                              }

                              safeSetState(() {});
                            },
                          );
                        },
                      ),
                    ].divide(SizedBox(width: 12.0)),
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
