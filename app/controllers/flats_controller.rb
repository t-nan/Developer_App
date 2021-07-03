class FlatsController < ApplicationController

  def index
    
    @flats=Flat.all.order(:created_at)

    @flats_count = Flat.count

    @search = Flat.ransack(params[:q])

    @fl = @search.result(distinct: true).paginate(page: params[:page], per_page: 7)

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
