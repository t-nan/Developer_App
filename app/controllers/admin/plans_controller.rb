class Admin::PlansController < Admin::ApplicationController
  
 def index
    @plans=Plan.all

  end

  def show
    @plan=Plan.find(params[:id])
    @questions=@plan.questions.order(created_at: :desc)
    @count=@questions.count

    @answers=Answer.all
    
    @flats=@plan.flats
      
  end

  def new
  end

  def create

    @plan=Plan.new(plan_params)

    if @plan.save
      redirect_to plans_path
    else
      render "new"
    end

  end

  def edit
    @plan=Plan.find(params[:id])
    @flat=@plan.flats
  end

  def update

    @plan=Plan.find(params[:id])
    if @plan.update(plan_params)
      redirect_to admin_plans_path
    else
      render "edit"
    end

  end


  def destroy
    @plan=Plan.find(params[:id])
    @plan.delete

    redirect_to admin_plans_path
  end


  private

  def plan_params
    params.require(:plan).permit(:kind , :rooms , :image )
  end





end


