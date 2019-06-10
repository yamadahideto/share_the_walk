class MessagesController < ApplicationController

  def index
    @message = Message.new
    @messages = Message.all
  end

  def create
    @message = Message.new(create_params)
    # binding.pry
      if @message.save
        redirect_to messages_path
      else
        flash.now[:alert] = 'メッセージを入力してください'
        render :index
      end
  end

  private
  def create_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end
