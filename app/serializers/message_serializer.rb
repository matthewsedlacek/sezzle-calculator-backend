class MessageSerializer < ActiveModel::Serializer
    attributes :id, :message_text, :username
  end