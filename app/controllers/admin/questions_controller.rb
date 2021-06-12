class Admin::QuestionsController < Admin::ApplicationController

  def index
    @all_questions=Question.all.order(created_at: :desc)
   # @plan=Plan.find(params[:plan_id])
    #@questions=@plan.questions.order(created_at: :desc)
  end

  def show
    @plan=Plan.find(params[:plan_id])
    @question=@plan.questions.find(params[:id])
    @answer=Answer.new
    @answers=@question.answers
    
  end

  def new
    @plan=Plan.find(params[:plan_id])
    @question = Question.find(params[:id])

  end

  def create
    @plan=Plan.find(params[:plan_id])
    question=@plan.questions.new (question_params)
    if question.save
      redirect_to admin_plan_path(@plan)
    else
      render ""
    end

  end

  def edit
  end

  def update
  end

  def destroy
    @plan=Plan.find(params[:plan_id])
    @question=@plan.questions.find(params[:id])
    @question.delete

    redirect_to admin_questions_path
  end


  private

  def question_params
    params.require(:question).permit(:author,:body)
  end

end
