class PlansController < ApplicationController


  def index
    @plans=Plan.all.order(:created_at)

  end

  def show
    @plan=Plan.find(params[:id])
    @questions=@plan.questions.order(created_at: :desc)
    @count=@questions.count

    @answers=Answer.all
    
    @flats=@plan.flats   
  end

  def new
    render inline: "ERROR"
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
