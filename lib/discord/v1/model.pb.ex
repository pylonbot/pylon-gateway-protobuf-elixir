defmodule Pylon.Discord.V1.Model.ChannelData.ChannelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN
          | :GUILD_TEXT
          | :DM
          | :GUILD_VOICE
          | :GROUP_DM
          | :GUILD_CATEGORY
          | :GUILD_NEWS
          | :GUILD_STORE

  field :UNKNOWN, 0
  field :GUILD_TEXT, 1
  field :DM, 2
  field :GUILD_VOICE, 3
  field :GROUP_DM, 4
  field :GUILD_CATEGORY, 5
  field :GUILD_NEWS, 6
  field :GUILD_STORE, 7
end

defmodule Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData.ChannelPermissionOverwriteType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNKNOWN | :ROLE | :MEMBER

  field :UNKNOWN, 0
  field :ROLE, 1
  field :MEMBER, 2
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN
          | :DEFAULT
          | :RECIPIENT_ADD
          | :RECIPIENT_REMOVE
          | :CALL
          | :CHANNEL_NAME_CHANGE
          | :CHANNEL_ICON_CHANGE
          | :CHANNEL_PINNED_MESSAGE
          | :GUILD_MEMBER_JOIN
          | :USER_PREMIUM_GUILD_SUBSCRIPTION
          | :USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_1
          | :USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_2
          | :USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_3
          | :CHANNEL_FOLLOW_ADD
          | :GUILD_DISCOVERY_DISQUALIFIED
          | :GUILD_DISCOVERY_REQUALIFIED

  field :UNKNOWN, 0
  field :DEFAULT, 1
  field :RECIPIENT_ADD, 2
  field :RECIPIENT_REMOVE, 3
  field :CALL, 4
  field :CHANNEL_NAME_CHANGE, 5
  field :CHANNEL_ICON_CHANGE, 6
  field :CHANNEL_PINNED_MESSAGE, 7
  field :GUILD_MEMBER_JOIN, 8
  field :USER_PREMIUM_GUILD_SUBSCRIPTION, 9
  field :USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_1, 10
  field :USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_2, 11
  field :USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_3, 12
  field :CHANNEL_FOLLOW_ADD, 13
  field :GUILD_DISCOVERY_DISQUALIFIED, 15
  field :GUILD_DISCOVERY_REQUALIFIED, 16
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNKNOWN | :RICH | :IMAGE | :VIDEO | :GIFV | :ARTICLE | :LINK

  field :UNKNOWN, 0
  field :RICH, 1
  field :IMAGE, 2
  field :VIDEO, 3
  field :GIFV, 4
  field :ARTICLE, 5
  field :LINK, 6
end

defmodule Pylon.Discord.V1.Model.WebhookData.WebhookType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :INCOMING | :CHANNEL_FOLLOWER

  field :INCOMING, 0
  field :CHANNEL_FOLLOWER, 1
end

defmodule Pylon.Discord.V1.Model.InviteData.InviteTargetUserType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNKNOWN | :STREAM

  field :UNKNOWN, 0
  field :STREAM, 1
end

defmodule Pylon.Discord.V1.Model.SnowflakeValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: non_neg_integer
        }
  defstruct [:value]

  field :value, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Model.SnowflakeListValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [non_neg_integer]
        }
  defstruct [:values]

  field :values, 1, repeated: true, type: :fixed64
end

defmodule Pylon.Discord.V1.Model.PermissionsValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: non_neg_integer
        }
  defstruct [:value]

  field :value, 1, type: :uint64
end

defmodule Pylon.Discord.V1.Model.GuildData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          name: String.t(),
          icon: Google.Protobuf.StringValue.t() | nil,
          region: String.t(),
          afk_channel_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          owner_id: non_neg_integer,
          joined_at: Google.Protobuf.Timestamp.t() | nil,
          splash: Google.Protobuf.StringValue.t() | nil,
          discovery_splash: Google.Protobuf.StringValue.t() | nil,
          afk_timeout: non_neg_integer,
          member_count: non_neg_integer,
          verification_level: non_neg_integer,
          default_message_notifications: non_neg_integer,
          explicit_content_filter: non_neg_integer,
          features: [String.t()],
          mfa_level: non_neg_integer,
          widget_enabled: boolean,
          widget_channel_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          system_channel_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          vanity_url_code: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          banner: Google.Protobuf.StringValue.t() | nil,
          premium_tier: non_neg_integer,
          premium_subscription_count: non_neg_integer,
          unavailable: boolean
        }
  defstruct [
    :id,
    :name,
    :icon,
    :region,
    :afk_channel_id,
    :owner_id,
    :joined_at,
    :splash,
    :discovery_splash,
    :afk_timeout,
    :member_count,
    :verification_level,
    :default_message_notifications,
    :explicit_content_filter,
    :features,
    :mfa_level,
    :widget_enabled,
    :widget_channel_id,
    :system_channel_id,
    :vanity_url_code,
    :description,
    :banner,
    :premium_tier,
    :premium_subscription_count,
    :unavailable
  ]

  field :id, 1, type: :fixed64
  field :name, 2, type: :string
  field :icon, 3, type: Google.Protobuf.StringValue
  field :region, 4, type: :string
  field :afk_channel_id, 5, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :owner_id, 6, type: :fixed64
  field :joined_at, 7, type: Google.Protobuf.Timestamp
  field :splash, 8, type: Google.Protobuf.StringValue
  field :discovery_splash, 9, type: Google.Protobuf.StringValue
  field :afk_timeout, 10, type: :uint32
  field :member_count, 11, type: :uint32
  field :verification_level, 12, type: :uint32
  field :default_message_notifications, 13, type: :uint32
  field :explicit_content_filter, 14, type: :uint32
  field :features, 15, repeated: true, type: :string
  field :mfa_level, 16, type: :uint32
  field :widget_enabled, 17, type: :bool
  field :widget_channel_id, 18, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :system_channel_id, 19, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :vanity_url_code, 20, type: Google.Protobuf.StringValue
  field :description, 21, type: Google.Protobuf.StringValue
  field :banner, 22, type: Google.Protobuf.StringValue
  field :premium_tier, 23, type: :uint32
  field :premium_subscription_count, 24, type: :uint32
  field :unavailable, 25, type: :bool
end

defmodule Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          type:
            Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData.ChannelPermissionOverwriteType.t(),
          allow: non_neg_integer,
          deny: non_neg_integer
        }
  defstruct [:id, :type, :allow, :deny]

  field :id, 1, type: :fixed64

  field :type, 2,
    type:
      Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData.ChannelPermissionOverwriteType,
    enum: true

  field :allow, 3, type: :uint64
  field :deny, 4, type: :uint64
end

defmodule Pylon.Discord.V1.Model.ChannelData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          guild_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          name: String.t(),
          topic: Google.Protobuf.StringValue.t() | nil,
          type: Pylon.Discord.V1.Model.ChannelData.ChannelType.t(),
          nsfw: boolean,
          position: non_neg_integer,
          bitrate: non_neg_integer,
          user_limit: non_neg_integer,
          parent_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          rate_limit_per_user: non_neg_integer,
          permission_overwrites: [
            Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData.t()
          ]
        }
  defstruct [
    :id,
    :guild_id,
    :name,
    :topic,
    :type,
    :nsfw,
    :position,
    :bitrate,
    :user_limit,
    :parent_id,
    :rate_limit_per_user,
    :permission_overwrites
  ]

  field :id, 1, type: :fixed64
  field :guild_id, 2, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :name, 3, type: :string
  field :topic, 4, type: Google.Protobuf.StringValue
  field :type, 5, type: Pylon.Discord.V1.Model.ChannelData.ChannelType, enum: true
  field :nsfw, 6, type: :bool
  field :position, 7, type: :uint32
  field :bitrate, 8, type: :uint32
  field :user_limit, 9, type: :uint32
  field :parent_id, 10, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :rate_limit_per_user, 11, type: :uint32

  field :permission_overwrites, 12,
    repeated: true,
    type: Pylon.Discord.V1.Model.ChannelData.ChannelPermissionOverwriteData
end

defmodule Pylon.Discord.V1.Model.UserData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          username: String.t(),
          avatar: Google.Protobuf.StringValue.t() | nil,
          discriminator: non_neg_integer,
          bot: boolean
        }
  defstruct [:id, :username, :avatar, :discriminator, :bot]

  field :id, 1, type: :fixed64
  field :username, 2, type: :string
  field :avatar, 3, type: Google.Protobuf.StringValue
  field :discriminator, 4, type: :uint32
  field :bot, 5, type: :bool
end

defmodule Pylon.Discord.V1.Model.MemberData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          guild_id: non_neg_integer,
          user: Pylon.Discord.V1.Model.UserData.t() | nil,
          nick: Google.Protobuf.StringValue.t() | nil,
          roles: [non_neg_integer],
          joined_at: Google.Protobuf.Timestamp.t() | nil,
          premium_since: Google.Protobuf.Timestamp.t() | nil,
          permissions: non_neg_integer
        }
  defstruct [:id, :guild_id, :user, :nick, :roles, :joined_at, :premium_since, :permissions]

  field :id, 1, type: :fixed64
  field :guild_id, 2, type: :fixed64
  field :user, 3, type: Pylon.Discord.V1.Model.UserData
  field :nick, 4, type: Google.Protobuf.StringValue
  field :roles, 5, repeated: true, type: :fixed64
  field :joined_at, 6, type: Google.Protobuf.Timestamp
  field :premium_since, 7, type: Google.Protobuf.Timestamp
  field :permissions, 8, type: :uint64
end

defmodule Pylon.Discord.V1.Model.RoleData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          guild_id: non_neg_integer,
          name: String.t(),
          managed: boolean,
          mentionable: boolean,
          hoist: boolean,
          color: non_neg_integer,
          position: non_neg_integer,
          permissions: non_neg_integer
        }
  defstruct [
    :id,
    :guild_id,
    :name,
    :managed,
    :mentionable,
    :hoist,
    :color,
    :position,
    :permissions
  ]

  field :id, 1, type: :fixed64
  field :guild_id, 2, type: :fixed64
  field :name, 3, type: :string
  field :managed, 4, type: :bool
  field :mentionable, 5, type: :bool
  field :hoist, 6, type: :bool
  field :color, 7, type: :uint32
  field :position, 8, type: :uint32
  field :permissions, 9, type: :uint64
end

defmodule Pylon.Discord.V1.Model.EmojiData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          guild_id: non_neg_integer,
          name: String.t(),
          animated: boolean,
          roles: [non_neg_integer],
          managed: boolean,
          require_colons: boolean,
          available: boolean,
          user_id: non_neg_integer
        }
  defstruct [
    :id,
    :guild_id,
    :name,
    :animated,
    :roles,
    :managed,
    :require_colons,
    :available,
    :user_id
  ]

  field :id, 1, type: :fixed64
  field :guild_id, 2, type: :fixed64
  field :name, 3, type: :string
  field :animated, 4, type: :bool
  field :roles, 5, repeated: true, type: :fixed64
  field :managed, 6, type: :bool
  field :require_colons, 7, type: :bool
  field :available, 8, type: :bool
  field :user_id, 9, type: :fixed64
end

defmodule Pylon.Discord.V1.Model.VoiceStateData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          member: Pylon.Discord.V1.Model.MemberData.t() | nil,
          guild_id: non_neg_integer,
          channel_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          session_id: Google.Protobuf.StringValue.t() | nil,
          self_mute: boolean,
          self_deaf: boolean,
          self_video: boolean,
          self_stream: boolean,
          mute: boolean,
          deaf: boolean,
          suppress: boolean
        }
  defstruct [
    :member,
    :guild_id,
    :channel_id,
    :session_id,
    :self_mute,
    :self_deaf,
    :self_video,
    :self_stream,
    :mute,
    :deaf,
    :suppress
  ]

  field :member, 1, type: Pylon.Discord.V1.Model.MemberData
  field :guild_id, 2, type: :fixed64
  field :channel_id, 3, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :session_id, 4, type: Google.Protobuf.StringValue
  field :self_mute, 5, type: :bool
  field :self_deaf, 6, type: :bool
  field :self_video, 7, type: :bool
  field :self_stream, 8, type: :bool
  field :mute, 9, type: :bool
  field :deaf, 10, type: :bool
  field :suppress, 11, type: :bool
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageAttachmentData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          filename: String.t(),
          size: non_neg_integer,
          url: String.t(),
          proxy_url: String.t(),
          width: non_neg_integer,
          height: non_neg_integer
        }
  defstruct [:id, :filename, :size, :url, :proxy_url, :width, :height]

  field :id, 1, type: :fixed64
  field :filename, 2, type: :string
  field :size, 3, type: :uint64
  field :url, 4, type: :string
  field :proxy_url, 5, type: :string
  field :width, 6, type: :uint64
  field :height, 7, type: :uint64
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageMentionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          username: String.t(),
          avatar: String.t(),
          discriminator: non_neg_integer
        }
  defstruct [:id, :username, :avatar, :discriminator]

  field :id, 1, type: :fixed64
  field :username, 2, type: :string
  field :avatar, 3, type: :string
  field :discriminator, 4, type: :uint32
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageReactionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          count: non_neg_integer,
          me: boolean,
          emoji: Pylon.Discord.V1.Model.MessageData.MessageReactionEmojiData.t() | nil
        }
  defstruct [:count, :me, :emoji]

  field :count, 1, type: :uint32
  field :me, 2, type: :bool
  field :emoji, 3, type: Pylon.Discord.V1.Model.MessageData.MessageReactionEmojiData
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageReactionEmojiData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          name: String.t(),
          animated: boolean
        }
  defstruct [:id, :name, :animated]

  field :id, 1, type: :fixed64
  field :name, 2, type: :string
  field :animated, 3, type: :bool
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageApplicationData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          cover_image: String.t(),
          description: String.t(),
          icon: String.t(),
          name: String.t()
        }
  defstruct [:id, :cover_image, :description, :icon, :name]

  field :id, 1, type: :fixed64
  field :cover_image, 2, type: :string
  field :description, 3, type: :string
  field :icon, 4, type: :string
  field :name, 5, type: :string
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageReferenceData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_id: non_neg_integer,
          channel_id: non_neg_integer,
          guild_id: non_neg_integer
        }
  defstruct [:message_id, :channel_id, :guild_id]

  field :message_id, 1, type: :fixed64
  field :channel_id, 2, type: :fixed64
  field :guild_id, 3, type: :fixed64
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageActivityData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: non_neg_integer,
          party_id: String.t()
        }
  defstruct [:type, :party_id]

  field :type, 1, type: :uint32
  field :party_id, 2, type: :string
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageMentionChannelData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          guild_id: non_neg_integer,
          type: Pylon.Discord.V1.Model.ChannelData.ChannelType.t(),
          name: String.t()
        }
  defstruct [:id, :guild_id, :type, :name]

  field :id, 1, type: :fixed64
  field :guild_id, 2, type: :fixed64
  field :type, 3, type: Pylon.Discord.V1.Model.ChannelData.ChannelType, enum: true
  field :name, 4, type: :string
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedFooterData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          icon_url: String.t(),
          proxy_icon_url: String.t()
        }
  defstruct [:text, :icon_url, :proxy_icon_url]

  field :text, 1, type: :string
  field :icon_url, 2, type: :string
  field :proxy_icon_url, 3, type: :string
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedImageData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          width: non_neg_integer,
          height: non_neg_integer
        }
  defstruct [:url, :width, :height]

  field :url, 1, type: :string
  field :width, 2, type: :uint32
  field :height, 3, type: :uint32
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedThumbnailData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          proxy_url: String.t(),
          width: non_neg_integer,
          height: non_neg_integer
        }
  defstruct [:url, :proxy_url, :width, :height]

  field :url, 1, type: :string
  field :proxy_url, 2, type: :string
  field :width, 3, type: :uint32
  field :height, 4, type: :uint32
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedVideoData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          width: non_neg_integer,
          height: non_neg_integer
        }
  defstruct [:url, :width, :height]

  field :url, 1, type: :string
  field :width, 2, type: :uint32
  field :height, 3, type: :uint32
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedProviderData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          url: String.t()
        }
  defstruct [:name, :url]

  field :name, 1, type: :string
  field :url, 2, type: :string
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedAuthorData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          url: String.t(),
          icon_url: String.t(),
          proxy_icon_url: String.t()
        }
  defstruct [:name, :url, :icon_url, :proxy_icon_url]

  field :name, 1, type: :string
  field :url, 2, type: :string
  field :icon_url, 3, type: :string
  field :proxy_icon_url, 4, type: :string
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedFieldData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t(),
          inline: boolean
        }
  defstruct [:name, :value, :inline]

  field :name, 1, type: :string
  field :value, 2, type: :string
  field :inline, 3, type: :bool
end

defmodule Pylon.Discord.V1.Model.MessageData.MessageEmbedData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedType.t(),
          description: String.t(),
          url: String.t(),
          timestamp: Google.Protobuf.Timestamp.t() | nil,
          color: non_neg_integer,
          footer:
            Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedFooterData.t() | nil,
          image:
            Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedImageData.t() | nil,
          thumbnail:
            Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedThumbnailData.t()
            | nil,
          video:
            Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedVideoData.t() | nil,
          provider:
            Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedProviderData.t() | nil,
          author:
            Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedAuthorData.t() | nil,
          fields: [Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedFieldData.t()]
        }
  defstruct [
    :title,
    :type,
    :description,
    :url,
    :timestamp,
    :color,
    :footer,
    :image,
    :thumbnail,
    :video,
    :provider,
    :author,
    :fields
  ]

  field :title, 1, type: :string

  field :type, 2,
    type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedType,
    enum: true

  field :description, 3, type: :string
  field :url, 4, type: :string
  field :timestamp, 5, type: Google.Protobuf.Timestamp
  field :color, 6, type: :uint32

  field :footer, 7,
    type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedFooterData

  field :image, 8, type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedImageData

  field :thumbnail, 9,
    type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedThumbnailData

  field :video, 10,
    type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedVideoData

  field :provider, 11,
    type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedProviderData

  field :author, 12,
    type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedAuthorData

  field :fields, 13,
    repeated: true,
    type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData.MessageEmbedFieldData
end

defmodule Pylon.Discord.V1.Model.MessageData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          channel_id: non_neg_integer,
          guild_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          content: String.t(),
          timestamp: Google.Protobuf.Timestamp.t() | nil,
          edited_timestamp: Google.Protobuf.Timestamp.t() | nil,
          mention_roles: Pylon.Discord.V1.Model.SnowflakeListValue.t() | nil,
          tts: boolean,
          mention_everyone: boolean,
          attachments: [Pylon.Discord.V1.Model.MessageData.MessageAttachmentData.t()],
          embeds: [Pylon.Discord.V1.Model.MessageData.MessageEmbedData.t()],
          mentions: [Pylon.Discord.V1.Model.MessageData.MessageMentionData.t()],
          reactions: [Pylon.Discord.V1.Model.MessageData.MessageReactionData.t()],
          pinned: boolean,
          type: Pylon.Discord.V1.Model.MessageData.MessageType.t(),
          mention_channels: [Pylon.Discord.V1.Model.MessageData.MessageMentionChannelData.t()],
          flags: non_neg_integer,
          activity: Pylon.Discord.V1.Model.MessageData.MessageActivityData.t() | nil,
          application: Pylon.Discord.V1.Model.MessageData.MessageApplicationData.t() | nil,
          message_reference: Pylon.Discord.V1.Model.MessageData.MessageReferenceData.t() | nil,
          author: Pylon.Discord.V1.Model.UserData.t() | nil,
          member: Pylon.Discord.V1.Model.MemberData.t() | nil,
          webhook_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil
        }
  defstruct [
    :id,
    :channel_id,
    :guild_id,
    :content,
    :timestamp,
    :edited_timestamp,
    :mention_roles,
    :tts,
    :mention_everyone,
    :attachments,
    :embeds,
    :mentions,
    :reactions,
    :pinned,
    :type,
    :mention_channels,
    :flags,
    :activity,
    :application,
    :message_reference,
    :author,
    :member,
    :webhook_id
  ]

  field :id, 1, type: :fixed64
  field :channel_id, 2, type: :fixed64
  field :guild_id, 3, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :content, 4, type: :string
  field :timestamp, 5, type: Google.Protobuf.Timestamp
  field :edited_timestamp, 6, type: Google.Protobuf.Timestamp
  field :mention_roles, 7, type: Pylon.Discord.V1.Model.SnowflakeListValue
  field :tts, 8, type: :bool
  field :mention_everyone, 9, type: :bool

  field :attachments, 10,
    repeated: true,
    type: Pylon.Discord.V1.Model.MessageData.MessageAttachmentData

  field :embeds, 11, repeated: true, type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData
  field :mentions, 12, repeated: true, type: Pylon.Discord.V1.Model.MessageData.MessageMentionData

  field :reactions, 13,
    repeated: true,
    type: Pylon.Discord.V1.Model.MessageData.MessageReactionData

  field :pinned, 14, type: :bool
  field :type, 15, type: Pylon.Discord.V1.Model.MessageData.MessageType, enum: true

  field :mention_channels, 16,
    repeated: true,
    type: Pylon.Discord.V1.Model.MessageData.MessageMentionChannelData

  field :flags, 17, type: :uint32
  field :activity, 18, type: Pylon.Discord.V1.Model.MessageData.MessageActivityData
  field :application, 19, type: Pylon.Discord.V1.Model.MessageData.MessageApplicationData
  field :message_reference, 20, type: Pylon.Discord.V1.Model.MessageData.MessageReferenceData
  field :author, 21, type: Pylon.Discord.V1.Model.UserData
  field :member, 22, type: Pylon.Discord.V1.Model.MemberData
  field :webhook_id, 23, type: Pylon.Discord.V1.Model.SnowflakeValue
end

defmodule Pylon.Discord.V1.Model.PresenceData.PresenceClientStatusData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          desktop: String.t(),
          mobile: String.t(),
          web: String.t()
        }
  defstruct [:desktop, :mobile, :web]

  field :desktop, 1, type: :string
  field :mobile, 2, type: :string
  field :web, 3, type: :string
end

defmodule Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityTimestampsData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start: non_neg_integer,
          end: non_neg_integer
        }
  defstruct [:start, :end]

  field :start, 1, type: :uint64
  field :end, 2, type: :uint64
end

defmodule Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityEmojiData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: non_neg_integer,
          animated: boolean
        }
  defstruct [:name, :id, :animated]

  field :name, 1, type: :string
  field :id, 2, type: :fixed64
  field :animated, 3, type: :bool
end

defmodule Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityPartyData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          current_size: non_neg_integer,
          max_size: non_neg_integer
        }
  defstruct [:id, :current_size, :max_size]

  field :id, 1, type: :string
  field :current_size, 2, type: :uint64
  field :max_size, 3, type: :uint64
end

defmodule Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityAssetsData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          large_image: String.t(),
          large_text: String.t(),
          small_image: String.t(),
          small_text: String.t()
        }
  defstruct [:large_image, :large_text, :small_image, :small_text]

  field :large_image, 1, type: :string
  field :large_text, 2, type: :string
  field :small_image, 3, type: :string
  field :small_text, 4, type: :string
end

defmodule Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivitySecretsData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          join: String.t(),
          spectate: String.t(),
          match: String.t()
        }
  defstruct [:join, :spectate, :match]

  field :join, 1, type: :string
  field :spectate, 2, type: :string
  field :match, 3, type: :string
end

defmodule Pylon.Discord.V1.Model.PresenceData.PresenceActivityData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: non_neg_integer,
          url: String.t(),
          created_at: Google.Protobuf.Timestamp.t() | nil,
          timestamps:
            Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityTimestampsData.t()
            | nil,
          application_id: non_neg_integer,
          details: String.t(),
          state: String.t(),
          emoji:
            Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityEmojiData.t()
            | nil,
          party:
            Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityPartyData.t()
            | nil,
          assets:
            Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityAssetsData.t()
            | nil,
          secrets:
            Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivitySecretsData.t()
            | nil,
          instance: boolean,
          flags: non_neg_integer
        }
  defstruct [
    :name,
    :type,
    :url,
    :created_at,
    :timestamps,
    :application_id,
    :details,
    :state,
    :emoji,
    :party,
    :assets,
    :secrets,
    :instance,
    :flags
  ]

  field :name, 1, type: :string
  field :type, 2, type: :uint32
  field :url, 3, type: :string
  field :created_at, 4, type: Google.Protobuf.Timestamp

  field :timestamps, 5,
    type: Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityTimestampsData

  field :application_id, 6, type: :fixed64
  field :details, 7, type: :string
  field :state, 8, type: :string

  field :emoji, 9,
    type: Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityEmojiData

  field :party, 10,
    type: Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityPartyData

  field :assets, 11,
    type: Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivityAssetsData

  field :secrets, 12,
    type: Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.PresenceActivitySecretsData

  field :instance, 13, type: :bool
  field :flags, 14, type: :uint32
end

defmodule Pylon.Discord.V1.Model.PresenceData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          maybe_partial_user: {atom, any},
          guild_id: non_neg_integer,
          status: String.t(),
          client_status: Pylon.Discord.V1.Model.PresenceData.PresenceClientStatusData.t() | nil,
          activities: [Pylon.Discord.V1.Model.PresenceData.PresenceActivityData.t()]
        }
  defstruct [:maybe_partial_user, :guild_id, :status, :client_status, :activities]

  oneof :maybe_partial_user, 0
  field :guild_id, 1, type: :fixed64
  field :user, 2, type: Pylon.Discord.V1.Model.UserData, oneof: 0
  field :user_id, 3, type: :fixed64, oneof: 0
  field :status, 4, type: :string
  field :client_status, 5, type: Pylon.Discord.V1.Model.PresenceData.PresenceClientStatusData

  field :activities, 6,
    repeated: true,
    type: Pylon.Discord.V1.Model.PresenceData.PresenceActivityData
end

defmodule Pylon.Discord.V1.Model.WebhookData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          channel_id: non_neg_integer,
          guild_id: non_neg_integer,
          type: Pylon.Discord.V1.Model.WebhookData.WebhookType.t(),
          name: String.t(),
          avatar: String.t(),
          token: String.t()
        }
  defstruct [:id, :channel_id, :guild_id, :type, :name, :avatar, :token]

  field :id, 1, type: :fixed64
  field :channel_id, 2, type: :fixed64
  field :guild_id, 3, type: :fixed64
  field :type, 4, type: Pylon.Discord.V1.Model.WebhookData.WebhookType, enum: true
  field :name, 5, type: :string
  field :avatar, 6, type: :string
  field :token, 7, type: :string
end

defmodule Pylon.Discord.V1.Model.InviteData.InviteGuildData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          name: String.t(),
          splash: Google.Protobuf.StringValue.t() | nil,
          banner: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          icon: Google.Protobuf.StringValue.t() | nil,
          features: [String.t()],
          verification_level: non_neg_integer,
          vanity_url_code: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [
    :id,
    :name,
    :splash,
    :banner,
    :description,
    :icon,
    :features,
    :verification_level,
    :vanity_url_code
  ]

  field :id, 1, type: :fixed64
  field :name, 2, type: :string
  field :splash, 3, type: Google.Protobuf.StringValue
  field :banner, 4, type: Google.Protobuf.StringValue
  field :description, 5, type: Google.Protobuf.StringValue
  field :icon, 6, type: Google.Protobuf.StringValue
  field :features, 7, repeated: true, type: :string
  field :verification_level, 8, type: :uint32
  field :vanity_url_code, 9, type: Google.Protobuf.StringValue
end

defmodule Pylon.Discord.V1.Model.InviteData.InviteChannelData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          name: String.t(),
          type: Pylon.Discord.V1.Model.ChannelData.ChannelType.t()
        }
  defstruct [:id, :name, :type]

  field :id, 1, type: :fixed64
  field :name, 2, type: :string
  field :type, 3, type: Pylon.Discord.V1.Model.ChannelData.ChannelType, enum: true
end

defmodule Pylon.Discord.V1.Model.InviteData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: String.t(),
          guild: Pylon.Discord.V1.Model.InviteData.InviteGuildData.t() | nil,
          channel: Pylon.Discord.V1.Model.InviteData.InviteChannelData.t() | nil,
          inviter: Pylon.Discord.V1.Model.UserData.t() | nil,
          target_user: Pylon.Discord.V1.Model.UserData.t() | nil,
          target_user_type: Pylon.Discord.V1.Model.InviteData.InviteTargetUserType.t(),
          approximate_presence_count: Google.Protobuf.UInt32Value.t() | nil,
          approximate_member_count: Google.Protobuf.UInt32Value.t() | nil
        }
  defstruct [
    :code,
    :guild,
    :channel,
    :inviter,
    :target_user,
    :target_user_type,
    :approximate_presence_count,
    :approximate_member_count
  ]

  field :code, 1, type: :string
  field :guild, 2, type: Pylon.Discord.V1.Model.InviteData.InviteGuildData
  field :channel, 3, type: Pylon.Discord.V1.Model.InviteData.InviteChannelData
  field :inviter, 4, type: Pylon.Discord.V1.Model.UserData
  field :target_user, 5, type: Pylon.Discord.V1.Model.UserData

  field :target_user_type, 6,
    type: Pylon.Discord.V1.Model.InviteData.InviteTargetUserType,
    enum: true

  field :approximate_presence_count, 7, type: Google.Protobuf.UInt32Value
  field :approximate_member_count, 8, type: Google.Protobuf.UInt32Value
end

defmodule Pylon.Discord.V1.Model.GuildBanData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: String.t(),
          user: Pylon.Discord.V1.Model.UserData.t() | nil
        }
  defstruct [:reason, :user]

  field :reason, 1, type: :string
  field :user, 2, type: Pylon.Discord.V1.Model.UserData
end
