class ZoosController < ApplicationController
  def index
    @zoos = Zoo.all
  end

  def show
    id = params[:id]
    @zoo = Zoo.find_by_id(id)
  end

  def new
    @zoo = Zoo.new
  end

  def edit
    id = params[:id]
    @zoo = Zoo.find_by_id(id)
  end

  def create
    zoo = params[:zoo].permit(:name, :location)
    Zoo.create zoo
    redirect_to '/'
  end

  def update
    z = Zoo.find(params[:id])
    zoo = params[:zoo].permit(:name, :location)
    z.update_attributes zoo
    redirect_to '/'
  end

  def destroy
    z = Zoo.find(params[:id])
    z.animals.destroy_all
    z.destroy
    redirect_to '/'
  end

end
