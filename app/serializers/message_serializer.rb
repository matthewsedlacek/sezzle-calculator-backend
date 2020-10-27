class MessageSerializer < ActiveModel::Serializer
    attributes :id, :message_text, :username, :created_at
  end