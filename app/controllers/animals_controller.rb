class AnimalsController < ApplicationController
  def index
    @animal = Animal.order("id ASC")
  end

  def new
    @animal = Animal.new
  end
  def create
    @animal = Animal.new(create_params)
    @animal.save!
    redirect_to root_path
  end


  def show
    @animal = Animal.find(params[:id])
    @currentUser = UserRoom.where(user_id: current_user.id)
    @animalUser = UserRoom.where(user_id: @animal.user_id)

    if @animal.user_id == current_user.id
    else
      @currentUser.each do |cu|
        @animalUser.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @rooms = Room.new
        @user_rooms = UserRoom.new
      end
    end
  end

  private
  def create_params
    params.require(:animal).permit(:image, :name, :kind, :sex, :age, :time, :course, :notes).merge(user_id: current_user.id)
  end
end
