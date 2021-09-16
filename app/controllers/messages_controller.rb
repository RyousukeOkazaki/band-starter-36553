class MessagesController < ApplicationController
  def create
    @message = Message.create(message_params)
    respond_to do |format|
      if @message.save
        format.html { redirect_back(fallback_location: root_path) }
        format.js
      else
        format.html { redirect_back(fallback_location: rooms_path) }
      end
    end
  end

  def destroy
    @room = Room.find(params[:room_id])
    @message = current_user.messages.find_by(room_id: @room.id)
    @message.destroy
    redirect_back(fallback_location: rooms_path)
  end

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id, room_id: params[:room_id])
  end
end
