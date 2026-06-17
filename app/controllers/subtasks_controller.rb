class SubtasksController < ApplicationController
  def new
    @taskn = Taskn.find(params[:taskn_id])
    @subtask = @taskn.subtasks.new 
  end

  def create
    @taskn = Taskn.find(params[:taskn_id])
    @subtask = @taskn.subtasks.new(subtask_params)

    if @subtask.save
      redirect_to taskn_subtasks_path(@taskn)
    else
      render :new
    end
  end

  def index
    @taskn = Taskn.find(params[:taskn_id])
    @subtasks = @taskn.subtasks
  end

  private
  def subtask_params
    params.require(:subtask).permit(
      :name,
      :description,
      :due_date,
      :category,
      :priority
    )

  end
end
