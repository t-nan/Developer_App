class Admin::FlatsController < Admin::ApplicationController

  def index
    
    @flats=Flat.all.order(:created_at)

  end

  def show
    @plan=Plan.find(params[:plan_id])
    @flat=@plan.flats.find(params[:id])
  end

  def new   
  end

  def create

    @flat=Flat.new(flat_params)

    if @flat.save
      redirect_to admin_flats_path
    else
      @error=@flat.errors.full_messages
      render "new"
    end

  end

  def edit
    @plan=Plan.find(params[:plan_id])
    @flat=@plan.flats.find(params[:id])
  end

  def update
    @plan=Plan.find(params[:plan_id])
    @flat=@plan.flats.find(params[:id])
   
    if @flat.update(flat_params)
      redirect_to admin_plan_path(@plan)
    else
      @error=@flat.errors.full_messages
      render "edit"
    end

  end


  def destroy
    @plan=Plan.find(params[:plan_id])
    @flat=@plan.flats.find(params[:id])
    @flat.delete

    redirect_to admin_plan_path (@plan)
  end


  private

  def flat_params
    params.require(:flat).permit(:number,:entrance,:floor,:square,:plan_id,:rooms,:status,:image,:link)
  end

end
