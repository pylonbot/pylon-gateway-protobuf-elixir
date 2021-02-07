defmodule Pylon.Discord.V1.Gateway.UpdateVoiceStateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: non_neg_integer,
          channel_id: non_neg_integer,
          self_mute: boolean,
          self_deaf: boolean
        }
  defstruct [:guild_id, :channel_id, :self_mute, :self_deaf]

  field :guild_id, 1, type: :fixed64
  field :channel_id, 2, type: :fixed64
  field :self_mute, 3, type: :bool
  field :self_deaf, 4, type: :bool
end

defmodule Pylon.Discord.V1.Gateway.UpdateVoiceStateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Gateway.UpdateStatusRequest.ActivityData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: non_neg_integer
        }
  defstruct [:name, :type]

  field :name, 1, type: :string
  field :type, 2, type: :uint32
end

defmodule Pylon.Discord.V1.Gateway.UpdateStatusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          shard_id: Google.Protobuf.UInt32Value.t() | nil,
          since: Google.Protobuf.Timestamp.t() | nil,
          activities: [Pylon.Discord.V1.Gateway.UpdateStatusRequest.ActivityData.t()],
          status: String.t(),
          afk: boolean
        }
  defstruct [:shard_id, :since, :activities, :status, :afk]

  field :shard_id, 1, type: Google.Protobuf.UInt32Value
  field :since, 2, type: Google.Protobuf.Timestamp

  field :activities, 3,
    repeated: true,
    type: Pylon.Discord.V1.Gateway.UpdateStatusRequest.ActivityData

  field :status, 4, type: :string
  field :afk, 5, type: :bool
end

defmodule Pylon.Discord.V1.Gateway.UpdateStatusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Gateway.GetUserMutualGuildsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer
        }
  defstruct [:user_id]

  field :user_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Gateway.GetUserMutualGuildsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guilds: [Pylon.Discord.V1.Model.GuildData.t()]
        }
  defstruct [:guilds]

  field :guilds, 1, repeated: true, type: Pylon.Discord.V1.Model.GuildData
end

defmodule Pylon.Discord.V1.Gateway.FindEmojiRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emoji_id: non_neg_integer
        }
  defstruct [:emoji_id]

  field :emoji_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Gateway.FindEmojiResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emoji: Pylon.Discord.V1.Model.EmojiData.t() | nil
        }
  defstruct [:emoji]

  field :emoji, 1, type: Pylon.Discord.V1.Model.EmojiData
end
