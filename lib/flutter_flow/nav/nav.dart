import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? EntryWidget() : WelcomeWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? EntryWidget() : WelcomeWidget(),
        ),
        FFRoute(
          name: WelcomeWidget.routeName,
          path: WelcomeWidget.routePath,
          builder: (context, params) => WelcomeWidget(),
        ),
        FFRoute(
          name: EntryWidget.routeName,
          path: EntryWidget.routePath,
          builder: (context, params) => EntryWidget(
            login: params.getParam(
              'login',
              ParamType.JSON,
            ),
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
          ),
        ),
        FFRoute(
          name: MainDashWidget.routeName,
          path: MainDashWidget.routePath,
          builder: (context, params) => MainDashWidget(
            planProject: params.getParam(
              'planProject',
              ParamType.JSON,
            ),
            quickLogsPage: params.getParam(
              'quickLogsPage',
              ParamType.JSON,
            ),
            myProjects: params.getParam(
              'myProjects',
              ParamType.JSON,
            ),
            mainDash: params.getParam(
              'mainDash',
              ParamType.JSON,
            ),
            userName: params.getParam(
              'userName',
              ParamType.String,
            ),
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
            contractor: params.getParam(
              'contractor',
              ParamType.String,
            ),
            ifOnly: params.getParam(
              'ifOnly',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: DiagnosePageWidget.routeName,
          path: DiagnosePageWidget.routePath,
          builder: (context, params) => DiagnosePageWidget(
            userInput: params.getParam(
              'userInput',
              ParamType.String,
            ),
            zip: params.getParam(
              'zip',
              ParamType.String,
            ),
            photoURL: params.getParam(
              'photoURL',
              ParamType.String,
            ),
            problemDescription: params.getParam(
              'problemDescription',
              ParamType.String,
            ),
            location: params.getParam(
              'location',
              ParamType.String,
            ),
            diagnosisResults: params.getParam(
              'diagnosisResults',
              ParamType.String,
            ),
            suggestedFFix: params.getParam(
              'suggestedFFix',
              ParamType.String,
            ),
            fixSteps: params.getParam(
              'fixSteps',
              ParamType.String,
            ),
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
            diagnoisePage: params.getParam(
              'diagnoisePage',
              ParamType.JSON,
            ),
            stateTheIssue: params.getParam(
              'stateTheIssue',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PlanProjectPageWidget.routeName,
          path: PlanProjectPageWidget.routePath,
          builder: (context, params) => PlanProjectPageWidget(
            projectName: params.getParam(
              'projectName',
              ParamType.String,
            ),
            describeProject: params.getParam(
              'describeProject',
              ParamType.String,
            ),
            estimatedBudget: params.getParam(
              'estimatedBudget',
              ParamType.String,
            ),
            selectTIme: params.getParam(
              'selectTIme',
              ParamType.String,
            ),
            zip: params.getParam(
              'zip',
              ParamType.String,
            ),
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
            planProjectPage: params.getParam(
              'planProjectPage',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: FindContractorWidget.routeName,
          path: FindContractorWidget.routePath,
          builder: (context, params) => FindContractorWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            trade: params.getParam(
              'trade',
              ParamType.String,
            ),
            rating: params.getParam(
              'rating',
              ParamType.String,
            ),
            reviews: params.getParam(
              'reviews',
              ParamType.String,
            ),
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            findContractor: params.getParam(
              'findContractor',
              ParamType.JSON,
            ),
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
            projectType: params.getParam(
              'projectType',
              ParamType.String,
            ),
            timeline: params.getParam(
              'timeline',
              ParamType.String,
            ),
            budget: params.getParam(
              'budget',
              ParamType.int,
            ),
            zip: params.getParam(
              'zip',
              ParamType.String,
            ),
            userContractorPreference: params.getParam(
              'userContractorPreference',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: IfOnlyThisAppCOuldWidget.routeName,
          path: IfOnlyThisAppCOuldWidget.routePath,
          builder: (context, params) => IfOnlyThisAppCOuldWidget(
            userRequest: params.getParam(
              'userRequest',
              ParamType.String,
            ),
            ifOnlyAppPage: params.getParam(
              'ifOnlyAppPage',
              ParamType.JSON,
            ),
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
            ifOnlyTHisAPP: params.getParam(
              'ifOnlyTHisAPP',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: BookingsPageWidget.routeName,
          path: BookingsPageWidget.routePath,
          builder: (context, params) => BookingsPageWidget(
            filterStatus: params.getParam(
              'filterStatus',
              ParamType.String,
            ),
            sortData: params.getParam(
              'sortData',
              ParamType.String,
            ),
            myBookingsPage: params.getParam(
              'myBookingsPage',
              ParamType.JSON,
            ),
            companyName: params.getParam(
              'companyName',
              ParamType.String,
            ),
            rep: params.getParam(
              'rep',
              ParamType.String,
            ),
            fullfilmentStatus: params.getParam(
              'fullfilmentStatus',
              ParamType.String,
            ),
            date: params.getParam(
              'date',
              ParamType.String,
            ),
            time: params.getParam(
              'time',
              ParamType.String,
            ),
            location: params.getParam(
              'location',
              ParamType.String,
            ),
            rateService: params.getParam(
              'rateService',
              ParamType.String,
            ),
            cancel: params.getParam(
              'cancel',
              ParamType.String,
            ),
            viewDetails: params.getParam(
              'viewDetails',
              ParamType.String,
            ),
            home: params.getParam(
              'home',
              ParamType.String,
            ),
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
            all: params.getParam(
              'all',
              ParamType.String,
            ),
            upcoming: params.getParam(
              'upcoming',
              ParamType.String,
            ),
            completed: params.getParam(
              'completed',
              ParamType.String,
            ),
            cancelled: params.getParam(
              'cancelled',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyProjectsWidget.routeName,
          path: MyProjectsWidget.routePath,
          builder: (context, params) => MyProjectsWidget(
            savedChecklist: params.getParam(
              'savedChecklist',
              ParamType.String,
            ),
            savedProject: params.getParam(
              'savedProject',
              ParamType.JSON,
            ),
            projectName: params.getParam(
              'projectName',
              ParamType.String,
            ),
            location: params.getParam(
              'location',
              ParamType.String,
            ),
            imageURL: params.getParam(
              'imageURL',
              ParamType.String,
            ),
            lastUpdated: params.getParam(
              'lastUpdated',
              ParamType.String,
            ),
            project: params.getParam(
              'project',
              ParamType.String,
            ),
            diy: params.getParam(
              'diy',
              ParamType.JSON,
            ),
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
          ),
        ),
        FFRoute(
          name: DiagnosisdetailsWidget.routeName,
          path: DiagnosisdetailsWidget.routePath,
          builder: (context, params) => DiagnosisdetailsWidget(
            photoURL: params.getParam(
              'photoURL',
              ParamType.String,
            ),
            problemDescription: params.getParam(
              'problemDescription',
              ParamType.String,
            ),
            location: params.getParam(
              'location',
              ParamType.String,
            ),
            diagnosisResult: params.getParam(
              'diagnosisResult',
              ParamType.String,
            ),
            suggestedFix: params.getParam(
              'suggestedFix',
              ParamType.String,
            ),
            fixSteps: params.getParam(
              'fixSteps',
              ParamType.String,
            ),
            diagnoiseDetails: params.getParam(
              'diagnoiseDetails',
              ParamType.JSON,
            ),
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
          ),
        ),
        FFRoute(
          name: MyProjectGuidanceWidget.routeName,
          path: MyProjectGuidanceWidget.routePath,
          builder: (context, params) => MyProjectGuidanceWidget(
            savedChecklist: params.getParam(
              'savedChecklist',
              ParamType.JSON,
            ),
            savedProject: params.getParam(
              'savedProject',
              ParamType.JSON,
            ),
            diyGuidance: params.getParam(
              'diyGuidance',
              ParamType.String,
            ),
            projectType: params.getParam(
              'projectType',
              ParamType.String,
            ),
            location: params.getParam(
              'location',
              ParamType.String,
            ),
            scope: params.getParam(
              'scope',
              ParamType.String,
            ),
            projectName: params.getParam(
              'projectName',
              ParamType.String,
            ),
            locationType: params.getParam(
              'locationType',
              ParamType.String,
            ),
            completionPercentage: params.getParam(
              'completionPercentage',
              ParamType.int,
            ),
            aiOnlineStatus: params.getParam(
              'aiOnlineStatus',
              ParamType.bool,
            ),
            aiConversation: params.getParam(
              'aiConversation',
              ParamType.String,
            ),
            userConversation: params.getParam(
              'userConversation',
              ParamType.String,
            ),
            statusColor: params.getParam(
              'statusColor',
              ParamType.String,
            ),
            conversationOverview: params.getParam(
              'conversationOverview',
              ParamType.JSON,
            ),
            conversation: params.getParam(
              'conversation',
              ParamType.String,
            ),
            conversatioFlow: params.getParam(
              'conversatioFlow',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ProjectsummaryBuildWidget.routeName,
          path: ProjectsummaryBuildWidget.routePath,
          builder: (context, params) => ProjectsummaryBuildWidget(
            projectName: params.getParam(
              'projectName',
              ParamType.String,
            ),
            describeProject: params.getParam(
              'describeProject',
              ParamType.String,
            ),
            estimatedBudget: params.getParam(
              'estimatedBudget',
              ParamType.String,
            ),
            howsoontobedone: params.getParam(
              'howsoontobedone',
              ParamType.String,
            ),
            zip: params.getParam(
              'zip',
              ParamType.String,
            ),
            gps: params.getParam(
              'gps',
              ParamType.String,
            ),
            aiDifficulty: params.getParam(
              'aiDifficulty',
              ParamType.String,
            ),
            aiTimeCommitment: params.getParam(
              'aiTimeCommitment',
              ParamType.String,
            ),
            aiProTips: params.getParam(
              'aiProTips',
              ParamType.String,
            ),
            fixflowAssistant: params.getParam(
              'fixflowAssistant',
              ParamType.String,
            ),
            userInput: params.getParam(
              'userInput',
              ParamType.String,
            ),
            savedChecklist: params.getParam(
              'savedChecklist',
              ParamType.JSON,
            ),
            savedProject: params.getParam(
              'savedProject',
              ParamType.JSON,
            ),
            projectSummary: params.getParam(
              'projectSummary',
              ParamType.JSON,
            ),
            navigate: params.getParam(
              'navigate',
              ParamType.LatLng,
            ),
            conversationList: params.getParam(
              'conversationList',
              ParamType.int,
            ),
            conversation: params.getParam(
              'conversation',
              ParamType.String,
            ),
            conversationFLow: params.getParam(
              'conversationFLow',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: DiyguideWidget.routeName,
          path: DiyguideWidget.routePath,
          builder: (context, params) => DiyguideWidget(
            documentFormat: params.getParam(
              'documentFormat',
              ParamType.String,
            ),
            generatedWhen: params.getParam(
              'generatedWhen',
              ParamType.String,
            ),
            pages: params.getParam(
              'pages',
              ParamType.String,
            ),
            projectName: params.getParam(
              'projectName',
              ParamType.String,
            ),
            diyGuide: params.getParam(
              'diyGuide',
              ParamType.String,
            ),
            diyPage: params.getParam(
              'diyPage',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: FixFLowChatroomWidget.routeName,
          path: FixFLowChatroomWidget.routePath,
          builder: (context, params) => FixFLowChatroomWidget(
            fixFLowChat: params.getParam(
              'fixFLowChat',
              ParamType.JSON,
            ),
            navigate: params.getParam(
              'navigate',
              ParamType.LatLng,
            ),
          ),
        ),
        FFRoute(
          name: FalseErrorWidget.routeName,
          path: FalseErrorWidget.routePath,
          builder: (context, params) => FalseErrorWidget(),
        ),
        FFRoute(
          name: CommunityProjectsWidget.routeName,
          path: CommunityProjectsWidget.routePath,
          builder: (context, params) => CommunityProjectsWidget(
            fixflowCommonity: params.getParam(
              'fixflowCommonity',
              ParamType.JSON,
            ),
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
          ),
        ),
        FFRoute(
          name: ProfilenewWidget.routeName,
          path: ProfilenewWidget.routePath,
          builder: (context, params) => ProfilenewWidget(
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
            profile: params.getParam(
              'profile',
              ParamType.String,
            ),
            main: params.getParam(
              'main',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: FixFlowGPTWidget.routeName,
          path: FixFlowGPTWidget.routePath,
          builder: (context, params) => FixFlowGPTWidget(
            fixflowgpt: params.getParam(
              'fixflowgpt',
              ParamType.JSON,
            ),
            userConversation: params.getParam(
              'userConversation',
              ParamType.String,
            ),
            fixflowAssistant: params.getParam(
              'fixflowAssistant',
              ParamType.String,
            ),
            gps: params.getParam(
              'gps',
              ParamType.LatLng,
            ),
            conversationList: params.getParam(
              'conversationList',
              ParamType.JSON,
            ),
            inputMessageText: params.getParam(
              'inputMessageText',
              ParamType.String,
            ),
            conversation: params.getParam(
              'conversation',
              ParamType.int,
            ),
            conversationflow: params.getParam(
              'conversationflow',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/welcome';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
