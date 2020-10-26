class Message < ApplicationRecord
    validates :message_text, length: { maximum: 30 }
end
