class MessagesController < ApplicationController
    def index
        messages = Message.all
        render json: messages
    end
    
    def show
        message = Message.find_by(id: params[:id])
        render json: MessageSerializer.new(message)
    end

    def create
        message = Message.create(message_params)
        render json: MessageSerializer.new(message)
    end

    def edit
        message = Message.update(message_params)
        render json: MessageSerializer.new(message)
    end

    def destroy
        message = Message.find(params[:id])
        company.destroy
        render json: {info: "Deleted"}
    end

    private
    def message_params
        params.require(:company).permit(:message_text, :username)
    end
end
