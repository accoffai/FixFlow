import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start FixFlow AI Group Code

class FixFlowAIGroup {
  static String getBaseUrl() =>
      'https://x2l8-ndrh-fqit.n7e.xano.io/api:GxkIEpYR';
  static Map<String, String> headers = {};
  static AdminActionCall adminActionCall = AdminActionCall();
  static PostAdminActionCall postAdminActionCall = PostAdminActionCall();
  static DeleteAdminActionCall deleteAdminActionCall = DeleteAdminActionCall();
  static GetAdminActionIdCall getAdminActionIdCall = GetAdminActionIdCall();
  static PatchAdminActionIdCall patchAdminActionIdCall =
      PatchAdminActionIdCall();
  static AlgorithmActivityCall algorithmActivityCall = AlgorithmActivityCall();
  static PostAlgorithmActivityCall postAlgorithmActivityCall =
      PostAlgorithmActivityCall();
  static DeleteAlgorithmActivityCall deleteAlgorithmActivityCall =
      DeleteAlgorithmActivityCall();
  static GetAlgorithmActivityIdCall getAlgorithmActivityIdCall =
      GetAlgorithmActivityIdCall();
  static PatchAlgorithmActivityIdCall patchAlgorithmActivityIdCall =
      PatchAlgorithmActivityIdCall();
  static BadgeCall badgeCall = BadgeCall();
  static PostBadgeCall postBadgeCall = PostBadgeCall();
  static DeleteBadgeCall deleteBadgeCall = DeleteBadgeCall();
  static GetBadgeIdCall getBadgeIdCall = GetBadgeIdCall();
  static PatchBadgeIdCall patchBadgeIdCall = PatchBadgeIdCall();
  static BookingCall bookingCall = BookingCall();
  static PostBookingCall postBookingCall = PostBookingCall();
  static DeletBookingCall deletBookingCall = DeletBookingCall();
  static GetBookingIdCall getBookingIdCall = GetBookingIdCall();
  static PatchBookingIdCall patchBookingIdCall = PatchBookingIdCall();
  static CommentCall commentCall = CommentCall();
  static PostCommentCall postCommentCall = PostCommentCall();
  static DeleteCommentCall deleteCommentCall = DeleteCommentCall();
  static GetCommenetIdCall getCommenetIdCall = GetCommenetIdCall();
  static PatchCommentIdCall patchCommentIdCall = PatchCommentIdCall();
  static CommunityPostCall communityPostCall = CommunityPostCall();
  static PostCommunityPostCall postCommunityPostCall = PostCommunityPostCall();
  static GetCommunityPostIdCall getCommunityPostIdCall =
      GetCommunityPostIdCall();
  static PatchCommunityPostIdCall patchCommunityPostIdCall =
      PatchCommunityPostIdCall();
  static ContractorAvailabilityCall contractorAvailabilityCall =
      ContractorAvailabilityCall();
  static PostContractorAvailabilityCall postContractorAvailabilityCall =
      PostContractorAvailabilityCall();
  static DeleteContractorAvailabilityCall deleteContractorAvailabilityCall =
      DeleteContractorAvailabilityCall();
  static GetContractorAvailabilityIdCall getContractorAvailabilityIdCall =
      GetContractorAvailabilityIdCall();
  static PatchContractorAvailabilityIdCall patchContractorAvailabilityIdCall =
      PatchContractorAvailabilityIdCall();
  static ContractorCertificationCall contractorCertificationCall =
      ContractorCertificationCall();
  static PostContractorCertificationCall postContractorCertificationCall =
      PostContractorCertificationCall();
  static DeleteContractorCertificationCall deleteContractorCertificationCall =
      DeleteContractorCertificationCall();
  static GetContractorCertificationIdCall getContractorCertificationIdCall =
      GetContractorCertificationIdCall();
  static PatchContractorCertificationIdCall patchContractorCertificationIdCall =
      PatchContractorCertificationIdCall();
  static ContractorProfileCall contractorProfileCall = ContractorProfileCall();
  static PostContractorProfileCall postContractorProfileCall =
      PostContractorProfileCall();
  static DeleteContractorProfileCall deleteContractorProfileCall =
      DeleteContractorProfileCall();
  static GetContractorProfileIdCall getContractorProfileIdCall =
      GetContractorProfileIdCall();
  static PatchContractorProfileIdCall patchContractorProfileIdCall =
      PatchContractorProfileIdCall();
  static ContractorServiceCall contractorServiceCall = ContractorServiceCall();
  static PostContractorServiceCall postContractorServiceCall =
      PostContractorServiceCall();
  static DeleteContractorServiceCall deleteContractorServiceCall =
      DeleteContractorServiceCall();
  static GetContractorServiceIdCall getContractorServiceIdCall =
      GetContractorServiceIdCall();
  static PatchContractorServiceIdCall patchContractorServiceIdCall =
      PatchContractorServiceIdCall();
  static ContractorServicePackageCall contractorServicePackageCall =
      ContractorServicePackageCall();
  static PostContractorServicePackageCall postContractorServicePackageCall =
      PostContractorServicePackageCall();
  static DeleteContractorServicePackageCall deleteContractorServicePackageCall =
      DeleteContractorServicePackageCall();
  static GetContractorServicePackageIdCall getContractorServicePackageIdCall =
      GetContractorServicePackageIdCall();
  static PatchContractorServicePackageIdCall
      patchContractorServicePackageIdCall =
      PatchContractorServicePackageIdCall();
  static DiagnoseWithOpenAiCall diagnoseWithOpenAiCall =
      DiagnoseWithOpenAiCall();
  static DIYGuideCall dIYGuideCall = DIYGuideCall();
  static PostDIYGuideCall postDIYGuideCall = PostDIYGuideCall();
  static DeleteDIYGuideCall deleteDIYGuideCall = DeleteDIYGuideCall();
  static GetDIYGuideIDCall getDIYGuideIDCall = GetDIYGuideIDCall();
  static PatchDIYGuideIdCall patchDIYGuideIdCall = PatchDIYGuideIdCall();
  static DIYGuideQuestionCall dIYGuideQuestionCall = DIYGuideQuestionCall();
  static PostDIYGuideQuestionCall postDIYGuideQuestionCall =
      PostDIYGuideQuestionCall();
  static DeleteDIYGuideQuestionCall deleteDIYGuideQuestionCall =
      DeleteDIYGuideQuestionCall();
  static GetDIYGuideQuestionIDCall getDIYGuideQuestionIDCall =
      GetDIYGuideQuestionIDCall();
  static PatchDIYGuideQuestionIDCall patchDIYGuideQuestionIDCall =
      PatchDIYGuideQuestionIDCall();
  static DIYGuideReviewCall dIYGuideReviewCall = DIYGuideReviewCall();
  static PostDIYGuideReviewCall postDIYGuideReviewCall =
      PostDIYGuideReviewCall();
  static DeleteDIYGuideReviewCall deleteDIYGuideReviewCall =
      DeleteDIYGuideReviewCall();
  static GetDIYGuideReviewIdCall getDIYGuideReviewIdCall =
      GetDIYGuideReviewIdCall();
  static PatchDIYGuideREviewIDCall patchDIYGuideREviewIDCall =
      PatchDIYGuideREviewIDCall();
  static EventCall eventCall = EventCall();
  static PostEventCall postEventCall = PostEventCall();
  static DeletEventCall deletEventCall = DeletEventCall();
  static GetEventCall getEventCall = GetEventCall();
  static PatchEventCall patchEventCall = PatchEventCall();
  static FavoriteProjectPlannedCall favoriteProjectPlannedCall =
      FavoriteProjectPlannedCall();
  static PostFavoriteProjectPlannedCall postFavoriteProjectPlannedCall =
      PostFavoriteProjectPlannedCall();
  static DeleteFavoriteProjectPlannedCall deleteFavoriteProjectPlannedCall =
      DeleteFavoriteProjectPlannedCall();
  static GetFavoriteProjectPlannedIdCall getFavoriteProjectPlannedIdCall =
      GetFavoriteProjectPlannedIdCall();
  static PatchFavoriteProjectPlannedIdCall patchFavoriteProjectPlannedIdCall =
      PatchFavoriteProjectPlannedIdCall();
  static FavoriteToolRecommendationCall favoriteToolRecommendationCall =
      FavoriteToolRecommendationCall();
  static PostFavoriteToolRecommendationCall postFavoriteToolRecommendationCall =
      PostFavoriteToolRecommendationCall();
  static DeleteFavoriteToolRecommendationCall
      deleteFavoriteToolRecommendationCall =
      DeleteFavoriteToolRecommendationCall();
  static GetFavoriteToolRecommendationIdCall
      getFavoriteToolRecommendationIdCall =
      GetFavoriteToolRecommendationIdCall();
  static PatchFavoriteToolRecommendationCall
      patchFavoriteToolRecommendationCall =
      PatchFavoriteToolRecommendationCall();
  static FeedbackCall feedbackCall = FeedbackCall();
  static PostFeedbackCall postFeedbackCall = PostFeedbackCall();
  static DeleteFeedbackCall deleteFeedbackCall = DeleteFeedbackCall();
  static GetFeedbackIdCall getFeedbackIdCall = GetFeedbackIdCall();
  static PatchFeedbackIdCall patchFeedbackIdCall = PatchFeedbackIdCall();
  static GroupCall groupCall = GroupCall();
  static PostGroupCall postGroupCall = PostGroupCall();
  static DeleteGroupCall deleteGroupCall = DeleteGroupCall();
  static GetGroupIdCall getGroupIdCall = GetGroupIdCall();
  static PatchGroupCall patchGroupCall = PatchGroupCall();
  static GroupMemberCall groupMemberCall = GroupMemberCall();
  static PostGroupMemberCall postGroupMemberCall = PostGroupMemberCall();
  static DeleteGroupMemberCall deleteGroupMemberCall = DeleteGroupMemberCall();
  static GetGroupMemberCall getGroupMemberCall = GetGroupMemberCall();
  static PatchGroupMemberCall patchGroupMemberCall = PatchGroupMemberCall();
  static IssueReportedCall issueReportedCall = IssueReportedCall();
  static PostIssueReportedCall postIssueReportedCall = PostIssueReportedCall();
  static DeleteIssueReportedCall deleteIssueReportedCall =
      DeleteIssueReportedCall();
  static GetIssueReportedIdCall getIssueReportedIdCall =
      GetIssueReportedIdCall();
  static PatchIssueReportedIdCall patchIssueReportedIdCall =
      PatchIssueReportedIdCall();
  static LikeCall likeCall = LikeCall();
  static PostLikeCall postLikeCall = PostLikeCall();
  static DeleteLikeCall deleteLikeCall = DeleteLikeCall();
  static GetLikeCall getLikeCall = GetLikeCall();
  static PatchLikeCall patchLikeCall = PatchLikeCall();
  static MaterialCall materialCall = MaterialCall();
  static PostMaterialCall postMaterialCall = PostMaterialCall();
  static DeleteMaterialCall deleteMaterialCall = DeleteMaterialCall();
  static GetMaterialIdCall getMaterialIdCall = GetMaterialIdCall();
  static PatchMaterialIdCall patchMaterialIdCall = PatchMaterialIdCall();
  static MessageCall messageCall = MessageCall();
  static PostMessageCall postMessageCall = PostMessageCall();
  static DeleteMessageCall deleteMessageCall = DeleteMessageCall();
  static GetMessageIdCall getMessageIdCall = GetMessageIdCall();
  static PatchMessageIdCall patchMessageIdCall = PatchMessageIdCall();
  static NotificationCall notificationCall = NotificationCall();
  static PostNotificationCall postNotificationCall = PostNotificationCall();
  static DeleteNotificationCall deleteNotificationCall =
      DeleteNotificationCall();
  static GetNotificationCall getNotificationCall = GetNotificationCall();
  static PatchNotificationCall patchNotificationCall = PatchNotificationCall();
  static OwnedToolCall ownedToolCall = OwnedToolCall();
  static PostOwnedToolCall postOwnedToolCall = PostOwnedToolCall();
  static DeleteOwnedToolCall deleteOwnedToolCall = DeleteOwnedToolCall();
  static GetOwnedToolCall getOwnedToolCall = GetOwnedToolCall();
  static PatchOwnedToolCall patchOwnedToolCall = PatchOwnedToolCall();
  static PastProjectCall pastProjectCall = PastProjectCall();
  static PostPastProjectCall postPastProjectCall = PostPastProjectCall();
  static DeletedPastProjectCall deletedPastProjectCall =
      DeletedPastProjectCall();
  static GetPastProjectIdCall getPastProjectIdCall = GetPastProjectIdCall();
  static PatchPastProjectIdCall patchPastProjectIdCall =
      PatchPastProjectIdCall();
  static PaymentCall paymentCall = PaymentCall();
  static PostPaymentCall postPaymentCall = PostPaymentCall();
  static DeletePaymentCall deletePaymentCall = DeletePaymentCall();
  static GetPaymentIdCall getPaymentIdCall = GetPaymentIdCall();
  static PatchPaymentCall patchPaymentCall = PatchPaymentCall();
  static ProjectMaterialUsageCall projectMaterialUsageCall =
      ProjectMaterialUsageCall();
  static PostProjectMaterialUsageCall postProjectMaterialUsageCall =
      PostProjectMaterialUsageCall();
  static DeleteProjectMaterialUsageCall deleteProjectMaterialUsageCall =
      DeleteProjectMaterialUsageCall();
  static GetProjectMaterialUsageIdCall getProjectMaterialUsageIdCall =
      GetProjectMaterialUsageIdCall();
  static PatchProjectMaterialUsageIdCall patchProjectMaterialUsageIdCall =
      PatchProjectMaterialUsageIdCall();
  static PrejectMaterialsCall prejectMaterialsCall = PrejectMaterialsCall();
  static PostProjectMaterialsCall postProjectMaterialsCall =
      PostProjectMaterialsCall();
  static DeleteProjectMaterialsCall deleteProjectMaterialsCall =
      DeleteProjectMaterialsCall();
  static GetProjectMaterialsIdCall getProjectMaterialsIdCall =
      GetProjectMaterialsIdCall();
  static PatchProjectMaterialsIdCall patchProjectMaterialsIdCall =
      PatchProjectMaterialsIdCall();
  static ProjectPlannedCall projectPlannedCall = ProjectPlannedCall();
  static PostProjectPlannedCall postProjectPlannedCall =
      PostProjectPlannedCall();
  static DeleteProjectPlannedCall deleteProjectPlannedCall =
      DeleteProjectPlannedCall();
  static GetProjectPlannedIdCall getProjectPlannedIdCall =
      GetProjectPlannedIdCall();
  static PatchProjectPlannedIdCall patchProjectPlannedIdCall =
      PatchProjectPlannedIdCall();
  static ProjectStepCall projectStepCall = ProjectStepCall();
  static PostProjectStepCall postProjectStepCall = PostProjectStepCall();
  static DeleteProjectStepCall deleteProjectStepCall = DeleteProjectStepCall();
  static GetProjectStepIdCall getProjectStepIdCall = GetProjectStepIdCall();
  static PatchProjectStepIdCall patchProjectStepIdCall =
      PatchProjectStepIdCall();
  static PromotionCall promotionCall = PromotionCall();
  static PostPromotionCall postPromotionCall = PostPromotionCall();
  static DeletePromotionCall deletePromotionCall = DeletePromotionCall();
  static GetPromotionIdCall getPromotionIdCall = GetPromotionIdCall();
  static PatchPromotionCall patchPromotionCall = PatchPromotionCall();
  static ReportCall reportCall = ReportCall();
  static PostReportCall postReportCall = PostReportCall();
  static DeleteReportCall deleteReportCall = DeleteReportCall();
  static GetReportCall getReportCall = GetReportCall();
  static PatchReportCall patchReportCall = PatchReportCall();
  static ReviewCall reviewCall = ReviewCall();
  static PostReviewCall postReviewCall = PostReviewCall();
  static DeleteReviewCall deleteReviewCall = DeleteReviewCall();
  static GetReviewCall getReviewCall = GetReviewCall();
  static PatchReviewCall patchReviewCall = PatchReviewCall();
  static SalesEngineLogCall salesEngineLogCall = SalesEngineLogCall();
  static PostSalesEngineLogCall postSalesEngineLogCall =
      PostSalesEngineLogCall();
  static DeleteSalesEngineLogCall deleteSalesEngineLogCall =
      DeleteSalesEngineLogCall();
  static GetSalesEngineLogIdCall getSalesEngineLogIdCall =
      GetSalesEngineLogIdCall();
  static PatchSalesEngineLogIdCall patchSalesEngineLogIdCall =
      PatchSalesEngineLogIdCall();
  static SavedCommunityPostCall savedCommunityPostCall =
      SavedCommunityPostCall();
  static PostSavedCommunityPostCall postSavedCommunityPostCall =
      PostSavedCommunityPostCall();
  static DeleteSavedCommunityPostCall deleteSavedCommunityPostCall =
      DeleteSavedCommunityPostCall();
  static GetSavedCommunityPostIdCall getSavedCommunityPostIdCall =
      GetSavedCommunityPostIdCall();
  static PatchSavedCommuntiyPostIdCall patchSavedCommuntiyPostIdCall =
      PatchSavedCommuntiyPostIdCall();
  static ServiceCategoryCall serviceCategoryCall = ServiceCategoryCall();
  static PostServiceCategoryCall postServiceCategoryCall =
      PostServiceCategoryCall();
  static DeleteServiceCategoryCall deleteServiceCategoryCall =
      DeleteServiceCategoryCall();
  static GetServiceCategoryIdCall getServiceCategoryIdCall =
      GetServiceCategoryIdCall();
  static PatchServiceCategoryIdCall patchServiceCategoryIdCall =
      PatchServiceCategoryIdCall();
  static SkillCall skillCall = SkillCall();
  static PostSkillCall postSkillCall = PostSkillCall();
  static DeleteSkillCall deleteSkillCall = DeleteSkillCall();
  static GetSkillIdCall getSkillIdCall = GetSkillIdCall();
  static PatchSkillIdCall patchSkillIdCall = PatchSkillIdCall();
  static ToolCall toolCall = ToolCall();
  static PostToolCall postToolCall = PostToolCall();
  static DeleteToolCall deleteToolCall = DeleteToolCall();
  static GetToolIdCall getToolIdCall = GetToolIdCall();
  static PatchToolIdCall patchToolIdCall = PatchToolIdCall();
  static ToolRecommendationCall toolRecommendationCall =
      ToolRecommendationCall();
  static PostToolRecommendationCall postToolRecommendationCall =
      PostToolRecommendationCall();
  static DeleteToolRecommendationCall deleteToolRecommendationCall =
      DeleteToolRecommendationCall();
  static GetTooldRecommendationIdCall getTooldRecommendationIdCall =
      GetTooldRecommendationIdCall();
  static PatchToolRecommendationIdCall patchToolRecommendationIdCall =
      PatchToolRecommendationIdCall();
  static UserSkillCall userSkillCall = UserSkillCall();
  static PostUserSkillCall postUserSkillCall = PostUserSkillCall();
  static DeleteUserSkillCall deleteUserSkillCall = DeleteUserSkillCall();
  static GetUserSkillIdCall getUserSkillIdCall = GetUserSkillIdCall();
  static PatchUserSkillIdCall patchUserSkillIdCall = PatchUserSkillIdCall();
  static PatchUserSettingCall patchUserSettingCall = PatchUserSettingCall();
  static GetUserSettingCall getUserSettingCall = GetUserSettingCall();
  static PostQuickActionLogCall postQuickActionLogCall =
      PostQuickActionLogCall();
  static GetQuickActionLogCall getQuickActionLogCall = GetQuickActionLogCall();
  static DeleteQuickActionLogCall deleteQuickActionLogCall =
      DeleteQuickActionLogCall();
  static QuickActionLogIDCall quickActionLogIDCall = QuickActionLogIDCall();
  static PatchQuickActionLogIDCall patchQuickActionLogIDCall =
      PatchQuickActionLogIDCall();
  static FixflowBrainCall fixflowBrainCall = FixflowBrainCall();
  static MySavedProjectsCall mySavedProjectsCall = MySavedProjectsCall();
  static SavedChecklistCall savedChecklistCall = SavedChecklistCall();
  static VerbalChatroomCall verbalChatroomCall = VerbalChatroomCall();
  static StopTalkingCall stopTalkingCall = StopTalkingCall();
  static SearchContractorCall searchContractorCall = SearchContractorCall();
  static SubmitFeatureRequestCall submitFeatureRequestCall =
      SubmitFeatureRequestCall();
}

class AdminActionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin action ',
      apiUrl: '${baseUrl}/admin_action',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostAdminActionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post admin action ',
      apiUrl: '${baseUrl}/admin_action',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAdminActionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete admin action ',
      apiUrl: '${baseUrl}/admin_action/{admin_action_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAdminActionIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get admin action id ',
      apiUrl: '${baseUrl}/admin_action/{admin_action_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchAdminActionIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch admin action id ',
      apiUrl: '${baseUrl}/admin_action/{admin_action_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AlgorithmActivityCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Algorithm activity ',
      apiUrl: '${baseUrl}/algorithm_activity',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostAlgorithmActivityCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post algorithm activity ',
      apiUrl: '${baseUrl}/algorithm_activity',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAlgorithmActivityCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete algorithm activity ',
      apiUrl: '${baseUrl}/algorithm_activity/{algorithm_activity_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAlgorithmActivityIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get algorithm activity id ',
      apiUrl: '${baseUrl}/algorithm_activity/{algorithm_activity_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchAlgorithmActivityIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch algorithm activity id ',
      apiUrl: '${baseUrl}/algorithm_activity/{algorithm_activity_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BadgeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Badge ',
      apiUrl: '${baseUrl}/badge',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostBadgeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post Badge ',
      apiUrl: '${baseUrl}/badge',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteBadgeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Badge ',
      apiUrl: '${baseUrl}/badge/{badge_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBadgeIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get badge id ',
      apiUrl: '${baseUrl}/badge/{badge_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchBadgeIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch Badge id ',
      apiUrl: '${baseUrl}/badge/{badge_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BookingCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Booking ',
      apiUrl: '${baseUrl}/booking',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostBookingCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post Booking ',
      apiUrl: '${baseUrl}/booking',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletBookingCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delet Booking ',
      apiUrl: '${baseUrl}/booking/{booking_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBookingIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Booking id ',
      apiUrl: '${baseUrl}/booking/{booking_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchBookingIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch Booking id ',
      apiUrl: '${baseUrl}/booking/{booking_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CommentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Comment ',
      apiUrl: '${baseUrl}/comment',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostCommentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post comment ',
      apiUrl: '${baseUrl}/comment',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCommentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete comment ',
      apiUrl: '${baseUrl}/comment/{comment_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCommenetIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get commenet id ',
      apiUrl: '${baseUrl}/comment/{comment_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchCommentIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch Comment id ',
      apiUrl: '${baseUrl}/comment/{comment_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CommunityPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Community Post ',
      apiUrl: '${baseUrl}/community_post',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostCommunityPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post community post ',
      apiUrl: '${baseUrl}/community_post',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCommunityPostIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get community post id ',
      apiUrl: '${baseUrl}/community_post/{community_post_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchCommunityPostIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch community post id ',
      apiUrl: '${baseUrl}/community_post/{community_post_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ContractorAvailabilityCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Contractor availability ',
      apiUrl: '${baseUrl}/contractor_availability',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostContractorAvailabilityCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post contractor availability ',
      apiUrl: '${baseUrl}/contractor_availability',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteContractorAvailabilityCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete contractor availability ',
      apiUrl: '${baseUrl}/contractor_availability/{contractor_availability_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContractorAvailabilityIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get contractor availability id ',
      apiUrl: '${baseUrl}/contractor_availability/{contractor_availability_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchContractorAvailabilityIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch contractor availability id ',
      apiUrl: '${baseUrl}/contractor_availability/{contractor_availability_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ContractorCertificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Contractor Certification ',
      apiUrl: '${baseUrl}/contractor_certification',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostContractorCertificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post contractor certification ',
      apiUrl: '${baseUrl}/contractor_certification',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteContractorCertificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete contractor certification ',
      apiUrl:
          '${baseUrl}/contractor_certification/{contractor_certification_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContractorCertificationIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get contractor certification id ',
      apiUrl:
          '${baseUrl}/contractor_certification/{contractor_certification_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchContractorCertificationIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch contractor certification id ',
      apiUrl:
          '${baseUrl}/contractor_certification/{contractor_certification_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ContractorProfileCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? phone = '',
    String? zip = '',
    String? trade = '',
    String? photo = '',
    String? reviews = '',
    String? rating = '',
  }) async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Contractor Profile ',
      apiUrl: '${baseUrl}/contractor_profile',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Name': name,
        'email': email,
        'phone': phone,
        'zip': zip,
        'trade': trade,
        'photo': photo,
        'reviews': reviews,
        'rating': rating,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostContractorProfileCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post Contractor Profile ',
      apiUrl: '${baseUrl}/contractor_profile',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
   

  }
}

class DeleteContractorProfileCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete contractor profile ',
      apiUrl: '${baseUrl}/contractor_profile/{contractor_profile_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContractorProfileIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get contractor profile id ',
      apiUrl: '${baseUrl}/contractor_profile/{contractor_profile_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchContractorProfileIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch contractor profile id ',
      apiUrl: '${baseUrl}/contractor_profile/{contractor_profile_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ContractorServiceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Contractor service ',
      apiUrl: '${baseUrl}/contractor_service',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostContractorServiceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post contractor service ',
      apiUrl: '${baseUrl}/contractor_service',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteContractorServiceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete contractor service ',
      apiUrl: '${baseUrl}/contractor_service/{contractor_service_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContractorServiceIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get contractor service id ',
      apiUrl: '${baseUrl}/contractor_service/{contractor_service_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchContractorServiceIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch contractor service id ',
      apiUrl: '${baseUrl}/contractor_service/{contractor_service_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ContractorServicePackageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Contractor service package ',
      apiUrl: '${baseUrl}/contractor_service_package',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostContractorServicePackageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post Contractor Service Package ',
      apiUrl: '${baseUrl}/contractor_service_package',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteContractorServicePackageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete contractor service package ',
      apiUrl:
          '${baseUrl}/contractor_service_package/{contractor_service_package_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContractorServicePackageIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get contractor service package id ',
      apiUrl:
          '${baseUrl}/contractor_service_package/{contractor_service_package_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchContractorServicePackageIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch contractor service package id',
      apiUrl:
          '${baseUrl}/contractor_service_package/{contractor_service_package_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiagnoseWithOpenAiCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? upload,
    String? text = '',
    String? location = '',
  }) async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Diagnose with open ai ',
      apiUrl: '${baseUrl}/diagnose_with_openai',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'upload': upload,
        'text': text,
        'lacation': location,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DIYGuideCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DIY Guide ',
      apiUrl: '${baseUrl}/diy_guide',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostDIYGuideCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post DIY Guide ',
      apiUrl: '${baseUrl}/diy_guide',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteDIYGuideCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete DIY Guide ',
      apiUrl: '${baseUrl}/diy_guide/{diy_guide_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDIYGuideIDCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get DIY Guide ID ',
      apiUrl: '${baseUrl}/diy_guide/{diy_guide_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchDIYGuideIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch DIY Guide id',
      apiUrl: '${baseUrl}/diy_guide/{diy_guide_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DIYGuideQuestionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DIY Guide Question ',
      apiUrl: '${baseUrl}/diy_guide_question',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostDIYGuideQuestionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post DIY Guide Question ',
      apiUrl: '${baseUrl}/diy_guide_question',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteDIYGuideQuestionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete DIY Guide Question ',
      apiUrl: '${baseUrl}/diy_guide_question/{diy_guide_question_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDIYGuideQuestionIDCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get DIY Guide Question ID',
      apiUrl: '${baseUrl}/diy_guide_question/{diy_guide_question_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchDIYGuideQuestionIDCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch DIY Guide Question ID ',
      apiUrl: '${baseUrl}/diy_guide_question/{diy_guide_question_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DIYGuideReviewCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DIY Guide Review ',
      apiUrl: '${baseUrl}/diy_guide_review',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostDIYGuideReviewCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post DIY Guide Review ',
      apiUrl: '${baseUrl}/diy_guide_review',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteDIYGuideReviewCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete DIY Guide Review ',
      apiUrl: '${baseUrl}/diy_guide_review/{diy_guide_review_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDIYGuideReviewIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get DIY Guide review id ',
      apiUrl: '${baseUrl}/diy_guide_review/{diy_guide_review_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchDIYGuideREviewIDCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch DIY Guide REview ID',
      apiUrl: '${baseUrl}/diy_guide_review/{diy_guide_review_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EventCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Event ',
      apiUrl: '${baseUrl}/event',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostEventCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post event ',
      apiUrl: '${baseUrl}/event',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletEventCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delet Event ',
      apiUrl: '${baseUrl}/event/{event_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEventCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get event',
      apiUrl: '${baseUrl}/event/{event_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchEventCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch event ',
      apiUrl: '${baseUrl}/event/{event_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FavoriteProjectPlannedCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Favorite project planned ',
      apiUrl: '${baseUrl}/favorite_project_planned',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostFavoriteProjectPlannedCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post favorite project planned ',
      apiUrl: '${baseUrl}/favorite_project_planned',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFavoriteProjectPlannedCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete favorite project planned ',
      apiUrl:
          '${baseUrl}/favorite_project_planned/{favorite_project_planned_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFavoriteProjectPlannedIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get favorite project planned id ',
      apiUrl:
          '${baseUrl}/favorite_project_planned/{favorite_project_planned_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchFavoriteProjectPlannedIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch favorite project planned id ',
      apiUrl:
          '${baseUrl}/favorite_project_planned/{favorite_project_planned_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FavoriteToolRecommendationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Favorite tool recommendation ',
      apiUrl: '${baseUrl}/favorite_tool_recommendation',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostFavoriteToolRecommendationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post favorite tool recommendation ',
      apiUrl: '${baseUrl}/favorite_tool_recommendation',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFavoriteToolRecommendationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete favorite tool recommendation ',
      apiUrl:
          '${baseUrl}/favorite_tool_recommendation/{favorite_tool_recommendation_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFavoriteToolRecommendationIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get favorite tool recommendation  id ',
      apiUrl:
          '${baseUrl}/favorite_tool_recommendation/{favorite_tool_recommendation_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchFavoriteToolRecommendationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch favorite tool recommendation ',
      apiUrl:
          '${baseUrl}/favorite_tool_recommendation/{favorite_tool_recommendation_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FeedbackCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Feedback ',
      apiUrl: '${baseUrl}/feedback',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostFeedbackCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post feedback ',
      apiUrl: '${baseUrl}/feedback',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFeedbackCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Feedback ',
      apiUrl: '${baseUrl}/feedback/{feedback_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFeedbackIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get feedback id',
      apiUrl: '${baseUrl}/feedback/{feedback_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchFeedbackIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch feedback id ',
      apiUrl: '${baseUrl}/feedback/{feedback_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GroupCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Group ',
      apiUrl: '${baseUrl}/group',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostGroupCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post group ',
      apiUrl: '${baseUrl}/group',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteGroupCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Group',
      apiUrl: '${baseUrl}/group/{group_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetGroupIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get group id ',
      apiUrl: '${baseUrl}/group/{group_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchGroupCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch Group ',
      apiUrl: '${baseUrl}/group/{group_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GroupMemberCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Group Member ',
      apiUrl: '${baseUrl}/group_member',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostGroupMemberCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post Group member ',
      apiUrl: '${baseUrl}/group_member',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteGroupMemberCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Group member ',
      apiUrl: '${baseUrl}/group_member/{group_member_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetGroupMemberCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get group member ',
      apiUrl: '${baseUrl}/group_member/{group_member_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchGroupMemberCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch group member ',
      apiUrl: '${baseUrl}/group_member/{group_member_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class IssueReportedCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Issue reported ',
      apiUrl: '${baseUrl}/issue_reported',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostIssueReportedCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post issue reported ',
      apiUrl: '${baseUrl}/issue_reported',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteIssueReportedCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete issue reported ',
      apiUrl: '${baseUrl}/issue_reported/{issue_reported_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetIssueReportedIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get issue reported id ',
      apiUrl: '${baseUrl}/issue_reported/{issue_reported_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchIssueReportedIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch issue reported id ',
      apiUrl: '${baseUrl}/issue_reported/{issue_reported_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LikeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Like ',
      apiUrl: '${baseUrl}/like',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostLikeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post like ',
      apiUrl: '${baseUrl}/like',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteLikeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete like ',
      apiUrl: '${baseUrl}/like/{like_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetLikeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get like ',
      apiUrl: '${baseUrl}/like/{like_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchLikeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch like ',
      apiUrl: '${baseUrl}/like/{like_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MaterialCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Material ',
      apiUrl: '${baseUrl}/material',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostMaterialCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post material ',
      apiUrl: '${baseUrl}/material',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteMaterialCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete material ',
      apiUrl: '${baseUrl}/material/{material_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMaterialIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get material  id ',
      apiUrl: '${baseUrl}/material/{material_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchMaterialIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch material id ',
      apiUrl: '${baseUrl}/material/{material_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MessageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'message',
      apiUrl: '${baseUrl}/message',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostMessageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post message ',
      apiUrl: '${baseUrl}/message',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteMessageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Message ',
      apiUrl: '${baseUrl}/message/{message_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMessageIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Message id ',
      apiUrl: '${baseUrl}/message/{message_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchMessageIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch message id ',
      apiUrl: '${baseUrl}/message/{message_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NotificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'notification',
      apiUrl: '${baseUrl}/notification',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? notifications(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class PostNotificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post notification',
      apiUrl: '${baseUrl}/notification',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteNotificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Notification ',
      apiUrl: '${baseUrl}/notification/{notification_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetNotificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Notification ',
      apiUrl: '${baseUrl}/notification/{notification_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchNotificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch Notification ',
      apiUrl: '${baseUrl}/notification/{notification_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OwnedToolCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Owned tool',
      apiUrl: '${baseUrl}/owned_tool',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostOwnedToolCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post owned tool',
      apiUrl: '${baseUrl}/owned_tool',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteOwnedToolCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete owned tool',
      apiUrl: '${baseUrl}/owned_tool/{owned_tool_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOwnedToolCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get owned tool',
      apiUrl: '${baseUrl}/owned_tool/{owned_tool_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchOwnedToolCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch owned tool ',
      apiUrl: '${baseUrl}/owned_tool/{owned_tool_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PastProjectCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Past Project ',
      apiUrl: '${baseUrl}/past_project',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostPastProjectCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post past project ',
      apiUrl: '${baseUrl}/past_project',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletedPastProjectCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Deleted past project ',
      apiUrl: '${baseUrl}/past_project/{past_project_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPastProjectIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get past project id ',
      apiUrl: '${baseUrl}/past_project/{past_project_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchPastProjectIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch past project id ',
      apiUrl: '${baseUrl}/past_project/{past_project_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'payment',
      apiUrl: '${baseUrl}/payment',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostPaymentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post payment',
      apiUrl: '${baseUrl}/payment',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePaymentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete payment ',
      apiUrl: '${baseUrl}/payment/{payment_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPaymentIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Payment id ',
      apiUrl: '${baseUrl}/payment/{payment_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchPaymentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch payment ',
      apiUrl: '${baseUrl}/payment/{payment_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProjectMaterialUsageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Project Material Usage ',
      apiUrl: '${baseUrl}/project_material_usage',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostProjectMaterialUsageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post project material usage ',
      apiUrl: '${baseUrl}/project_material_usage',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectMaterialUsageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete project material usage ',
      apiUrl: '${baseUrl}/project_material_usage/{project_material_usage_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectMaterialUsageIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get project material usage id ',
      apiUrl: '${baseUrl}/project_material_usage/{project_material_usage_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchProjectMaterialUsageIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch project material usage id',
      apiUrl: '${baseUrl}/project_material_usage/{project_material_usage_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PrejectMaterialsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Preject materials ',
      apiUrl: '${baseUrl}/project_materials',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostProjectMaterialsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post project materials ',
      apiUrl: '${baseUrl}/project_materials',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectMaterialsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete project materials',
      apiUrl: '${baseUrl}/project_materials/{project_materials_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectMaterialsIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get project materials id',
      apiUrl: '${baseUrl}/project_materials/{project_materials_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchProjectMaterialsIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch project materials id',
      apiUrl: '${baseUrl}/project_materials/{project_materials_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProjectPlannedCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Project planned ',
      apiUrl: '${baseUrl}/project_planned',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'user_id': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostProjectPlannedCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post project planned ',
      apiUrl: '${baseUrl}/project_planned',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectPlannedCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete project planned ',
      apiUrl: '${baseUrl}/project_planned/{project_planned_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectPlannedIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get project planned id',
      apiUrl: '${baseUrl}/project_planned/{project_planned_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchProjectPlannedIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch project planned id ',
      apiUrl: '${baseUrl}/project_planned/{project_planned_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProjectStepCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Project step ',
      apiUrl: '${baseUrl}/project_step',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostProjectStepCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post project step ',
      apiUrl: '${baseUrl}/project_step',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectStepCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete project step ',
      apiUrl: '${baseUrl}/project_step/{project_step_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectStepIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Project step id',
      apiUrl: '${baseUrl}/project_step/{project_step_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchProjectStepIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch project step id ',
      apiUrl: '${baseUrl}/project_step/{project_step_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PromotionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'promotion',
      apiUrl: '${baseUrl}/promotion',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostPromotionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post promotion',
      apiUrl: '${baseUrl}/promotion',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePromotionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete promotion ',
      apiUrl: '${baseUrl}/promotion/{promotion_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPromotionIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get promotion id ',
      apiUrl: '${baseUrl}/promotion/{promotion_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchPromotionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch promotion ',
      apiUrl: '${baseUrl}/promotion/{promotion_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReportCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'report',
      apiUrl: '${baseUrl}/report',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostReportCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? photoURL = '',
    String? problemDescription = '',
    String? location = '',
    String? diagnosisResult = '',
    String? suggestedFix = '',
    String? fixSteps = '',
  }) async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": 1,
  "photoURL": "https://your-image.jpg",
  "problemDescription": "Toilet leaking",
  "location": "zip",
  "diagnosisResult": "Worn seal",
  "suggestedFix": "Replace wax ring",
  "fixSteps": "Shut off water, remove toilet..."
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Post report',
      apiUrl: '${baseUrl}/report',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteReportCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete report ',
      apiUrl: '${baseUrl}/report/{report_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetReportCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get report ',
      apiUrl: '${baseUrl}/report/{report_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchReportCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch report ',
      apiUrl: '${baseUrl}/report/{report_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReviewCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'review',
      apiUrl: '${baseUrl}/review',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostReviewCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'post review',
      apiUrl: '${baseUrl}/review',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteReviewCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete review ',
      apiUrl: '${baseUrl}/review/{review_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetReviewCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get review ',
      apiUrl: '${baseUrl}/review/{review_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchReviewCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch Review ',
      apiUrl: '${baseUrl}/review/{review_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SalesEngineLogCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Sales engine log ',
      apiUrl: '${baseUrl}/sales_engine_log',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostSalesEngineLogCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post sales engine log ',
      apiUrl: '${baseUrl}/sales_engine_log',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSalesEngineLogCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete sales engine log ',
      apiUrl: '${baseUrl}/sales_engine_log/{sales_engine_log_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSalesEngineLogIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get sales engine log id ',
      apiUrl: '${baseUrl}/sales_engine_log/{sales_engine_log_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchSalesEngineLogIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch sales engine log id ',
      apiUrl: '${baseUrl}/sales_engine_log/{sales_engine_log_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SavedCommunityPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Saved community post ',
      apiUrl: '${baseUrl}/saved_community_post',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostSavedCommunityPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post saved community post ',
      apiUrl: '${baseUrl}/saved_community_post',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSavedCommunityPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete saved community post ',
      apiUrl: '${baseUrl}/saved_community_post/{saved_community_post_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSavedCommunityPostIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get saved community post id ',
      apiUrl: '${baseUrl}/saved_community_post/{saved_community_post_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchSavedCommuntiyPostIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch saved communtiy post id ',
      apiUrl: '${baseUrl}/saved_community_post/{saved_community_post_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ServiceCategoryCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Service category ',
      apiUrl: '${baseUrl}/service_category',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostServiceCategoryCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'post service category ',
      apiUrl: '${baseUrl}/service_category',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteServiceCategoryCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete service category ',
      apiUrl: '${baseUrl}/service_category/{service_category_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetServiceCategoryIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get service category id ',
      apiUrl: '${baseUrl}/service_category/{service_category_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchServiceCategoryIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch service category id ',
      apiUrl: '${baseUrl}/service_category/{service_category_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SkillCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'skill',
      apiUrl: '${baseUrl}/skill',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostSkillCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post skill',
      apiUrl: '${baseUrl}/skill',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSkillCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete skill',
      apiUrl: '${baseUrl}/skill/{skill_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSkillIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get skill id ',
      apiUrl: '${baseUrl}/skill/{skill_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchSkillIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch skill id',
      apiUrl: '${baseUrl}/skill/{skill_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ToolCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Tool',
      apiUrl: '${baseUrl}/tool',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostToolCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post tool ',
      apiUrl: '${baseUrl}/tool',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteToolCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete tool ',
      apiUrl: '${baseUrl}/tool/{tool_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetToolIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get tool id ',
      apiUrl: '${baseUrl}/tool/{tool_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchToolIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch tool id ',
      apiUrl: '${baseUrl}/tool/{tool_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ToolRecommendationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Tool recommendation ',
      apiUrl: '${baseUrl}/tool_recommendation',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostToolRecommendationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post tool recommendation ',
      apiUrl: '${baseUrl}/tool_recommendation',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteToolRecommendationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete tool recommendation ',
      apiUrl: '${baseUrl}/{tool_recommendation_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTooldRecommendationIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get toold recommendation id',
      apiUrl: '${baseUrl}/{tool_recommendation_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchToolRecommendationIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch tool recommendation id ',
      apiUrl: '${baseUrl}/{tool_recommendation_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UserSkillCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'User Skill ',
      apiUrl: '${baseUrl}/user_skill',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostUserSkillCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post User Skill ',
      apiUrl: '${baseUrl}/user_skill',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserSkillCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete user skill ',
      apiUrl: '${baseUrl}/user_skill/{user_skill_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserSkillIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get User Skill id ',
      apiUrl: '${baseUrl}/user_skill/{user_skill_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchUserSkillIdCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch user skill id ',
      apiUrl: '${baseUrl}/user_skill/{user_skill_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchUserSettingCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch user setting',
      apiUrl: '${baseUrl}/user_setting/{user_setting_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserSettingCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get user setting',
      apiUrl: '${baseUrl}/user_setting/{user_setting_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostQuickActionLogCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post Quick Action Log',
      apiUrl: '${baseUrl}/quick_action_log',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetQuickActionLogCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get quick action log',
      apiUrl: '${baseUrl}/quick_action_log',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteQuickActionLogCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Quick Action Log',
      apiUrl: '${baseUrl}/quick_action_log/{quick_action_log_id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuickActionLogIDCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Quick Action Log ID',
      apiUrl: '${baseUrl}/quick_action_log/{quick_action_log_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchQuickActionLogIDCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Patch Quick Action Log ID',
      apiUrl: '${baseUrl}/quick_action_log/{quick_action_log_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FixflowBrainCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? screenContext = '',
    String? inputType = '',
    String? inputValue = '',
  }) async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": "demo_user_001",
  "screen_context": "in_repair_assistance",
  "input_type": "text",
  "input_value": "How do I fix a leaking kitchen faucet?"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fixflow brain',
      apiUrl: '${baseUrl}/FixFlow_brain',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${const String.fromEnvironment("OPENAI_API_KEY")}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MySavedProjectsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'My Saved Projects',
      apiUrl: '${baseUrl}/My_Saved_Projects',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SavedChecklistCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Saved Checklist',
      apiUrl: '${baseUrl}/Saved_Checklist',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerbalChatroomCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Verbal Chatroom',
      apiUrl: '${baseUrl}/verbal_chatroom',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StopTalkingCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Stop Talking',
      apiUrl: '${baseUrl}/Stop_Speaking',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchContractorCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Search Contractor',
      apiUrl: '${baseUrl}/Search_Contractor',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SubmitFeatureRequestCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FixFlowAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Submit Feature Request ',
      apiUrl: '${baseUrl}/Submit_Feature_Request',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End FixFlow AI Group Code

/// Start Auth Group Code

class AuthGroup {
  static String getBaseUrl() =>
      'https://x2l8-ndrh-fqit.n7e.xano.io/api:U_cxudC5';
  static Map<String, String> headers = {};
  static AuthLoginCall authLoginCall = AuthLoginCall();
  static AuthMeCall authMeCall = AuthMeCall();
  static AuthSignupCall authSignupCall = AuthSignupCall();
  static ForgotPasswordCall forgotPasswordCall = ForgotPasswordCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
  static UpdatePasswordCall updatePasswordCall = UpdatePasswordCall();
  static DarkModeCall darkModeCall = DarkModeCall();
}

class AuthLoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "Accoffai@aohub.biz",
  "password": "Live_Dre08\$\$"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Auth Login ',
      apiUrl: '${baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {
        '{   Authorization':
            'Bearer eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.YgTs6RHPlVgI99vd34whSe-6MDtjBAWK1O3sXuixTkLzDRUbyX4DCq38jXRj7GSiyB6qGy1QPAi7USFHGbdyBRUWU0HtIcTp.9aQsQRl4KGB2wWL6WrCMsQ.ihPAQhi7Hu9obWa5rCYnGpEzBE1H0FftNDenUqJXdxDBUub7CmEIfwqyrMrdFUgi1EoFS9o6ZKAhNFrDcWr8LsA78CWFw-20PW4NbbGhA6IUW74PBDXkZ9F3ExFyyG0n3lbKVTHycIL68SIp45F9qw.e_SAXhe9gfjmh2awbjL914Bo2vAjgblqn21TgDpHDDQ }',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthMeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Auth Me',
      apiUrl: '${baseUrl}/auth/me',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthSignupCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    String? location = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "Andre Barnes",
  "email": "acc.offai@aohub.biz",
  "password": "Live_Dre08\$\$",
  "location": "Columbia, SC",
  "user_type": "homeowner",
  "first_use_data": "none",
  "purchase_history": "none",
  "is_background_checked": false,
  "id_scan_url": "",
  "real_time_photo_url": "",
  "verification_status": "pending",
  "level": "new",
  "referred_by_user_id": null,
  "affiliate_source_id": null,
  "group_id": null
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Auth signup',
      apiUrl: '${baseUrl}/auth/signup',
      callType: ApiCallType.POST,
      headers: {
        '{   Authorization':
            'Bearer eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0._16Om0nCnrTGTIIhzWvaC_VRB7eAZ8NmvvrKMnYfXRPX9GZN8aR5J4R08_mw64ksa4dZJhP2G2WV8_eSlAVMZWkle9sI8Jb4.6dHFytURW2yhLyRM6EKQlw.-5i8dohhAwQrtFBjUHnt3bosCU6v_d3QWI97Nl1_uAeovcq5w6j9HA-sBrXRpk-hgMTviLx0gMs257uTBz91cFC7j3OlQRkfOHH1Jmj4aGBIrwjN-FLACalGtBo44wLhr7mlDRoKAcT8Trn5qEWLcA.khlU0hogU5XB34tHl4BXrvnY3rnqYO-mAg3M4h5HkHM }',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "user@example.com"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'ForgotPassword',
      apiUrl: '${baseUrl}/forgot_password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? oldPassword = '',
    String? newPassword = '',
    String? userId = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "old_password": "<yourOldPasswordInput>",
  "new_password": "<yourNewPasswordInput>",
  "user_id": "<yourUserIDVariable>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'changePassword',
      apiUrl: '${baseUrl}/Change_Password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePasswordCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Update Password',
      apiUrl: '${baseUrl}/update_email',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DarkModeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
''';
    return ApiManager.instance.makeApiCall(
      callName: 'dark mode',
      apiUrl: '${baseUrl}/toggle_dark_mode',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Auth Group Code

class ExternalAPIRequestCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'External API Request ',
      apiUrl:
          'https://x2l8-ndrh-fqit.n7e.xano.io/api:lhyHVBue/External_API_Request',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SengridCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Sengrid ',
      apiUrl: 'https://x2l8-ndrh-fqit.n7e.xano.io/api:5e9BgwVw',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
