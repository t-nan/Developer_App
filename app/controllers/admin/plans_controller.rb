class Admin::PlansController < Admin::ApplicationController
  
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
  end

  def create

    @plan=Plan.new(plan_params)

    if @plan.save
      redirect_to admin_plans_path
    else
      @error=@plan.errors.full_messages
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
      @error=@plan.errors.full_messages
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
    params.require(:plan).permit(:kind , :rooms , :image , :link )
  end





end


