class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.name = params[:cat][:name]

    @cat.assign_attributes(permitted_params)
    if @cat.save
      flash[:notice] = 'Saved the cat'
      redirect_to cat_path(@cat)
    else
      flash.now[:error] = 'Failed to save cat'
      render :edit
    end

  end

  private

  def permitted_params
    params.require(:cat).permit(:name, :breed, :age, :nickname)
  end



end