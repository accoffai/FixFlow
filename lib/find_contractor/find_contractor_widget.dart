import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'find_contractor_model.dart';
export 'find_contractor_model.dart';

/// FindContractorPage
/// 🎨 Design
/// Background: #1c1c1e
///
/// CTA Color: #FF5C00 (Vibrant Orange)
///
/// Accent: #00CFFF (Neon Blue)
///
/// Text: #FFFFFF
///
/// 🧱 UI Layout
/// Header:
///
/// Title: "Find a Contractor"
///
/// Subtext: “Browse trusted local professionals for your project.”
///
/// Filters (Dropdowns or Buttons):
///
/// Project Type: Plumbing, Electrical, Carpentry, General, Other
///
/// Budget Range: Under $100, $100–$500, $500+
///
/// Timeline Needed: ASAP, This Week, This Month
///
/// Location: Auto-detect or manual ZIP entry
///
/// Contractor Results Section (List view with cards):
///
/// Contractor Name
///
/// Profile Photo
///
/// Specialty
///
/// Rating (Stars)
///
/// “View Profile” button
///
/// “Request Quote” button
///
/// 🔗 Xano Connection
/// API Call: get_contractors_by_filter()
///
/// Triggered when user selects filters or ZIP
///
/// Backend pulls from contractor_profiles table with the following:
///
/// specialty, location, availability, budget_match, verified = true
///
/// 📲 Button Actions:
/// "View Profile" → Navigates to ContractorDetailPage, passing contractor_id
///
/// "Request Quote" → Opens modal or new page (RequestQuotePage) pre-filled
/// with selected contractor and project info
class FindContractorWidget extends StatefulWidget {
  const FindContractorWidget({
    super.key,
    required this.name,
    required this.trade,
    required this.rating,
    required this.reviews,
    required this.image,
    required this.findContractor,
    required this.gps,
    required this.projectType,
    required this.timeline,
    required this.budget,
    required this.zip,
    required this.userContractorPreference,
  });

  final String? name;
  final String? trade;
  final String? rating;
  final String? reviews;
  final String? image;
  final dynamic findContractor;
  final LatLng? gps;
  final String? projectType;
  final String? timeline;
  final int? budget;
  final String? zip;
  final String? userContractorPreference;

  static String routeName = 'FindContractor';
  static String routePath = '/findContractor';

  @override
  State<FindContractorWidget> createState() => _FindContractorWidgetState();
}

class _FindContractorWidgetState extends State<FindContractorWidget> {
  late FindContractorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FindContractorModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultayz = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.findContractor?.toString(),
        screenContext: widget.findContractor?.toString(),
        inputType: widget.findContractor?.toString(),
        inputValue: widget.findContractor?.toString(),
      );

      await FixFlowAIGroup.alarmTriggerCall.call();

      await FixFlowAIGroup.openAIBuildControlCall.call();

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResultayz?.succeeded ?? true)) {
        context.pushNamed(FalseErrorWidget.routeName);
      }
    });

    _model.textController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.userContractorPreference,
      'Search',
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF1C1C1E),
        appBar: AppBar(
          backgroundColor: Color(0xFF1C1C1E),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Color(0xFF3A3A3C),
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
                    widget.findContractor,
                    ParamType.JSON,
                  ),
                  'quickLogsPage': serializeParam(
                    widget.findContractor,
                    ParamType.JSON,
                  ),
                  'myProjects': serializeParam(
                    widget.findContractor,
                    ParamType.JSON,
                  ),
                  'mainDash': serializeParam(
                    widget.findContractor,
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
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Color(0xFF3A3A3C),
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.filter_list_rounded,
                  color: Color(0xFF00CFFF),
                  size: 24.0,
                ),
                onPressed: () async {
                  _model.apiResultr0h =
                      await FixFlowAIGroup.fixflowBrainCall.call(
                    userId: widget.userContractorPreference,
                    inputType: widget.userContractorPreference,
                    screenContext: widget.userContractorPreference,
                    inputValue: widget.userContractorPreference,
                  );

                  await FixFlowAIGroup.searchContractorCall.call();

                  await FixFlowAIGroup.contractorProfileCall.call();

                  FFAppState().contractorList =
                      (_model.apiResultfnf?.jsonBody ?? '')
                          .toList()
                          .cast<dynamic>();
                  safeSetState(() {});
                  if (!(_model.apiResultr0h?.succeeded ?? true)) {
                    context.pushNamed(FalseErrorWidget.routeName);
                  }

                  safeSetState(() {});
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
              _model.apiResult32d = await FixFlowAIGroup.fixflowBrainCall.call(
                userId: '',
                screenContext: '',
                inputType: '',
                inputValue: '',
              );

              await FixFlowAIGroup.postAlgorithmActivityCall.call();

              await FixFlowAIGroup.postSalesEngineLogCall.call();

              if (!(_model.apiResult32d?.succeeded ?? true)) {
                context.pushNamed(FalseErrorWidget.routeName);
              }

              safeSetState(() {});
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Find a Contractor',
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontStyle,
                                ),
                          ),
                          Text(
                            '\"Describe the type of contractor or service you need, along with budget, timeline, and ZIP code.\"\n',
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
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
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
                                        _model.apiResultxgg =
                                            await FixFlowAIGroup
                                                .fixflowBrainCall
                                                .call();

                                        if (!(_model.apiResultxgg?.succeeded ??
                                            true)) {
                                          context.pushNamed(
                                              FalseErrorWidget.routeName);
                                        }

                                        safeSetState(() {});
                                      },
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'ZIP Code',
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
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF00CFFF),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF00CFFF),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFF2C2C2E),
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
                                      keyboardType: TextInputType.number,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ],
                      ),
                    ]
                        .divide(SizedBox(height: 24.0))
                        .addToStart(SizedBox(height: 24.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final contractorList =
                          FFAppState().contractorList.toList();

                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.apiResultfnf =
                              await FixFlowAIGroup.fixflowBrainCall.call(
                            userId: '',
                            screenContext: '',
                            inputType: '',
                            inputValue: '',
                          );

                          await FixFlowAIGroup.contractorProfileCall.call();

                          FFAppState().contractorList =
                              contractorList.toList().cast<dynamic>();
                          safeSetState(() {});
                          if (!(_model.apiResultfnf?.succeeded ?? true)) {
                            context.pushNamed(FalseErrorWidget.routeName);
                          }

                          safeSetState(() {});
                        },
                        child: ListView.separated(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            16.0,
                            0,
                            20.0,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: contractorList.length,
                          separatorBuilder: (_, __) => SizedBox(height: 16.0),
                          itemBuilder: (context, contractorListIndex) {
                            final contractorListItem =
                                contractorList[contractorListIndex];
                            return Padding(
                              padding: EdgeInsets.all(16.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().contractorList = getJsonField(
                                    (_model.apiResultfnf?.jsonBody ?? ''),
                                    r'''$''',
                                    true,
                                  )!
                                      .toList()
                                      .cast<dynamic>();
                                  safeSetState(() {});
                                  _model.apiResultolp = await FixFlowAIGroup
                                      .fixflowBrainCall
                                      .call();

                                  await FixFlowAIGroup.contractorProfileCall
                                      .call();

                                  if (!(_model.apiResultolp?.succeeded ??
                                      true)) {
                                    context
                                        .pushNamed(FalseErrorWidget.routeName);
                                  }

                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2C2C2E),
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: Color(0xFF3A3A3C),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 60.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF3A3A3C),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.network(
                                                valueOrDefault<String>(
                                                  widget.image,
                                                  'image',
                                                ),
                                              ).image,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.apiResultn56 =
                                                      await FixFlowAIGroup
                                                          .fixflowBrainCall
                                                          .call(
                                                    userId: '',
                                                    screenContext: '',
                                                    inputType: '',
                                                  );

                                                  if (!(_model.apiResultn56
                                                          ?.succeeded ??
                                                      true)) {
                                                    context.pushNamed(
                                                        FalseErrorWidget
                                                            .routeName);
                                                  }

                                                  safeSetState(() {});
                                                },
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    widget.name,
                                                    'Name',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .interTight(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  widget.trade,
                                                  'Trade',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
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
                                                      color: Color(0xFF00CFFF),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
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
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFFFF5C00),
                                                    size: 16.0,
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFFFF5C00),
                                                    size: 16.0,
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFFFF5C00),
                                                    size: 16.0,
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFFFF5C00),
                                                    size: 16.0,
                                                  ),
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFFFF5C00),
                                                    size: 16.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(4.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        widget.rating,
                                                        'Ratiing',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodySmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .inter(
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
                                                            color: Colors.white,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
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
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 4.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'profile pressed ...');
                                                    },
                                                    text: 'View Profile',
                                                    options: FFButtonOptions(
                                                      height: 32.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0xFF3A3A3C),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF00CFFF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'requestQuote pressed ...');
                                                    },
                                                    text: 'Request Quote',
                                                    options: FFButtonOptions(
                                                      height: 32.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0xFFFF5C00),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
