defmodule Pylon.Gateway.V1.Service.GatewayCache.Service do
  @moduledoc false
  use GRPC.Service, name: "pylon.gateway.v1.service.GatewayCache"

  rpc :GetGuild, Pylon.Discord.V1.Cache.GetGuildRequest, Pylon.Discord.V1.Cache.GetGuildResponse

  rpc :ListGuildChannels,
      Pylon.Discord.V1.Cache.ListGuildChannelsRequest,
      Pylon.Discord.V1.Cache.ListGuildChannelsResponse

  rpc :GetGuildChannel,
      Pylon.Discord.V1.Cache.GetGuildChannelRequest,
      Pylon.Discord.V1.Cache.GetGuildChannelResponse

  rpc :ListGuildMembers,
      Pylon.Discord.V1.Cache.ListGuildMembersRequest,
      Pylon.Discord.V1.Cache.ListGuildMembersResponse

  rpc :GetGuildMember,
      Pylon.Discord.V1.Cache.GetGuildMemberRequest,
      Pylon.Discord.V1.Cache.GetGuildMemberResponse

  rpc :ListGuildRoles,
      Pylon.Discord.V1.Cache.ListGuildRolesRequest,
      Pylon.Discord.V1.Cache.ListGuildRolesResponse

  rpc :GetGuildRole,
      Pylon.Discord.V1.Cache.GetGuildRoleRequest,
      Pylon.Discord.V1.Cache.GetGuildRoleResponse

  rpc :ListGuildEmojis,
      Pylon.Discord.V1.Cache.ListGuildEmojisRequest,
      Pylon.Discord.V1.Cache.ListGuildEmojisResponse

  rpc :GetGuildEmoji,
      Pylon.Discord.V1.Cache.GetGuildEmojiRequest,
      Pylon.Discord.V1.Cache.GetGuildEmojiResponse

  rpc :GetUser, Pylon.Discord.V1.Cache.GetUserRequest, Pylon.Discord.V1.Cache.GetUserResponse

  rpc :GetGuildMemberVoiceState,
      Pylon.Discord.V1.Cache.GetGuildMemberVoiceStateRequest,
      Pylon.Discord.V1.Cache.GetGuildMemberVoiceStateResponse

  rpc :ListGuildChannelVoiceStates,
      Pylon.Discord.V1.Cache.ListGuildChannelVoiceStatesRequest,
      Pylon.Discord.V1.Cache.ListGuildChannelVoiceStatesResponse
end

defmodule Pylon.Gateway.V1.Service.GatewayCache.Stub do
  @moduledoc false
  use GRPC.Stub, service: Pylon.Gateway.V1.Service.GatewayCache.Service
end
