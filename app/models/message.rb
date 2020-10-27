class Message < ApplicationRecord
    include ActiveModel::Conversion
    extend  ActiveModel::Naming
    # validates :message_text, length: { maximum: 30 }
end
