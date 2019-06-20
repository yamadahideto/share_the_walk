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
    @animal = Animal.find_by(id: 1)
  end

  private
  def create_params
    params.require(:animal).permit(:image, :name, :kind, :sex, :age, :time, :course, :notes).merge(user_id: current_user.id)
  end
end
