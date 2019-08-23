class RoomsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @rooms = Room.new
    if @room.save
      redirect_to :index
    else
      render :new
    end
  end
end
