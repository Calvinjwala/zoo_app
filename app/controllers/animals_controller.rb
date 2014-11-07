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
    id = params[:id]
    @animals = Animal.find_by_id(id)
  end

  def create
    animals = params[:animal].permit(:name, :photo, :zoo_id)
    Animal.create animals
    redirect_to(animals_path)
  end

  def update
    a = Animal.find(params[:id])
    animals = params[:animal].permit(:name, :photo, :zoo_id)
    a.update_attributes animals
    redirect_to(animals_path)
  end

  def destroy
    a = Animal.find(params[:id])
    a.destroy
    redirect_to(animals_path)
  end

end