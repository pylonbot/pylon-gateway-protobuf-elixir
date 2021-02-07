defmodule Pylon.Gateway.V1.Service.Gateway.Service do
  @moduledoc false
  use GRPC.Service, name: "pylon.gateway.v1.service.Gateway"

  rpc :UpdateVoiceState,
      Pylon.Discord.V1.Gateway.UpdateVoiceStateRequest,
      Pylon.Discord.V1.Gateway.UpdateVoiceStateResponse

  rpc :UpdateStatus,
      Pylon.Discord.V1.Gateway.UpdateStatusRequest,
      Pylon.Discord.V1.Gateway.UpdateStatusResponse

  rpc :FindUserMutualGuilds,
      Pylon.Discord.V1.Gateway.GetUserMutualGuildsRequest,
      Pylon.Discord.V1.Gateway.GetUserMutualGuildsResponse

  rpc :FindEmoji,
      Pylon.Discord.V1.Gateway.FindEmojiRequest,
      Pylon.Discord.V1.Gateway.FindEmojiResponse
end

defmodule Pylon.Gateway.V1.Service.Gateway.Stub do
  @moduledoc false
  use GRPC.Stub, service: Pylon.Gateway.V1.Service.Gateway.Service
end
