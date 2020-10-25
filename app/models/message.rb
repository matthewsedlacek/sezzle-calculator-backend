class Message < ApplicationRecord
    validates :message_text, length: { maximum: 18 }
end
