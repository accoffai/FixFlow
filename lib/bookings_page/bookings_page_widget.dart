import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bookings_page_model.dart';
export 'bookings_page_model.dart';

/// Bookings Page — UI Structure for Gemini
/// Colors:
///
/// Background: #1C1C1E
///
/// Accent (Buttons & borders): #00CFFF
///
/// Alerts/Warnings: #FF3B30
///
/// Confirmations: #00CFFF (also used for icons or CTA states)
///
/// 🧩 Layout Breakdown (For Gemini):
/// 🔹 Page Title:
/// "My Bookings"
/// Subtitle (Optional): "Manage all your scheduled tasks, requests, and
/// appointments."
///
/// 🔹 Filter & Sort Bar (Top)
/// 🔘 Dropdown: Filter by Status — (Upcoming, Completed, Cancelled)
///
/// 🔘 Dropdown: Sort by Date — (Newest, Oldest)
///
/// (You’ll connect this to the booking table's status + created_at filters)
///
/// 🔹 Booking List Section (Dynamic Cards)
/// Each booking should display:
///
/// pgsql
/// Copy
/// Edit
/// 📄 Job Type: [from booking.type or category]
/// 👤 Contractor/Client: [user name or profile]
/// 📆 Date: [booking.date]   ⏰ Time: [booking.time]
/// 📍 Location: [booking.location]
/// 💬 Status: [booking.status] (with color-coded badge)
/// Add:
///
/// 🟠 "View Details" button → opens full booking info in a modal or detail
/// page
///
/// 🔵 "Cancel Booking" (only if status is upcoming)
///
/// ✅ "Mark Complete" (for booked tasks users finish themselves)
///
/// 🔹 Empty State (if no bookings)
/// A centered card with:
///
/// 🛠 “You don’t have any bookings yet.
///
/// Start your first task!”
///
/// 🔹 Floating Action Button (FAB) — bottom right
/// ➕ “New Booking” button
///
/// Route to: NewBookingPage
///
/// You’ll later connect to the booking creation API
///
/// 🧠 Backend Functions to Connect:
/// Make sure buttons connect to these API triggers you’ve already built in
/// Xano:
///
/// GET bookings (for current user)
///
/// POST new_booking
///
/// PUT update_booking_status
///
/// DELETE booking (if cancel)
///
/// ✅ Gemini Instruction:
/// Gemini UI Instruction:
///
/// Design a scrollable and responsive "Bookings" page.
///
/// Dark background (#1C1C1E), neon blue accents (#00CFFF)
///
/// Top bar should include dropdowns to filter by booking status and sort by
/// date
///
/// Below, show booking cards with all key info (job type, user, date, time,
/// location, and status)
///
/// Each card must have "View Details", "Cancel", and "Mark Complete" buttons
/// (based on status logic)
///
/// Add a Floating Action Button for "New Booking"
///
/// If no bookings exist, show an empty state card encouraging users to create
/// their first task
///
/// Style buttons with full width, rounded corners, and proper icon spacing
class BookingsPageWidget extends StatefulWidget {
  const BookingsPageWidget({
    super.key,
    required this.filterStatus,
    required this.sortData,
    required this.myBookingsPage,
    required this.companyName,
    required this.rep,
    required this.fullfilmentStatus,
    required this.date,
    required this.time,
    required this.location,
    required this.rateService,
    required this.cancel,
    required this.viewDetails,
    required this.home,
    this.gps,
    this.all,
    this.upcoming,
    this.completed,
    this.cancelled,
  });

  final String? filterStatus;
  final String? sortData;
  final dynamic myBookingsPage;
  final String? companyName;
  final String? rep;
  final String? fullfilmentStatus;
  final String? date;
  final String? time;
  final String? location;
  final String? rateService;
  final String? cancel;
  final String? viewDetails;
  final String? home;
  final LatLng? gps;
  final String? all;
  final String? upcoming;
  final String? completed;
  final String? cancelled;

  static String routeName = 'BookingsPage';
  static String routePath = '/bookingsPage';

  @override
  State<BookingsPageWidget> createState() => _BookingsPageWidgetState();
}

class _BookingsPageWidgetState extends State<BookingsPageWidget> {
  late BookingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultle1 = await FixFlowAIGroup.fixflowBrainCall.call(
        userId: widget.myBookingsPage?.toString(),
        screenContext: widget.myBookingsPage?.toString(),
        inputType: widget.myBookingsPage?.toString(),
        inputValue: widget.myBookingsPage?.toString(),
      );

      await FixFlowAIGroup.postAlgorithmActivityCall.call();

      await FixFlowAIGroup.postSalesEngineLogCall.call();

      if (!(_model.apiResultle1?.succeeded ?? true)) {
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
        backgroundColor: Color(0xFF1C1C1E),
        appBar: AppBar(
          backgroundColor: Color(0xFF1C1C1E),
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
                    widget.myBookingsPage,
                    ParamType.JSON,
                  ),
                  'quickLogsPage': serializeParam(
                    widget.myBookingsPage,
                    ParamType.JSON,
                  ),
                  'myProjects': serializeParam(
                    widget.myBookingsPage,
                    ParamType.JSON,
                  ),
                  'mainDash': serializeParam(
                    widget.myBookingsPage,
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
            child: Text(
              'Home',
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
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'My Bookings',
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FontWeight.bold,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineLarge
                            .fontStyle,
                      ),
                      color: Colors.white,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Text(
                  'Manage all your scheduled tasks, requests, and appointments.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFFAAAAAA),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
              Text(
                'Hello World',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
              Text(
                'Hello World',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final myBookings = widget.myBookingsPage!.toList();

                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: myBookings.length,
                      separatorBuilder: (_, __) => SizedBox(height: 16.0),
                      itemBuilder: (context, myBookingsIndex) {
                        final myBookingsItem = myBookings[myBookingsIndex];
                        return Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFF2C2C2E),
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: Color(0xFF3A3A3C),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.apiResultid2 = await FixFlowAIGroup
                                      .fixflowBrainCall
                                      .call();

                                  if (!(_model.apiResultid2?.succeeded ??
                                      true)) {
                                    context
                                        .pushNamed(FalseErrorWidget.routeName);
                                  }

                                  safeSetState(() {});
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  widget.companyName,
                                                  'Company Name',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.person_outline,
                                                    color: Color(0xFF00CFFF),
                                                    size: 16.0,
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      widget.rep,
                                                      'Representative ',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
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
                                                          color:
                                                              Color(0xFFAAAAAA),
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
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                        ),
                                        Container(
                                          width: 80.0,
                                          height: 28.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF00CFFF),
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  widget.fullfilmentStatus,
                                                  'upcoming/complete',
                                                ),
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFF1C1C1E),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.calendar_today,
                                                color: Color(0xFF00CFFF),
                                                size: 16.0,
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  widget.date,
                                                  'Date',
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
                                                      color: Color(0xFFAAAAAA),
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
                                            ].divide(SizedBox(width: 6.0)),
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.access_time,
                                                color: Color(0xFF00CFFF),
                                                size: 16.0,
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  widget.time,
                                                  'Time',
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
                                                      color: Color(0xFFAAAAAA),
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
                                            ].divide(SizedBox(width: 6.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Color(0xFF00CFFF),
                                          size: 16.0,
                                        ),
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.location,
                                              'Location ',
                                            ),
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
                                                  color: Color(0xFFAAAAAA),
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
                                      ].divide(SizedBox(width: 6.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: valueOrDefault<String>(
                                              widget.viewDetails,
                                              'View Details',
                                            ),
                                            options: FFButtonOptions(
                                              height: 36.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 8.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF1C1C1E),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFF00CFFF),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: Color(0xFF00CFFF),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: valueOrDefault<String>(
                                              widget.cancel,
                                              'Cancel',
                                            ),
                                            options: FFButtonOptions(
                                              height: 36.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 8.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF1C1C1E),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFFFF3B30),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF3B30),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    width: 64.0,
                    height: 64.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF00CFFF),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8.0,
                          color: Color(0x4000CFFF),
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
                      child: Icon(
                        Icons.add_rounded,
                        color: Color(0xFF1C1C1E),
                        size: 32.0,
                      ),
                    ),
                  ),
                ),
              ),
            ].divide(SizedBox(height: 16.0)).addToStart(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
