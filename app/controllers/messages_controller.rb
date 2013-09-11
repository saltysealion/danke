class MessagesController < ApplicationController
  def new
    @message = Message.offset(rand(Message.count)).first
  end

  def create
    params.require(:message).permit!
    @message = Message.new params[:message]
    if @message.save
      return redirect_to '/'
    end

    render :new
  end
end
