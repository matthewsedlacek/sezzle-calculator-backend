class MessagesController < ApplicationController
    def index
        messages = Message.order(created_at: :desc).limit(10)
        render json: messages
    end
    
    def create
        message = Message.new(message_params)
        if message.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                MessageSerializer.new(message)
              ).serializable_hash
              ActionCable.server.broadcast 'messages_channel', serialized_data
              head :ok
            # render json: message
        end
    end

    private
    def message_params
        params.require(:message).permit(:message_text, :username)
    end
end
