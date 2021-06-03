class FlatsController < ApplicationController

  def index
    
    @flats=Flat.all

  end

  def show
    @plan=Plan.find(params[:plan_id])
    @flat=@plan.flats.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update    
  end


  def destroy
  end


end
