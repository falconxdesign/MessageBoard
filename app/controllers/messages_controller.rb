class MessagesController < ApplicationController

  def index 
   
  end

  def new
    @message = Message.new
  end

  def create 
    @message = Message.new(message_params)
  end

  private
    def message_params
      params.require(:message).permit(:title, :description)
    end

end
