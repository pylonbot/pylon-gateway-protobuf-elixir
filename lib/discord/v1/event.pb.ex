defmodule Pylon.Discord.V1.Event.EventEnvelope.HeaderData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          seq: non_neg_integer
        }
  defstruct [:seq]

  field :seq, 1, type: :uint64
end

defmodule Pylon.Discord.V1.Event.EventEnvelope do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_data: {atom, any},
          header: Pylon.Discord.V1.Event.EventEnvelope.HeaderData.t() | nil
        }
  defstruct [:event_data, :header]

  oneof :event_data, 0
  field :header, 1, type: Pylon.Discord.V1.Event.EventEnvelope.HeaderData
  field :guild_create_event, 2, type: Pylon.Discord.V1.Event.GuildCreateEvent, oneof: 0
  field :guild_update_event, 3, type: Pylon.Discord.V1.Event.GuildUpdateEvent, oneof: 0
  field :guild_delete_event, 4, type: Pylon.Discord.V1.Event.GuildDeleteEvent, oneof: 0
  field :presence_update_event, 5, type: Pylon.Discord.V1.Event.PresenceUpdateEvent, oneof: 0
  field :guild_member_add_event, 6, type: Pylon.Discord.V1.Event.GuildMemberAddEvent, oneof: 0

  field :guild_member_update_event, 7,
    type: Pylon.Discord.V1.Event.GuildMemberUpdateEvent,
    oneof: 0

  field :guild_member_remove_event, 8,
    type: Pylon.Discord.V1.Event.GuildMemberRemoveEvent,
    oneof: 0

  field :channel_create_event, 9, type: Pylon.Discord.V1.Event.ChannelCreateEvent, oneof: 0
  field :channel_update_event, 10, type: Pylon.Discord.V1.Event.ChannelUpdateEvent, oneof: 0
  field :channel_delete_event, 11, type: Pylon.Discord.V1.Event.ChannelDeleteEvent, oneof: 0

  field :channel_pins_update_event, 12,
    type: Pylon.Discord.V1.Event.ChannelPinsUpdateEvent,
    oneof: 0

  field :guild_role_create_event, 13, type: Pylon.Discord.V1.Event.GuildRoleCreateEvent, oneof: 0
  field :guild_role_update_event, 14, type: Pylon.Discord.V1.Event.GuildRoleUpdateEvent, oneof: 0
  field :guild_role_delete_event, 15, type: Pylon.Discord.V1.Event.GuildRoleDeleteEvent, oneof: 0
  field :message_create_event, 16, type: Pylon.Discord.V1.Event.MessageCreateEvent, oneof: 0
  field :message_update_event, 17, type: Pylon.Discord.V1.Event.MessageUpdateEvent, oneof: 0
  field :message_delete_event, 18, type: Pylon.Discord.V1.Event.MessageDeleteEvent, oneof: 0

  field :message_delete_bulk_event, 19,
    type: Pylon.Discord.V1.Event.MessageDeleteBulkEvent,
    oneof: 0

  field :message_reaction_add_event, 20,
    type: Pylon.Discord.V1.Event.MessageReactionAddEvent,
    oneof: 0

  field :message_reaction_remove_event, 21,
    type: Pylon.Discord.V1.Event.MessageReactionRemoveEvent,
    oneof: 0

  field :message_reaction_remove_all_event, 22,
    type: Pylon.Discord.V1.Event.MessageReactionRemoveAllEvent,
    oneof: 0

  field :message_reaction_remove_emoji_event, 23,
    type: Pylon.Discord.V1.Event.MessageReactionRemoveEmojiEvent,
    oneof: 0

  field :typing_start_event, 24, type: Pylon.Discord.V1.Event.TypingStartEvent, oneof: 0

  field :voice_state_update_event, 25,
    type: Pylon.Discord.V1.Event.VoiceStateUpdateEvent,
    oneof: 0

  field :voice_server_update_event, 26,
    type: Pylon.Discord.V1.Event.VoiceServerUpdateEvent,
    oneof: 0

  field :invite_create_event, 27, type: Pylon.Discord.V1.Event.InviteCreateEvent, oneof: 0
  field :invite_delete_event, 28, type: Pylon.Discord.V1.Event.InviteDeleteEvent, oneof: 0
  field :guild_ban_add_event, 29, type: Pylon.Discord.V1.Event.GuildBanAddEvent, oneof: 0
  field :guild_ban_remove_event, 30, type: Pylon.Discord.V1.Event.GuildBanRemoveEvent, oneof: 0

  field :guild_emojis_update_event, 31,
    type: Pylon.Discord.V1.Event.GuildEmojisUpdateEvent,
    oneof: 0

  field :guild_integrations_update_event, 32,
    type: Pylon.Discord.V1.Event.GuildIntegrationsUpdateEvent,
    oneof: 0

  field :webhooks_update_event, 33, type: Pylon.Discord.V1.Event.WebhooksUpdateEvent, oneof: 0

  field :integration_create_event, 34,
    type: Pylon.Discord.V1.Event.IntegrationCreateEvent,
    oneof: 0

  field :integration_update_event, 35,
    type: Pylon.Discord.V1.Event.IntegrationUpdateEvent,
    oneof: 0

  field :integration_delete_event, 36,
    type: Pylon.Discord.V1.Event.IntegrationDeleteEvent,
    oneof: 0

  field :interaction_create_event, 37,
    type: Pylon.Discord.V1.Event.InteractionCreateEvent,
    oneof: 0
end

defmodule Pylon.Discord.V1.Event.EventEnvelopeAck do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          seq: non_neg_integer
        }
  defstruct [:seq]

  field :seq, 1, type: :uint64
end

defmodule Pylon.Discord.V1.Event.EventScope do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bot_id: non_neg_integer,
          guild_id: non_neg_integer
        }
  defstruct [:bot_id, :guild_id]

  field :bot_id, 1, type: :fixed64
  field :guild_id, 2, type: :fixed64
end

defmodule Pylon.Discord.V1.Event.GuildCreateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.GuildData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.GuildData
end

defmodule Pylon.Discord.V1.Event.GuildUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.GuildData.t() | nil,
          previously_cached: Pylon.Discord.V1.Model.GuildData.t() | nil
        }
  defstruct [:scope, :payload, :previously_cached]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.GuildData
  field :previously_cached, 3, type: Pylon.Discord.V1.Model.GuildData
end

defmodule Pylon.Discord.V1.Event.GuildDeleteEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.GuildData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.GuildData
end

defmodule Pylon.Discord.V1.Event.PresenceUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.PresenceData.t() | nil,
          previously_cached: Pylon.Discord.V1.Model.PresenceData.t() | nil
        }
  defstruct [:scope, :payload, :previously_cached]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.PresenceData
  field :previously_cached, 3, type: Pylon.Discord.V1.Model.PresenceData
end

defmodule Pylon.Discord.V1.Event.GuildMemberAddEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.MemberData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.MemberData
end

defmodule Pylon.Discord.V1.Event.GuildMemberUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.MemberData.t() | nil,
          previously_cached: Pylon.Discord.V1.Model.MemberData.t() | nil
        }
  defstruct [:scope, :payload, :previously_cached]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.MemberData
  field :previously_cached, 3, type: Pylon.Discord.V1.Model.MemberData
end

defmodule Pylon.Discord.V1.Event.GuildMemberRemoveEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.MemberData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.MemberData
end

defmodule Pylon.Discord.V1.Event.ChannelCreateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.ChannelData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.ChannelData
end

defmodule Pylon.Discord.V1.Event.ChannelUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.ChannelData.t() | nil,
          previously_cached: Pylon.Discord.V1.Model.ChannelData.t() | nil
        }
  defstruct [:scope, :payload, :previously_cached]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.ChannelData
  field :previously_cached, 3, type: Pylon.Discord.V1.Model.ChannelData
end

defmodule Pylon.Discord.V1.Event.ChannelDeleteEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.ChannelData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.ChannelData
end

defmodule Pylon.Discord.V1.Event.ChannelPinsUpdateEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          guild_id: non_neg_integer,
          last_pin_timestamp: Google.Protobuf.Timestamp.t() | nil
        }
  defstruct [:channel_id, :guild_id, :last_pin_timestamp]

  field :channel_id, 1, type: :fixed64
  field :guild_id, 2, type: :fixed64
  field :last_pin_timestamp, 3, type: Google.Protobuf.Timestamp
end

defmodule Pylon.Discord.V1.Event.ChannelPinsUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.ChannelPinsUpdateEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.ChannelPinsUpdateEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.GuildRoleCreateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.RoleData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.RoleData
end

defmodule Pylon.Discord.V1.Event.GuildRoleUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.RoleData.t() | nil,
          previously_cached: Pylon.Discord.V1.Model.RoleData.t() | nil
        }
  defstruct [:scope, :payload, :previously_cached]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.RoleData
  field :previously_cached, 3, type: Pylon.Discord.V1.Model.RoleData
end

defmodule Pylon.Discord.V1.Event.GuildRoleDeleteEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.RoleData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.RoleData
end

defmodule Pylon.Discord.V1.Event.MessageCreateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          message_data: Pylon.Discord.V1.Model.MessageData.t() | nil
        }
  defstruct [:scope, :message_data]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :message_data, 2, type: Pylon.Discord.V1.Model.MessageData
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageAttachmentListValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Pylon.Discord.V1.Model.MessageData.MessageAttachmentData.t()]
        }
  defstruct [:values]

  field :values, 1, repeated: true, type: Pylon.Discord.V1.Model.MessageData.MessageAttachmentData
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageEmbedListValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Pylon.Discord.V1.Model.MessageData.MessageEmbedData.t()]
        }
  defstruct [:values]

  field :values, 1, repeated: true, type: Pylon.Discord.V1.Model.MessageData.MessageEmbedData
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageMentionListValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Pylon.Discord.V1.Model.MessageData.MessageMentionData.t()]
        }
  defstruct [:values]

  field :values, 1, repeated: true, type: Pylon.Discord.V1.Model.MessageData.MessageMentionData
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageReactionListValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Pylon.Discord.V1.Model.MessageData.MessageReactionData.t()]
        }
  defstruct [:values]

  field :values, 1, repeated: true, type: Pylon.Discord.V1.Model.MessageData.MessageReactionData
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageTypeValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Pylon.Discord.V1.Model.MessageData.MessageType.t()
        }
  defstruct [:value]

  field :value, 1, type: Pylon.Discord.V1.Model.MessageData.MessageType, enum: true
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageMentionChannelListValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Pylon.Discord.V1.Model.MessageData.MessageMentionChannelData.t()]
        }
  defstruct [:values]

  field :values, 1,
    repeated: true,
    type: Pylon.Discord.V1.Model.MessageData.MessageMentionChannelData
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageActivityValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Pylon.Discord.V1.Model.MessageData.MessageActivityData.t() | nil
        }
  defstruct [:value]

  field :value, 1, type: Pylon.Discord.V1.Model.MessageData.MessageActivityData
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageApplicationValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Pylon.Discord.V1.Model.MessageData.MessageApplicationData.t() | nil
        }
  defstruct [:value]

  field :value, 1, type: Pylon.Discord.V1.Model.MessageData.MessageApplicationData
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageReferenceValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Pylon.Discord.V1.Model.MessageData.MessageReferenceData.t() | nil
        }
  defstruct [:value]

  field :value, 1, type: Pylon.Discord.V1.Model.MessageData.MessageReferenceData
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageAuthorValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Pylon.Discord.V1.Model.UserData.t() | nil
        }
  defstruct [:value]

  field :value, 1, type: Pylon.Discord.V1.Model.UserData
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageMemberValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Pylon.Discord.V1.Model.MemberData.t() | nil
        }
  defstruct [:value]

  field :value, 1, type: Pylon.Discord.V1.Model.MemberData
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          channel_id: non_neg_integer,
          guild_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          content: Google.Protobuf.StringValue.t() | nil,
          edited_timestamp: Google.Protobuf.Timestamp.t() | nil,
          mention_roles: Pylon.Discord.V1.Model.SnowflakeListValue.t() | nil,
          tts: Google.Protobuf.BoolValue.t() | nil,
          mention_everyone: Google.Protobuf.BoolValue.t() | nil,
          attachments:
            Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageAttachmentListValue.t()
            | nil,
          embeds:
            Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageEmbedListValue.t() | nil,
          mentions:
            Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageMentionListValue.t()
            | nil,
          reactions:
            Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageReactionListValue.t()
            | nil,
          pinned: Google.Protobuf.BoolValue.t() | nil,
          type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageTypeValue.t() | nil,
          mention_channels:
            Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageMentionChannelListValue.t()
            | nil,
          flags: Google.Protobuf.UInt32Value.t() | nil,
          activity:
            Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageActivityValue.t() | nil,
          application:
            Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageApplicationValue.t()
            | nil,
          message_reference:
            Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageReferenceValue.t() | nil,
          author:
            Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageAuthorValue.t() | nil,
          member:
            Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageMemberValue.t() | nil,
          webhook_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil
        }
  defstruct [
    :id,
    :channel_id,
    :guild_id,
    :content,
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
  field :content, 4, type: Google.Protobuf.StringValue
  field :edited_timestamp, 5, type: Google.Protobuf.Timestamp
  field :mention_roles, 6, type: Pylon.Discord.V1.Model.SnowflakeListValue
  field :tts, 7, type: Google.Protobuf.BoolValue
  field :mention_everyone, 8, type: Google.Protobuf.BoolValue

  field :attachments, 9,
    type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageAttachmentListValue

  field :embeds, 10,
    type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageEmbedListValue

  field :mentions, 11,
    type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageMentionListValue

  field :reactions, 12,
    type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageReactionListValue

  field :pinned, 13, type: Google.Protobuf.BoolValue
  field :type, 14, type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageTypeValue

  field :mention_channels, 15,
    type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageMentionChannelListValue

  field :flags, 16, type: Google.Protobuf.UInt32Value

  field :activity, 17,
    type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageActivityValue

  field :application, 18,
    type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageApplicationValue

  field :message_reference, 19,
    type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageReferenceValue

  field :author, 20,
    type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageAuthorValue

  field :member, 21,
    type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData.MessageMemberValue

  field :webhook_id, 22, type: Pylon.Discord.V1.Model.SnowflakeValue
end

defmodule Pylon.Discord.V1.Event.MessageUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: {atom, any},
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          previously_cached: Pylon.Discord.V1.Model.MessageData.t() | nil
        }
  defstruct [:payload, :scope, :previously_cached]

  oneof :payload, 0
  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :cached, 2, type: Pylon.Discord.V1.Model.MessageData, oneof: 0
  field :raw, 4, type: Pylon.Discord.V1.Event.MessageUpdateEvent.PayloadData, oneof: 0
  field :previously_cached, 3, type: Pylon.Discord.V1.Model.MessageData
end

defmodule Pylon.Discord.V1.Event.MessageDeleteEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: non_neg_integer,
          channel_id: non_neg_integer,
          guild_id: non_neg_integer
        }
  defstruct [:id, :channel_id, :guild_id]

  field :id, 1, type: :fixed64
  field :channel_id, 2, type: :fixed64
  field :guild_id, 3, type: :fixed64
end

defmodule Pylon.Discord.V1.Event.MessageDeleteEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.MessageDeleteEvent.PayloadData.t() | nil,
          previously_cached: Pylon.Discord.V1.Model.MessageData.t() | nil
        }
  defstruct [:scope, :payload, :previously_cached]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.MessageDeleteEvent.PayloadData
  field :previously_cached, 3, type: Pylon.Discord.V1.Model.MessageData
end

defmodule Pylon.Discord.V1.Event.MessageDeleteBulkEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ids: [non_neg_integer],
          channel_id: non_neg_integer,
          guild_id: non_neg_integer
        }
  defstruct [:ids, :channel_id, :guild_id]

  field :ids, 1, repeated: true, type: :fixed64
  field :channel_id, 2, type: :fixed64
  field :guild_id, 3, type: :fixed64
end

defmodule Pylon.Discord.V1.Event.MessageDeleteBulkEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.MessageDeleteBulkEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.MessageDeleteBulkEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.MessageReactionAddEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer,
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          guild_id: non_neg_integer,
          emoji: Pylon.Discord.V1.Model.MessageData.MessageReactionEmojiData.t() | nil
        }
  defstruct [:user_id, :channel_id, :message_id, :guild_id, :emoji]

  field :user_id, 1, type: :fixed64
  field :channel_id, 2, type: :fixed64
  field :message_id, 3, type: :fixed64
  field :guild_id, 4, type: :fixed64
  field :emoji, 6, type: Pylon.Discord.V1.Model.MessageData.MessageReactionEmojiData
end

defmodule Pylon.Discord.V1.Event.MessageReactionAddEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.MessageReactionAddEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.MessageReactionAddEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.MessageReactionRemoveEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: non_neg_integer,
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          guild_id: non_neg_integer,
          emoji: Pylon.Discord.V1.Model.MessageData.MessageReactionEmojiData.t() | nil
        }
  defstruct [:user_id, :channel_id, :message_id, :guild_id, :emoji]

  field :user_id, 1, type: :fixed64
  field :channel_id, 2, type: :fixed64
  field :message_id, 3, type: :fixed64
  field :guild_id, 4, type: :fixed64
  field :emoji, 5, type: Pylon.Discord.V1.Model.MessageData.MessageReactionEmojiData
end

defmodule Pylon.Discord.V1.Event.MessageReactionRemoveEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.MessageReactionRemoveEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.MessageReactionRemoveEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.MessageReactionRemoveAllEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          guild_id: non_neg_integer
        }
  defstruct [:channel_id, :message_id, :guild_id]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
  field :guild_id, 3, type: :fixed64
end

defmodule Pylon.Discord.V1.Event.MessageReactionRemoveAllEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.MessageReactionRemoveAllEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.MessageReactionRemoveAllEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.MessageReactionRemoveEmojiEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          message_id: non_neg_integer,
          guild_id: non_neg_integer,
          emoji: Pylon.Discord.V1.Model.MessageData.MessageReactionEmojiData.t() | nil
        }
  defstruct [:channel_id, :message_id, :guild_id, :emoji]

  field :channel_id, 1, type: :fixed64
  field :message_id, 2, type: :fixed64
  field :guild_id, 3, type: :fixed64
  field :emoji, 4, type: Pylon.Discord.V1.Model.MessageData.MessageReactionEmojiData
end

defmodule Pylon.Discord.V1.Event.MessageReactionRemoveEmojiEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.MessageReactionRemoveEmojiEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.MessageReactionRemoveEmojiEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.TypingStartEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          user_id: non_neg_integer,
          timestamp: Google.Protobuf.Timestamp.t() | nil,
          member: Pylon.Discord.V1.Model.MemberData.t() | nil
        }
  defstruct [:channel_id, :user_id, :timestamp, :member]

  field :channel_id, 1, type: :fixed64
  field :user_id, 2, type: :fixed64
  field :timestamp, 3, type: Google.Protobuf.Timestamp
  field :member, 4, type: Pylon.Discord.V1.Model.MemberData
end

defmodule Pylon.Discord.V1.Event.TypingStartEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.TypingStartEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.TypingStartEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.VoiceStateUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Model.VoiceStateData.t() | nil,
          previously_cached: Pylon.Discord.V1.Model.VoiceStateData.t() | nil
        }
  defstruct [:scope, :payload, :previously_cached]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Model.VoiceStateData
  field :previously_cached, 3, type: Pylon.Discord.V1.Model.VoiceStateData
end

defmodule Pylon.Discord.V1.Event.VoiceServerUpdateEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: non_neg_integer,
          token: String.t(),
          endpoint: String.t()
        }
  defstruct [:guild_id, :token, :endpoint]

  field :guild_id, 1, type: :fixed64
  field :token, 2, type: :string
  field :endpoint, 3, type: :string
end

defmodule Pylon.Discord.V1.Event.VoiceServerUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.VoiceServerUpdateEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.VoiceServerUpdateEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.InviteCreateEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: non_neg_integer,
          code: String.t(),
          created_at: Google.Protobuf.Timestamp.t() | nil,
          guild_id: Pylon.Discord.V1.Model.SnowflakeValue.t() | nil,
          inviter: Pylon.Discord.V1.Model.UserData.t() | nil,
          max_age: non_neg_integer,
          max_uses: non_neg_integer,
          target_user: Pylon.Discord.V1.Model.UserData.t() | nil,
          target_user_type: Pylon.Discord.V1.Model.InviteData.InviteTargetUserType.t(),
          temporary: boolean,
          uses: non_neg_integer
        }
  defstruct [
    :channel_id,
    :code,
    :created_at,
    :guild_id,
    :inviter,
    :max_age,
    :max_uses,
    :target_user,
    :target_user_type,
    :temporary,
    :uses
  ]

  field :channel_id, 1, type: :fixed64
  field :code, 2, type: :string
  field :created_at, 3, type: Google.Protobuf.Timestamp
  field :guild_id, 4, type: Pylon.Discord.V1.Model.SnowflakeValue
  field :inviter, 5, type: Pylon.Discord.V1.Model.UserData
  field :max_age, 6, type: :uint64
  field :max_uses, 7, type: :uint64
  field :target_user, 8, type: Pylon.Discord.V1.Model.UserData

  field :target_user_type, 9,
    type: Pylon.Discord.V1.Model.InviteData.InviteTargetUserType,
    enum: true

  field :temporary, 10, type: :bool
  field :uses, 11, type: :uint64
end

defmodule Pylon.Discord.V1.Event.InviteCreateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.InviteCreateEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.InviteCreateEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.InviteDeleteEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: non_neg_integer,
          channel_id: non_neg_integer,
          code: String.t()
        }
  defstruct [:guild_id, :channel_id, :code]

  field :guild_id, 1, type: :fixed64
  field :channel_id, 2, type: :fixed64
  field :code, 3, type: :string
end

defmodule Pylon.Discord.V1.Event.InviteDeleteEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.InviteDeleteEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.InviteDeleteEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.GuildBanAddEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: non_neg_integer,
          user: Pylon.Discord.V1.Model.UserData.t() | nil
        }
  defstruct [:guild_id, :user]

  field :guild_id, 1, type: :fixed64
  field :user, 2, type: Pylon.Discord.V1.Model.UserData
end

defmodule Pylon.Discord.V1.Event.GuildBanAddEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.GuildBanAddEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.GuildBanAddEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.GuildBanRemoveEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: non_neg_integer,
          user: Pylon.Discord.V1.Model.UserData.t() | nil
        }
  defstruct [:guild_id, :user]

  field :guild_id, 1, type: :fixed64
  field :user, 2, type: Pylon.Discord.V1.Model.UserData
end

defmodule Pylon.Discord.V1.Event.GuildBanRemoveEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.GuildBanRemoveEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.GuildBanRemoveEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.GuildEmojisUpdateEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: non_neg_integer,
          emojis: [Pylon.Discord.V1.Model.EmojiData.t()]
        }
  defstruct [:guild_id, :emojis]

  field :guild_id, 1, type: :fixed64
  field :emojis, 2, repeated: true, type: Pylon.Discord.V1.Model.EmojiData
end

defmodule Pylon.Discord.V1.Event.GuildEmojisUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.GuildEmojisUpdateEvent.PayloadData.t() | nil,
          previously_cached: Pylon.Discord.V1.Event.GuildEmojisUpdateEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload, :previously_cached]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.GuildEmojisUpdateEvent.PayloadData
  field :previously_cached, 3, type: Pylon.Discord.V1.Event.GuildEmojisUpdateEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.GuildIntegrationsUpdateEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: non_neg_integer
        }
  defstruct [:guild_id]

  field :guild_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Event.GuildIntegrationsUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.GuildIntegrationsUpdateEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.GuildIntegrationsUpdateEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.WebhooksUpdateEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: non_neg_integer
        }
  defstruct [:guild_id]

  field :guild_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Event.WebhooksUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.WebhooksUpdateEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.WebhooksUpdateEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.IntegrationCreateEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: non_neg_integer
        }
  defstruct [:guild_id]

  field :guild_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Event.IntegrationCreateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.IntegrationCreateEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.IntegrationCreateEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.IntegrationUpdateEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: non_neg_integer
        }
  defstruct [:guild_id]

  field :guild_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Event.IntegrationUpdateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.IntegrationUpdateEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.IntegrationUpdateEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.IntegrationDeleteEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: non_neg_integer
        }
  defstruct [:guild_id]

  field :guild_id, 1, type: :fixed64
end

defmodule Pylon.Discord.V1.Event.IntegrationDeleteEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.IntegrationDeleteEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.IntegrationDeleteEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.InteractionCreateEvent.PayloadData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guild_id: integer
        }
  defstruct [:guild_id]

  field :guild_id, 1, type: :sfixed64
end

defmodule Pylon.Discord.V1.Event.InteractionCreateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: Pylon.Discord.V1.Event.EventScope.t() | nil,
          payload: Pylon.Discord.V1.Event.InteractionCreateEvent.PayloadData.t() | nil
        }
  defstruct [:scope, :payload]

  field :scope, 1, type: Pylon.Discord.V1.Event.EventScope
  field :payload, 2, type: Pylon.Discord.V1.Event.InteractionCreateEvent.PayloadData
end

defmodule Pylon.Discord.V1.Event.EventResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Pylon.Discord.V1.Event.InteractionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end
