class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def pet_params
    params.require(:pet).permit(:name,:species,:location,:found_on)
  end
end
