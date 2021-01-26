defmodule Pylon.Discord.V1.Rest.RestError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: non_neg_integer,
          code: non_neg_integer,
          message: String.t()
        }
  defstruct [:status, :code, :message]

  field :status, 1, type: :uint32
  field :code, 2, type: :uint32
  field :message, 3, type: :string
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: Google.Protobuf.StringValue.t() | nil,
          region: Google.Protobuf.StringValue.t() | nil,
          verification_level: Google.Protobuf.UInt32Value.t() | nil,
          default_message_notifications: Google.Protobuf.UInt32Value.t() | nil,
          explicit_content_filter: Google.Protobuf.UInt32Value.t() | nil,
          afk_channel_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          afk_timeout: Google.Protobuf.UInt32Value.t() | nil,
          icon: Google.Protobuf.BytesValue.t() | nil,
          owner_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          splash: Google.Protobuf.BytesValue.t() | nil,
          banner: Google.Protobuf.BytesValue.t() | nil,
          system_channel_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          rules_channel_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          public_updates_channel_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          preferred_locale: Google.Protobuf.StringValue.t() | nil,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [
    :name,
    :region,
    :verification_level,
    :default_message_notifications,
    :explicit_content_filter,
    :afk_channel_id,
    :afk_timeout,
    :icon,
    :owner_id,
    :splash,
    :banner,
    :system_channel_id,
    :rules_channel_id,
    :public_updates_channel_id,
    :preferred_locale,
    :audit_log_reason
  ]

  field :name, 1, type: Google.Protobuf.StringValue
  field :region, 2, type: Google.Protobuf.StringValue
  field :verification_level, 3, type: Google.Protobuf.UInt32Value
  field :default_message_notifications, 4, type: Google.Protobuf.UInt32Value
  field :explicit_content_filter, 5, type: Google.Protobuf.UInt32Value
  field :afk_channel_id, 6, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :afk_timeout, 7, type: Google.Protobuf.UInt32Value
  field :icon, 8, type: Google.Protobuf.BytesValue
  field :owner_id, 9, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :splash, 10, type: Google.Protobuf.BytesValue
  field :banner, 11, type: Google.Protobuf.BytesValue
  field :system_channel_id, 12, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :rules_channel_id, 13, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :public_updates_channel_id, 14, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :preferred_locale, 15, type: Google.Protobuf.StringValue
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild: Pylon.Discord.V1.Model.GuildData.t() | nil
        }
  defstruct [:guild]

  field :guild, 1, type: Pylon.Discord.V1.Model.GuildData
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.ModifyGuildResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.CreateGuildChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Pylon.Discord.V1.Model.ChannelData.ChannelType.t(),
          topic: Google.Protobuf.StringValue.t() | nil,
          bitrate: Google.Protobuf.UInt32Value.t() | nil,
          user_limit: Google.Protobuf.UInt32Value.t() | nil,
          rate_limit_per_user: Google.Protobuf.UInt32Value.t() | nil,
          position: Google.Protobuf.UInt32Value.t() | nil,
          permission_overwrites: [
            Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData.t()
          ],
          parent_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          nsfw: Google.Protobuf.BoolValue.t() | nil,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [
    :name,
    :type,
    :topic,
    :bitrate,
    :user_limit,
    :rate_limit_per_user,
    :position,
    :permission_overwrites,
    :parent_id,
    :nsfw,
    :audit_log_reason
  ]

  field :name, 1, type: :string
  field :type, 2, type: Pylon.Discord.V1.Model.ChannelData.ChannelType, enum: true
  field :topic, 3, type: Google.Protobuf.StringValue
  field :bitrate, 4, type: Google.Protobuf.UInt32Value
  field :user_limit, 5, type: Google.Protobuf.UInt32Value
  field :rate_limit_per_user, 6, type: Google.Protobuf.UInt32Value
  field :position, 7, type: Google.Protobuf.UInt32Value

  field :permission_overwrites, 8,
    repeated: true,
    type: Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData

  field :parent_id, 9, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :nsfw, 10, type: Google.Protobuf.BoolValue
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.CreateGuildChannelResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Pylon.Discord.V1.Model.ChannelData.t() | nil
        }
  defstruct [:channel]

  field :channel, 1, type: Pylon.Discord.V1.Model.ChannelData
end

defmodule Pylon.Discord.V1.Rest.CreateGuildChannelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.CreateGuildChannelResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildChannelPositionsRequest.ChannelPosition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          position: non_neg_integer
        }
  defstruct [:id, :position]

  field :id, 1, type: :fixed64
  field :position, 2, type: :uint32
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildChannelPositionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_positions: [
            Pylon.Discord.V1.Rest.ModifyGuildChannelPositionsRequest.ChannelPosition.t()
          ]
        }
  defstruct [:channel_positions]

  field :channel_positions, 1,
    repeated: true,
    type: Pylon.Discord.V1.Rest.ModifyGuildChannelPositionsRequest.ChannelPosition
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildChannelPositionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.AddGuildMemberRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer,
          access_token: String.t(),
          nick: Google.Protobuf.StringValue.t() | nil,
          roles: Pylon.Discord.V1.Model.SnowflakeListValue.t() | nil,
          mute: Google.Protobuf.BoolValue.t() | nil,
          deaf: Google.Protobuf.BoolValue.t() | nil
        }
  defstruct [:user_id, :access_token, :nick, :roles, :mute, :deaf]

  field :user_id, 1, type: :fixed64
  field :access_token, 2, type: :string
  field :nick, 3, type: Google.Protobuf.StringValue
  field :roles, 4, type: Pylon.Discord.V1.Model.SnowflakeListValue
  field :mute, 5, type: Google.Protobuf.BoolValue
  field :deaf, 6, type: Google.Protobuf.BoolValue
end

defmodule Pylon.Discord.V1.Rest.AddGuildMemberResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          added: boolean
        }
  defstruct [:added]

  field :added, 1, type: :bool
end

defmodule Pylon.Discord.V1.Rest.AddGuildMemberResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.AddGuildMemberResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildMemberRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer,
          nick: Google.Protobuf.StringValue.t() | nil,
          roles: Pylon.Discord.V1.Model.SnowflakeListValue.t() | nil,
          mute: Google.Protobuf.BoolValue.t() | nil,
          deaf: Google.Protobuf.BoolValue.t() | nil,
          channel_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:user_id, :nick, :roles, :mute, :deaf, :channel_id, :audit_log_reason]

  field :user_id, 1, type: :fixed64
  field :nick, 2, type: Google.Protobuf.StringValue
  field :roles, 3, type: Pylon.Discord.V1.Model.SnowflakeListValue
  field :mute, 4, type: Google.Protobuf.BoolValue
  field :deaf, 5, type: Google.Protobuf.BoolValue
  field :channel_id, 6, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildMemberResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.ModifyCurrentUserNickRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          nick: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:nick]

  field :nick, 1, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.ModifyCurrentUserNickResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.AddGuildMemberRoleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer,
          role_id: non_neg_integer,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:user_id, :role_id, :audit_log_reason]

  field :user_id, 1, type: :fixed64
  field :role_id, 2, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.AddGuildMemberRoleResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.RemoveGuildMemberRoleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer,
          role_id: non_neg_integer,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:user_id, :role_id, :audit_log_reason]

  field :user_id, 1, type: :fixed64
  field :role_id, 2, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.RemoveGuildMemberRoleResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.RemoveGuildMemberRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:user_id, :audit_log_reason]

  field :user_id, 1, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.RemoveGuildMemberResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.GetGuildBansRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer
        }
  defstruct [:user_id]

  field :user_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.GetGuildBansResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bans: [Pylon.Discord.V1.Model.GuildBanData.t()]
        }
  defstruct [:bans]

  field :bans, 1, repeated: true, type: Pylon.Discord.V1.Model.GuildBanData
end

defmodule Pylon.Discord.V1.Rest.GetGuildBansResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.GetGuildBansResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.GetGuildBanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer
        }
  defstruct [:user_id]

  field :user_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.GetGuildBanResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ban: Pylon.Discord.V1.Model.GuildBanData.t() | nil
        }
  defstruct [:ban]

  field :ban, 1, type: Pylon.Discord.V1.Model.GuildBanData
end

defmodule Pylon.Discord.V1.Rest.GetGuildBanResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.GetGuildBanResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.CreateGuildBanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer,
          delete_message_days: Google.Protobuf.UInt32Value.t() | nil,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:user_id, :delete_message_days, :audit_log_reason]

  field :user_id, 1, type: :fixed64
  field :delete_message_days, 2, type: Google.Protobuf.UInt32Value
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.CreateGuildBanResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.RemoveGuildBanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:user_id, :audit_log_reason]

  field :user_id, 1, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.RemoveGuildBanResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.CreateGuildRoleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: Google.Protobuf.StringValue.t() | nil,
          permissions: Pylon.Discord.V1.Model.PermissionsValue.t() | nil,
          color: Google.Protobuf.UInt32Value.t() | nil,
          hoist: Google.Protobuf.BoolValue.t() | nil,
          mentionable: Google.Protobuf.BoolValue.t() | nil,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:name, :permissions, :color, :hoist, :mentionable, :audit_log_reason]

  field :name, 1, type: Google.Protobuf.StringValue
  field :permissions, 2, type: Pylon.Discord.V1.Model.PermissionsValue
  field :color, 3, type: Google.Protobuf.UInt32Value
  field :hoist, 4, type: Google.Protobuf.BoolValue
  field :mentionable, 5, type: Google.Protobuf.BoolValue
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.CreateGuildRoleResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role: Pylon.Discord.V1.Model.RoleData.t() | nil
        }
  defstruct [:role]

  field :role, 1, type: Pylon.Discord.V1.Model.RoleData
end

defmodule Pylon.Discord.V1.Rest.CreateGuildRoleResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.CreateGuildRoleResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildRolePositionsRequest.RolePosition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          position: non_neg_integer
        }
  defstruct [:id, :position]

  field :id, 1, type: :fixed64
  field :position, 2, type: :uint32
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildRolePositionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role_positions: [Pylon.Discord.V1.Rest.ModifyGuildRolePositionsRequest.RolePosition.t()]
        }
  defstruct [:role_positions]

  field :role_positions, 1,
    repeated: true,
    type: Pylon.Discord.V1.Rest.ModifyGuildRolePositionsRequest.RolePosition
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildRolePositionsResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          roles: [Pylon.Discord.V1.Model.RoleData.t()]
        }
  defstruct [:roles]

  field :roles, 1, repeated: true, type: Pylon.Discord.V1.Model.RoleData
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildRolePositionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.ModifyGuildRolePositionsResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildRoleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role_id: non_neg_integer,
          name: Google.Protobuf.StringValue.t() | nil,
          permissions: Pylon.Discord.V1.Model.PermissionsValue.t() | nil,
          color: Google.Protobuf.UInt32Value.t() | nil,
          hoist: Google.Protobuf.BoolValue.t() | nil,
          mentionable: Google.Protobuf.BoolValue.t() | nil,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:role_id, :name, :permissions, :color, :hoist, :mentionable, :audit_log_reason]

  field :role_id, 1, type: :fixed64
  field :name, 2, type: Google.Protobuf.StringValue
  field :permissions, 3, type: Pylon.Discord.V1.Model.PermissionsValue
  field :color, 4, type: Google.Protobuf.UInt32Value
  field :hoist, 5, type: Google.Protobuf.BoolValue
  field :mentionable, 6, type: Google.Protobuf.BoolValue
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildRoleResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role: Pylon.Discord.V1.Model.RoleData.t() | nil
        }
  defstruct [:role]

  field :role, 1, type: Pylon.Discord.V1.Model.RoleData
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildRoleResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.ModifyGuildRoleResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.DeleteGuildRoleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role_id: non_neg_integer,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:role_id, :audit_log_reason]

  field :role_id, 1, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.DeleteGuildRoleResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.GetGuildPruneCountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          days: Google.Protobuf.UInt32Value.t() | nil,
          include_roles: Pylon.Discord.V1.Model.SnowflakeListValue.t() | nil
        }
  defstruct [:days, :include_roles]

  field :days, 1, type: Google.Protobuf.UInt32Value
  field :include_roles, 2, type: Pylon.Discord.V1.Model.SnowflakeListValue
end

defmodule Pylon.Discord.V1.Rest.GetGuildPruneCountResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.BeginGuildPruneRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          days: Google.Protobuf.UInt32Value.t() | nil,
          include_roles: Pylon.Discord.V1.Model.SnowflakeListValue.t() | nil,
          compute_prune_count: Google.Protobuf.BoolValue.t() | nil,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:days, :include_roles, :compute_prune_count, :audit_log_reason]

  field :days, 1, type: Google.Protobuf.UInt32Value
  field :include_roles, 2, type: Pylon.Discord.V1.Model.SnowflakeListValue
  field :compute_prune_count, 3, type: Google.Protobuf.BoolValue
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.BeginGuildPruneResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.GetGuildVoiceRegionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Rest.GetGuildVoiceRegionsResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          regions: [String.t()]
        }
  defstruct [:regions]

  field :regions, 1, repeated: true, type: :string
end

defmodule Pylon.Discord.V1.Rest.GetGuildVoiceRegionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.GetGuildVoiceRegionsResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.GetGuildInvitesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Rest.GetGuildInvitesResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invites: [Pylon.Discord.V1.Model.InviteData.t()]
        }
  defstruct [:invites]

  field :invites, 1, repeated: true, type: Pylon.Discord.V1.Model.InviteData
end

defmodule Pylon.Discord.V1.Rest.GetGuildInvitesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.GetGuildInvitesResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.ModifyChannelRequest.ChannelPermissionOverwritesValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData.t()]
        }
  defstruct [:values]

  field :values, 1,
    repeated: true,
    type: Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData
end

defmodule Pylon.Discord.V1.Rest.ModifyChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          name: Google.Protobuf.StringValue.t() | nil,
          type: Pylon.Discord.V1.Model.ChannelData.ChannelType.t(),
          position: Google.Protobuf.UInt32Value.t() | nil,
          topic: Google.Protobuf.StringValue.t() | nil,
          nsfw: Google.Protobuf.BoolValue.t() | nil,
          rate_limit_per_user: Google.Protobuf.UInt32Value.t() | nil,
          bitrate: Google.Protobuf.UInt32Value.t() | nil,
          user_limit: Google.Protobuf.UInt32Value.t() | nil,
          permission_overwrites:
            Pylon.Discord.V1.Rest.ModifyChannelRequest.ChannelPermissionOverwritesValue.t() | nil,
          parent_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [
    :channel_id,
    :name,
    :type,
    :position,
    :topic,
    :nsfw,
    :rate_limit_per_user,
    :bitrate,
    :user_limit,
    :permission_overwrites,
    :parent_id,
    :audit_log_reason
  ]

  field :channel_id, 1, type: :fixed64
  field :name, 2, type: Google.Protobuf.StringValue
  field :type, 3, type: Pylon.Discord.V1.Model.ChannelData.ChannelType, enum: true
  field :position, 4, type: Google.Protobuf.UInt32Value
  field :topic, 5, type: Google.Protobuf.StringValue
  field :nsfw, 6, type: Google.Protobuf.BoolValue
  field :rate_limit_per_user, 7, type: Google.Protobuf.UInt32Value
  field :bitrate, 8, type: Google.Protobuf.UInt32Value
  field :user_limit, 9, type: Google.Protobuf.UInt32Value

  field :permission_overwrites, 10,
    type: Pylon.Discord.V1.Rest.ModifyChannelRequest.ChannelPermissionOverwritesValue

  field :parent_id, 11, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.ModifyChannelResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Pylon.Discord.V1.Model.ChannelData.t() | nil
        }
  defstruct [:channel]

  field :channel, 1, type: Pylon.Discord.V1.Model.ChannelData
end

defmodule Pylon.Discord.V1.Rest.ModifyChannelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.ModifyChannelResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.DeleteChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:channel_id, :audit_log_reason]

  field :channel_id, 1, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.DeleteChannelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.CreateMessageRequest.AllowedMentions.AllowedMentionTypes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          roles: boolean,
          users: boolean,
          everyone: boolean
        }
  defstruct [:roles, :users, :everyone]

  field :roles, 1, type: :bool
  field :users, 2, type: :bool
  field :everyone, 3, type: :bool
end

defmodule Pylon.Discord.V1.Rest.CreateMessageRequest.AllowedMentions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parse:
            Pylon.Discord.V1.Rest.CreateMessageRequest.AllowedMentions.AllowedMentionTypes.t()
            | nil,
          roles: Pylon.Discord.V1.Model.SnowflakeListValue.t() | nil,
          users: Pylon.Discord.V1.Model.SnowflakeListValue.t() | nil
        }
  defstruct [:parse, :roles, :users]

  field :parse, 1,
    type: Pylon.Discord.V1.Rest.CreateMessageRequest.AllowedMentions.AllowedMentionTypes

  field :roles, 2, type: Pylon.Discord.V1.Model.SnowflakeListValue
  field :users, 3, type: Pylon.Discord.V1.Model.SnowflakeListValue
end

defmodule Pylon.Discord.V1.Rest.CreateMessageRequest.Attachment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          content: binary
        }
  defstruct [:name, :content]

  field :name, 1, type: :string
  field :content, 2, type: :bytes
end

defmodule Pylon.Discord.V1.Rest.CreateMessageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          content: String.t(),
          nonce: Google.Protobuf.StringValue.t() | nil,
          tts: Google.Protobuf.BoolValue.t() | nil,
          embed: Pylon.Discord.V1.Model.MessageData.MessageEmbedData.t() | nil,
          allowed_mentions: Pylon.Discord.V1.Rest.CreateMessageRequest.AllowedMentions.t() | nil,
          attachment: Pylon.Discord.V1.Rest.CreateMessageRequest.Attachment.t() | nil
        }
  defstruct [:channel_id, :content, :nonce, :tts, :embed, :allowed_mentions, :attachment]

  field :channel_id, 1, type: :fixed64
  field :content, 2, type: :string
  field :nonce, 3, type: Google.Protobuf.StringValue
  field :tts, 4, type: Google.Protobuf.BoolValue
  field :embed, 5, type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData
  field :allowed_mentions, 6, type: Pylon.Discord.V1.Rest.CreateMessageRequest.AllowedMentions
  field :attachment, 7, type: Pylon.Discord.V1.Rest.CreateMessageRequest.Attachment
end

defmodule Pylon.Discord.V1.Rest.CreateMessageResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: Pylon.Discord.V1.Model.MessageData.t() | nil
        }
  defstruct [:message]

  field :message, 1, type: Pylon.Discord.V1.Model.MessageData
end

defmodule Pylon.Discord.V1.Rest.CreateMessageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.CreateMessageResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.CrosspostMessageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer
        }
  defstruct [:channel_id, :message_id]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.CrosspostMessageResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: Pylon.Discord.V1.Model.MessageData.t() | nil
        }
  defstruct [:message]

  field :message, 1, type: Pylon.Discord.V1.Model.MessageData
end

defmodule Pylon.Discord.V1.Rest.CrosspostMessageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.CrosspostMessageResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.CreateReactionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          emoji: String.t()
        }
  defstruct [:channel_id, :message_id, :emoji]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
  field :emoji, 3, type: :string
end

defmodule Pylon.Discord.V1.Rest.CreateReactionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.DeleteOwnReactionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          emoji: String.t()
        }
  defstruct [:channel_id, :message_id, :emoji]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
  field :emoji, 3, type: :string
end

defmodule Pylon.Discord.V1.Rest.DeleteOwnReactionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.DeleteUserReactionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          emoji: String.t(),
          user_id: non_neg_integer
        }
  defstruct [:channel_id, :message_id, :emoji, :user_id]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
  field :emoji, 3, type: :string
  field :user_id, 4, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.DeleteUserReactionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.DeleteAllReactionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer
        }
  defstruct [:channel_id, :message_id]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.DeleteAllReactionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.DeleteAllReactionsForEmojiRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          emoji: String.t()
        }
  defstruct [:channel_id, :message_id, :emoji]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
  field :emoji, 3, type: :string
end

defmodule Pylon.Discord.V1.Rest.DeleteAllReactionsForEmojiResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.EditMessageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          content: Google.Protobuf.StringValue.t() | nil,
          embed: Pylon.Discord.V1.Model.MessageData.MessageEmbedData.t() | nil,
          flags: Google.Protobuf.UInt32Value.t() | nil
        }
  defstruct [:channel_id, :message_id, :content, :embed, :flags]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
  field :content, 3, type: Google.Protobuf.StringValue
  field :embed, 4, type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData
  field :flags, 5, type: Google.Protobuf.UInt32Value
end

defmodule Pylon.Discord.V1.Rest.EditMessageResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: Pylon.Discord.V1.Model.MessageData.t() | nil
        }
  defstruct [:message]

  field :message, 1, type: Pylon.Discord.V1.Model.MessageData
end

defmodule Pylon.Discord.V1.Rest.EditMessageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.EditMessageResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.DeleteMessageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:channel_id, :message_id, :audit_log_reason]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.DeleteMessageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.BulkDeleteMessagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_ids: [non_neg_integer],
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:channel_id, :message_ids, :audit_log_reason]

  field :channel_id, 1, type: :fixed64
  field :message_ids, 2, repeated: true, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.BulkDeleteMessagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.EditChannelPermissionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          overwrite_id: non_neg_integer,
          allow: non_neg_integer,
          deny: non_neg_integer,
          type:
            Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData.ChannelPermissionOverwriteType.t(),
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:channel_id, :overwrite_id, :allow, :deny, :type, :audit_log_reason]

  field :channel_id, 1, type: :fixed64
  field :overwrite_id, 2, type: :fixed64
  field :allow, 3, type: :uint64
  field :deny, 4, type: :uint64

  field :type, 5,
    type:
      Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData.ChannelPermissionOverwriteType,
    enum: true

  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.EditChannelPermissionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.GetChannelInvitesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer
        }
  defstruct [:channel_id]

  field :channel_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.GetChannelInvitesResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invites: [Pylon.Discord.V1.Model.InviteData.t()]
        }
  defstruct [:invites]

  field :invites, 1, repeated: true, type: Pylon.Discord.V1.Model.InviteData
end

defmodule Pylon.Discord.V1.Rest.GetChannelInvitesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.GetChannelInvitesResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.CreateChannelInviteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          max_age: Google.Protobuf.UInt32Value.t() | nil,
          max_uses: Google.Protobuf.UInt32Value.t() | nil,
          temporary: Google.Protobuf.BoolValue.t() | nil,
          unique: Google.Protobuf.BoolValue.t() | nil,
          target_user: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          target_user_type: Pylon.Discord.V1.Model.InviteData.InviteTargetUserType.t(),
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [
    :channel_id,
    :max_age,
    :max_uses,
    :temporary,
    :unique,
    :target_user,
    :target_user_type,
    :audit_log_reason
  ]

  field :channel_id, 1, type: :fixed64
  field :max_age, 2, type: Google.Protobuf.UInt32Value
  field :max_uses, 3, type: Google.Protobuf.UInt32Value
  field :temporary, 4, type: Google.Protobuf.BoolValue
  field :unique, 5, type: Google.Protobuf.BoolValue
  field :target_user, 6, type: Pylon.Discord.V1.Model.SnowflakeValue

  field :target_user_type, 7,
    type: Pylon.Discord.V1.Model.InviteData.InviteTargetUserType,
    enum: true

  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.CreateChannelInviteResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invite: Pylon.Discord.V1.Model.InviteData.t() | nil
        }
  defstruct [:invite]

  field :invite, 1, type: Pylon.Discord.V1.Model.InviteData
end

defmodule Pylon.Discord.V1.Rest.CreateChannelInviteResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.CreateChannelInviteResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.DeleteChannelPermissionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          overwrite_id: non_neg_integer,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:channel_id, :overwrite_id, :audit_log_reason]

  field :channel_id, 1, type: :fixed64
  field :overwrite_id, 2, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.DeleteChannelPermissionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.FollowNewsChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          webhook_channel_id: non_neg_integer
        }
  defstruct [:channel_id, :webhook_channel_id]

  field :channel_id, 1, type: :fixed64
  field :webhook_channel_id, 2, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.FollowNewsChannelResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          webhook_id: non_neg_integer
        }
  defstruct [:channel_id, :webhook_id]

  field :channel_id, 1, type: :fixed64
  field :webhook_id, 2, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.FollowNewsChannelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.FollowNewsChannelResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.TriggerTypingIndicatorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer
        }
  defstruct [:channel_id]

  field :channel_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.TriggerTypingIndicatorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.GetPinnedMessagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer
        }
  defstruct [:channel_id]

  field :channel_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.GetPinnedMessagesResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          messages: [Pylon.Discord.V1.Model.MessageData.t()]
        }
  defstruct [:messages]

  field :messages, 1, repeated: true, type: Pylon.Discord.V1.Model.MessageData
end

defmodule Pylon.Discord.V1.Rest.GetPinnedMessagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.GetPinnedMessagesResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.AddPinnedChannelMessageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:channel_id, :message_id, :audit_log_reason]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.AddPinnedChannelMessageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.DeletePinnedChannelMessageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:channel_id, :message_id, :audit_log_reason]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.DeletePinnedChannelMessageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.ListGuildEmojisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Rest.ListGuildEmojisResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emojis: [Pylon.Discord.V1.Model.EmojiData.t()]
        }
  defstruct [:emojis]

  field :emojis, 1, repeated: true, type: Pylon.Discord.V1.Model.EmojiData
end

defmodule Pylon.Discord.V1.Rest.ListGuildEmojisResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.ListGuildEmojisResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.GetGuildEmojiRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emoji_id: non_neg_integer
        }
  defstruct [:emoji_id]

  field :emoji_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.GetGuildEmojiResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emoji: Pylon.Discord.V1.Model.EmojiData.t() | nil
        }
  defstruct [:emoji]

  field :emoji, 1, type: Pylon.Discord.V1.Model.EmojiData
end

defmodule Pylon.Discord.V1.Rest.GetGuildEmojiResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.GetGuildEmojiResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.CreateGuildEmojiRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          image: Google.Protobuf.BytesValue.t() | nil,
          roles: Pylon.Discord.V1.Model.SnowflakeListValue.t() | nil,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:name, :image, :roles, :audit_log_reason]

  field :name, 1, type: :string
  field :image, 2, type: Google.Protobuf.BytesValue
  field :roles, 3, type: Pylon.Discord.V1.Model.SnowflakeListValue
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.CreateGuildEmojiResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emoji: Pylon.Discord.V1.Model.EmojiData.t() | nil
        }
  defstruct [:emoji]

  field :emoji, 1, type: Pylon.Discord.V1.Model.EmojiData
end

defmodule Pylon.Discord.V1.Rest.CreateGuildEmojiResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.CreateGuildEmojiResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildEmojiRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emoji_id: non_neg_integer,
          name: Google.Protobuf.StringValue.t() | nil,
          roles: Pylon.Discord.V1.Model.SnowflakeListValue.t() | nil,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:emoji_id, :name, :roles, :audit_log_reason]

  field :emoji_id, 1, type: :fixed64
  field :name, 2, type: Google.Protobuf.StringValue
  field :roles, 3, type: Pylon.Discord.V1.Model.SnowflakeListValue
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildEmojiResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emoji: Pylon.Discord.V1.Model.EmojiData.t() | nil
        }
  defstruct [:emoji]

  field :emoji, 1, type: Pylon.Discord.V1.Model.EmojiData
end

defmodule Pylon.Discord.V1.Rest.ModifyGuildEmojiResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.ModifyGuildEmojiResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.DeleteGuildEmojiRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emoji_id: non_neg_integer,
          audit_log_reason: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:emoji_id, :audit_log_reason]

  field :emoji_id, 1, type: :fixed64
  field :audit_log_reason, 100, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Rest.DeleteGuildEmojiResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.GetCurrentUserRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Rest.GetCurrentUserResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user: Pylon.Discord.V1.Model.UserData.t() | nil
        }
  defstruct [:user]

  field :user, 1, type: Pylon.Discord.V1.Model.UserData
end

defmodule Pylon.Discord.V1.Rest.GetCurrentUserResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.GetCurrentUserResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.GetUserRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer
        }
  defstruct [:user_id]

  field :user_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.GetUserResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user: Pylon.Discord.V1.Model.UserData.t() | nil
        }
  defstruct [:user]

  field :user, 1, type: Pylon.Discord.V1.Model.UserData
end

defmodule Pylon.Discord.V1.Rest.GetUserResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.GetUserResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.ModifyCurrentUserRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          username: Google.Protobuf.StringValue.t() | nil,
          avatar: Google.Protobuf.BytesValue.t() | nil
        }
  defstruct [:username, :avatar]

  field :username, 1, type: Google.Protobuf.StringValue
  field :avatar, 2, type: Google.Protobuf.BytesValue
end

defmodule Pylon.Discord.V1.Rest.ModifyCurrentUserResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user: Pylon.Discord.V1.Model.UserData.t() | nil
        }
  defstruct [:user]

  field :user, 1, type: Pylon.Discord.V1.Model.UserData
end

defmodule Pylon.Discord.V1.Rest.ModifyCurrentUserResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.ModifyCurrentUserResponse.Data, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.LeaveGuildRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Rest.LeaveGuildResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Google.Protobuf.Empty, oneof: 0
end

defmodule Pylon.Discord.V1.Rest.CreateDmRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recipient_id: non_neg_integer
        }
  defstruct [:recipient_id]

  field :recipient_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Rest.CreateDmResponse.Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Pylon.Discord.V1.Model.ChannelData.t() | nil
        }
  defstruct [:channel]

  field :channel, 1, type: Pylon.Discord.V1.Model.ChannelData
end

defmodule Pylon.Discord.V1.Rest.CreateDmResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof :response, 0
  field :error, 1, type: Pylon.Discord.V1.Rest.RestError, oneof: 0
  field :data, 2, type: Pylon.Discord.V1.Rest.CreateDmResponse.Data, oneof: 0
end
