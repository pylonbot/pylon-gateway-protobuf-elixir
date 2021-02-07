defmodule Pylon.Discord.V1.Cache.GetGuildRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Cache.GetGuildResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild: Pylon.Discord.V1.Model.GuildData.t() | nil
        }
  defstruct [:guild]

  field :guild, 1, type: Pylon.Discord.V1.Model.GuildData
end

defmodule Pylon.Discord.V1.Cache.ListGuildChannelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Cache.ListGuildChannelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channels: [Pylon.Discord.V1.Model.ChannelData.t()]
        }
  defstruct [:channels]

  field :channels, 1, repeated: true, type: Pylon.Discord.V1.Model.ChannelData
end

defmodule Pylon.Discord.V1.Cache.GetGuildChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer
        }
  defstruct [:channel_id]

  field :channel_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Cache.GetGuildChannelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Pylon.Discord.V1.Model.ChannelData.t() | nil
        }
  defstruct [:channel]

  field :channel, 1, type: Pylon.Discord.V1.Model.ChannelData
end

defmodule Pylon.Discord.V1.Cache.ListGuildMembersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          after: non_neg_integer,
          limit: non_neg_integer
        }
  defstruct [:after, :limit]

  field :after, 1, type: :fixed64
  field :limit, 2, type: :uint32
end

defmodule Pylon.Discord.V1.Cache.ListGuildMembersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          members: [Pylon.Discord.V1.Model.MemberData.t()]
        }
  defstruct [:members]

  field :members, 1, repeated: true, type: Pylon.Discord.V1.Model.MemberData
end

defmodule Pylon.Discord.V1.Cache.GetGuildMemberRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer
        }
  defstruct [:user_id]

  field :user_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Cache.GetGuildMemberResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          member: Pylon.Discord.V1.Model.MemberData.t() | nil
        }
  defstruct [:member]

  field :member, 1, type: Pylon.Discord.V1.Model.MemberData
end

defmodule Pylon.Discord.V1.Cache.GetGuildMemberPresenceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer
        }
  defstruct [:user_id]

  field :user_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Cache.GetGuildMemberPresenceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          presence: Pylon.Discord.V1.Model.PresenceData.t() | nil
        }
  defstruct [:presence]

  field :presence, 1, type: Pylon.Discord.V1.Model.PresenceData
end

defmodule Pylon.Discord.V1.Cache.ListGuildRolesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Cache.ListGuildRolesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          roles: [Pylon.Discord.V1.Model.RoleData.t()]
        }
  defstruct [:roles]

  field :roles, 1, repeated: true, type: Pylon.Discord.V1.Model.RoleData
end

defmodule Pylon.Discord.V1.Cache.GetGuildRoleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role_id: non_neg_integer
        }
  defstruct [:role_id]

  field :role_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Cache.GetGuildRoleResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role: Pylon.Discord.V1.Model.RoleData.t() | nil
        }
  defstruct [:role]

  field :role, 1, type: Pylon.Discord.V1.Model.RoleData
end

defmodule Pylon.Discord.V1.Cache.ListGuildEmojisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Cache.ListGuildEmojisResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emojis: [Pylon.Discord.V1.Model.EmojiData.t()]
        }
  defstruct [:emojis]

  field :emojis, 1, repeated: true, type: Pylon.Discord.V1.Model.EmojiData
end

defmodule Pylon.Discord.V1.Cache.GetGuildEmojiRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emoji_id: non_neg_integer
        }
  defstruct [:emoji_id]

  field :emoji_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Cache.GetGuildEmojiResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emoji: Pylon.Discord.V1.Model.EmojiData.t() | nil
        }
  defstruct [:emoji]

  field :emoji, 1, type: Pylon.Discord.V1.Model.EmojiData
end

defmodule Pylon.Discord.V1.Cache.GetUserRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer
        }
  defstruct [:user_id]

  field :user_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Cache.GetUserResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user: Pylon.Discord.V1.Model.UserData.t() | nil
        }
  defstruct [:user]

  field :user, 1, type: Pylon.Discord.V1.Model.UserData
end

defmodule Pylon.Discord.V1.Cache.GetGuildMemberVoiceStateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer
        }
  defstruct [:user_id]

  field :user_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Cache.GetGuildMemberVoiceStateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          voice_state_data: Pylon.Discord.V1.Model.VoiceStateData.t() | nil
        }
  defstruct [:voice_state_data]

  field :voice_state_data, 1, type: Pylon.Discord.V1.Model.VoiceStateData
end

defmodule Pylon.Discord.V1.Cache.ListGuildChannelVoiceStatesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer
        }
  defstruct [:channel_id]

  field :channel_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Cache.ListGuildChannelVoiceStatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          voice_states_data: [Pylon.Discord.V1.Model.VoiceStateData.t()]
        }
  defstruct [:voice_states_data]

  field :voice_states_data, 1, repeated: true, type: Pylon.Discord.V1.Model.VoiceStateData
end
