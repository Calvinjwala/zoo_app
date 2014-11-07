class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    id = params[:id]
    @animals = Animal.find_by_id(id)
  end

  def new
    @animals = Animal.new
  end

  def edit
  end

  def create
    animals = params[:animal].permit(:name, :photo, :zoo_id)
    Animal.create animal
    redirect_to 'animals/index'
  end

  def update
    a = Animal.find(params[:id])
    animals = params[:animal].permit(:name, :photo, :zoo_id)
    a.update_attributes animal
    redirect_to 'animals/index'
  end

  def destroy
    a = Animal.find(params[:id])
    a.destroy
    redirect_to 'animals/index'
  end

end
