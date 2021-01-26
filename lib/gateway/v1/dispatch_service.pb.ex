defmodule Pylon.Gateway.V1.Service.GatewayDispatchStreaming.Service do
  @moduledoc false
  use GRPC.Service, name: "pylon.gateway.v1.service.GatewayDispatchStreaming"

  rpc :Event,
      stream(Pylon.Discord.V1.Event.EventEnvelope),
      stream(Pylon.Discord.V1.Event.EventEnvelopeAck)
end

defmodule Pylon.Gateway.V1.Service.GatewayDispatchStreaming.Stub do
  @moduledoc false
  use GRPC.Stub, service: Pylon.Gateway.V1.Service.GatewayDispatchStreaming.Service
end

defmodule Pylon.Gateway.V1.Service.GatewayDispatch.Service do
  @moduledoc false
  use GRPC.Service, name: "pylon.gateway.v1.service.GatewayDispatch"

  rpc :GuildCreate, Pylon.Discord.V1.Event.GuildCreateEvent, Pylon.Discord.V1.Event.EventResponse
  rpc :GuildUpdate, Pylon.Discord.V1.Event.GuildUpdateEvent, Pylon.Discord.V1.Event.EventResponse
  rpc :GuildDelete, Pylon.Discord.V1.Event.GuildDeleteEvent, Pylon.Discord.V1.Event.EventResponse

  rpc :PresenceUpdate,
      Pylon.Discord.V1.Event.PresenceUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :GuildMemberAdd,
      Pylon.Discord.V1.Event.GuildMemberAddEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :GuildMemberUpdate,
      Pylon.Discord.V1.Event.GuildMemberUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :GuildMemberRemove,
      Pylon.Discord.V1.Event.GuildMemberRemoveEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :ChannelCreate,
      Pylon.Discord.V1.Event.ChannelCreateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :ChannelUpdate,
      Pylon.Discord.V1.Event.ChannelUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :ChannelDelete,
      Pylon.Discord.V1.Event.ChannelDeleteEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :ChannelPinsUpdate,
      Pylon.Discord.V1.Event.ChannelPinsUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :GuildRoleCreate,
      Pylon.Discord.V1.Event.GuildRoleCreateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :GuildRoleUpdate,
      Pylon.Discord.V1.Event.GuildRoleUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :GuildRoleDelete,
      Pylon.Discord.V1.Event.GuildRoleDeleteEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :MessageCreate,
      Pylon.Discord.V1.Event.MessageCreateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :MessageUpdate,
      Pylon.Discord.V1.Event.MessageUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :MessageDelete,
      Pylon.Discord.V1.Event.MessageDeleteEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :MessageDeleteBulk,
      Pylon.Discord.V1.Event.MessageDeleteBulkEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :MessageReactionAdd,
      Pylon.Discord.V1.Event.MessageReactionAddEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :MessageReactionRemove,
      Pylon.Discord.V1.Event.MessageReactionRemoveEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :MessageReactionRemoveAll,
      Pylon.Discord.V1.Event.MessageReactionRemoveAllEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :MessageReactionRemoveEmoji,
      Pylon.Discord.V1.Event.MessageReactionRemoveEmojiEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :TypingStart, Pylon.Discord.V1.Event.TypingStartEvent, Pylon.Discord.V1.Event.EventResponse

  rpc :VoiceStateUpdate,
      Pylon.Discord.V1.Event.VoiceStateUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :VoiceServerUpdate,
      Pylon.Discord.V1.Event.VoiceServerUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :InviteCreate,
      Pylon.Discord.V1.Event.InviteCreateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :InviteDelete,
      Pylon.Discord.V1.Event.InviteDeleteEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :GuildBanAdd, Pylon.Discord.V1.Event.GuildBanAddEvent, Pylon.Discord.V1.Event.EventResponse

  rpc :GuildBanRemove,
      Pylon.Discord.V1.Event.GuildBanRemoveEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :GuildEmojisUpdate,
      Pylon.Discord.V1.Event.GuildEmojisUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :GuildIntegrationsUpdate,
      Pylon.Discord.V1.Event.GuildIntegrationsUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :WebhooksUpdate,
      Pylon.Discord.V1.Event.WebhooksUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :IntegrationCreate,
      Pylon.Discord.V1.Event.IntegrationCreateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :IntegrationUpdate,
      Pylon.Discord.V1.Event.IntegrationUpdateEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :IntegrationDelete,
      Pylon.Discord.V1.Event.IntegrationDeleteEvent,
      Pylon.Discord.V1.Event.EventResponse

  rpc :InteractionCreate,
      Pylon.Discord.V1.Event.InteractionCreateEvent,
      Pylon.Discord.V1.Event.InteractionResponse
end

defmodule Pylon.Gateway.V1.Service.GatewayDispatch.Stub do
  @moduledoc false
  use GRPC.Stub, service: Pylon.Gateway.V1.Service.GatewayDispatch.Service
end
