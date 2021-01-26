defmodule Pylon.Gateway.V1.Service.GatewayRest.Service do
  @moduledoc false
  use GRPC.Service, name: "pylon.gateway.v1.service.GatewayRest"

  rpc :ModifyGuild,
      Pylon.Discord.V1.Rest.ModifyGuildRequest,
      Pylon.Discord.V1.Rest.ModifyGuildResponse

  rpc :CreateGuildChannel,
      Pylon.Discord.V1.Rest.CreateGuildChannelRequest,
      Pylon.Discord.V1.Rest.CreateGuildChannelResponse

  rpc :ModifyGuildChannelPositions,
      Pylon.Discord.V1.Rest.ModifyGuildChannelPositionsRequest,
      Pylon.Discord.V1.Rest.ModifyGuildChannelPositionsResponse

  rpc :AddGuildMember,
      Pylon.Discord.V1.Rest.AddGuildMemberRequest,
      Pylon.Discord.V1.Rest.AddGuildMemberResponse

  rpc :ModifyGuildMember,
      Pylon.Discord.V1.Rest.ModifyGuildMemberRequest,
      Pylon.Discord.V1.Rest.ModifyGuildMemberResponse

  rpc :ModifyCurrentUserNick,
      Pylon.Discord.V1.Rest.ModifyCurrentUserNickRequest,
      Pylon.Discord.V1.Rest.ModifyCurrentUserNickResponse

  rpc :AddGuildMemberRole,
      Pylon.Discord.V1.Rest.AddGuildMemberRoleRequest,
      Pylon.Discord.V1.Rest.AddGuildMemberRoleResponse

  rpc :RemoveGuildMemberRole,
      Pylon.Discord.V1.Rest.RemoveGuildMemberRoleRequest,
      Pylon.Discord.V1.Rest.RemoveGuildMemberRoleResponse

  rpc :RemoveGuildMember,
      Pylon.Discord.V1.Rest.RemoveGuildMemberRequest,
      Pylon.Discord.V1.Rest.RemoveGuildMemberResponse

  rpc :GetGuildBans,
      Pylon.Discord.V1.Rest.GetGuildBansRequest,
      Pylon.Discord.V1.Rest.GetGuildBansResponse

  rpc :GetGuildBan,
      Pylon.Discord.V1.Rest.GetGuildBanRequest,
      Pylon.Discord.V1.Rest.GetGuildBanResponse

  rpc :CreateGuildBan,
      Pylon.Discord.V1.Rest.CreateGuildBanRequest,
      Pylon.Discord.V1.Rest.CreateGuildBanResponse

  rpc :RemoveGuildBan,
      Pylon.Discord.V1.Rest.RemoveGuildBanRequest,
      Pylon.Discord.V1.Rest.RemoveGuildBanResponse

  rpc :CreateGuildRole,
      Pylon.Discord.V1.Rest.CreateGuildRoleRequest,
      Pylon.Discord.V1.Rest.CreateGuildRoleResponse

  rpc :ModifyGuildRolePositions,
      Pylon.Discord.V1.Rest.ModifyGuildRolePositionsRequest,
      Pylon.Discord.V1.Rest.ModifyGuildRolePositionsResponse

  rpc :ModifyGuildRole,
      Pylon.Discord.V1.Rest.ModifyGuildRoleRequest,
      Pylon.Discord.V1.Rest.ModifyGuildRoleResponse

  rpc :DeleteGuildRole,
      Pylon.Discord.V1.Rest.DeleteGuildRoleRequest,
      Pylon.Discord.V1.Rest.DeleteGuildRoleResponse

  rpc :GetGuildPruneCount,
      Pylon.Discord.V1.Rest.GetGuildPruneCountRequest,
      Pylon.Discord.V1.Rest.GetGuildPruneCountResponse

  rpc :BeginGuildPrune,
      Pylon.Discord.V1.Rest.BeginGuildPruneRequest,
      Pylon.Discord.V1.Rest.BeginGuildPruneResponse

  rpc :GetGuildVoiceRegions,
      Pylon.Discord.V1.Rest.GetGuildVoiceRegionsRequest,
      Pylon.Discord.V1.Rest.GetGuildVoiceRegionsResponse

  rpc :GetGuildInvites,
      Pylon.Discord.V1.Rest.GetGuildInvitesRequest,
      Pylon.Discord.V1.Rest.GetGuildInvitesResponse

  rpc :ModifyChannel,
      Pylon.Discord.V1.Rest.ModifyChannelRequest,
      Pylon.Discord.V1.Rest.ModifyChannelResponse

  rpc :DeleteChannel,
      Pylon.Discord.V1.Rest.DeleteChannelRequest,
      Pylon.Discord.V1.Rest.DeleteChannelResponse

  rpc :CreateMessage,
      Pylon.Discord.V1.Rest.CreateMessageRequest,
      Pylon.Discord.V1.Rest.CreateMessageResponse

  rpc :CrosspostMessage,
      Pylon.Discord.V1.Rest.CrosspostMessageRequest,
      Pylon.Discord.V1.Rest.CrosspostMessageResponse

  rpc :CreateReaction,
      Pylon.Discord.V1.Rest.CreateReactionRequest,
      Pylon.Discord.V1.Rest.CreateReactionResponse

  rpc :DeleteOwnReaction,
      Pylon.Discord.V1.Rest.DeleteOwnReactionRequest,
      Pylon.Discord.V1.Rest.DeleteOwnReactionResponse

  rpc :DeleteUserReaction,
      Pylon.Discord.V1.Rest.DeleteUserReactionRequest,
      Pylon.Discord.V1.Rest.DeleteUserReactionResponse

  rpc :DeleteAllReactions,
      Pylon.Discord.V1.Rest.DeleteAllReactionsRequest,
      Pylon.Discord.V1.Rest.DeleteAllReactionsResponse

  rpc :DeleteAllReactionsForEmoji,
      Pylon.Discord.V1.Rest.DeleteAllReactionsForEmojiRequest,
      Pylon.Discord.V1.Rest.DeleteAllReactionsForEmojiResponse

  rpc :EditMessage,
      Pylon.Discord.V1.Rest.EditMessageRequest,
      Pylon.Discord.V1.Rest.EditMessageResponse

  rpc :DeleteMessage,
      Pylon.Discord.V1.Rest.DeleteMessageRequest,
      Pylon.Discord.V1.Rest.DeleteMessageResponse

  rpc :BulkDeleteMessages,
      Pylon.Discord.V1.Rest.BulkDeleteMessagesRequest,
      Pylon.Discord.V1.Rest.BulkDeleteMessagesResponse

  rpc :EditChannelPermissions,
      Pylon.Discord.V1.Rest.EditChannelPermissionsRequest,
      Pylon.Discord.V1.Rest.EditChannelPermissionsResponse

  rpc :GetChannelInvites,
      Pylon.Discord.V1.Rest.GetChannelInvitesRequest,
      Pylon.Discord.V1.Rest.GetChannelInvitesResponse

  rpc :CreateChannelInvite,
      Pylon.Discord.V1.Rest.CreateChannelInviteRequest,
      Pylon.Discord.V1.Rest.CreateChannelInviteResponse

  rpc :DeleteChannelPermission,
      Pylon.Discord.V1.Rest.DeleteChannelPermissionRequest,
      Pylon.Discord.V1.Rest.DeleteChannelPermissionResponse

  rpc :FollowNewsChannel,
      Pylon.Discord.V1.Rest.FollowNewsChannelRequest,
      Pylon.Discord.V1.Rest.FollowNewsChannelResponse

  rpc :TriggerTypingIndicator,
      Pylon.Discord.V1.Rest.TriggerTypingIndicatorRequest,
      Pylon.Discord.V1.Rest.TriggerTypingIndicatorResponse

  rpc :GetPinnedMessages,
      Pylon.Discord.V1.Rest.GetPinnedMessagesRequest,
      Pylon.Discord.V1.Rest.GetPinnedMessagesResponse

  rpc :AddPinnedChannelMessage,
      Pylon.Discord.V1.Rest.AddPinnedChannelMessageRequest,
      Pylon.Discord.V1.Rest.AddPinnedChannelMessageResponse

  rpc :DeletePinnedChannelMessage,
      Pylon.Discord.V1.Rest.DeletePinnedChannelMessageRequest,
      Pylon.Discord.V1.Rest.DeletePinnedChannelMessageResponse

  rpc :ListGuildEmojis,
      Pylon.Discord.V1.Rest.ListGuildEmojisRequest,
      Pylon.Discord.V1.Rest.ListGuildEmojisResponse

  rpc :GetGuildEmoji,
      Pylon.Discord.V1.Rest.GetGuildEmojiRequest,
      Pylon.Discord.V1.Rest.GetGuildEmojiResponse

  rpc :CreateGuildEmoji,
      Pylon.Discord.V1.Rest.CreateGuildEmojiRequest,
      Pylon.Discord.V1.Rest.CreateGuildEmojiResponse

  rpc :ModifyGuildEmoji,
      Pylon.Discord.V1.Rest.ModifyGuildEmojiRequest,
      Pylon.Discord.V1.Rest.ModifyGuildEmojiResponse

  rpc :DeleteGuildEmoji,
      Pylon.Discord.V1.Rest.DeleteGuildEmojiRequest,
      Pylon.Discord.V1.Rest.DeleteGuildEmojiResponse

  rpc :GetCurrentUser,
      Pylon.Discord.V1.Rest.GetCurrentUserRequest,
      Pylon.Discord.V1.Rest.GetCurrentUserResponse

  rpc :GetUser, Pylon.Discord.V1.Rest.GetUserRequest, Pylon.Discord.V1.Rest.GetUserResponse

  rpc :ModifyCurrentUser,
      Pylon.Discord.V1.Rest.ModifyCurrentUserRequest,
      Pylon.Discord.V1.Rest.ModifyCurrentUserResponse

  rpc :LeaveGuild,
      Pylon.Discord.V1.Rest.LeaveGuildRequest,
      Pylon.Discord.V1.Rest.LeaveGuildResponse

  rpc :CreateDm, Pylon.Discord.V1.Rest.CreateDmRequest, Pylon.Discord.V1.Rest.CreateDmResponse
end

defmodule Pylon.Gateway.V1.Service.GatewayRest.Stub do
  @moduledoc false
  use GRPC.Stub, service: Pylon.Gateway.V1.Service.GatewayRest.Service
end
