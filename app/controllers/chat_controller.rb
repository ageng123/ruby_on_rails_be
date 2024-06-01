require "securerandom"
class ChatController < ApplicationController
  def new
    @chat = Chat.create(chatParameter)
    set_cors_header
    # notify_pusher
    if @chat.save
      render json: {message: "sukses", data: @chat}, status: 202
    else
      render json: @chat.errors, status: 422
    end
  end
  def chatParameter
    params.require(:chat).permit(:user, :message).merge(cpk: SecureRandom.uuid)
  end
  def all
    @chat = Chat.all
    set_cors_header
    render json: @chat, status: 201
  end
  
end
