class MessagesController < ApplicationController
    def index
        messages = Message.order(created_at: :desc).limit(10)
        render json: messages
    end
    
    def show
        message = Message.find_by(id: params[:id])
        render json: MessageSerializer.new(message)
    end

    def create
        message = Message.create(message_params)
        render json: message
    end

    def edit
        message = Message.update(message_params)
        render json: MessageSerializer.new(message)
    end



    private
    def message_params
        params.require(:message).permit(:message_text, :username)
    end
end
