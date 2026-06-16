class TasknsController < ApplicationController

  def new
    @taskn = Taskn.new
  end

  def create
    @taskn = Taskn.new(taskn_params)

    if @taskn.save
      redirect_to taskns_path
    else
      render :new
    end

  end

  def index
    @taskns = Taskn.all
  end

  def edit
    @taskn = Taskn.find(params[:id])
  end
  

  def update
    @taskn = Taskn.find(params[:id])
    if @taskn.update(taskn_params)
      redirect_to taskns_path
    else
      render :edit
    end
  end

  

  def destroy
    @taskn = Taskn.find(params[:id])
    @taskn.destroy
    redirect_to taskns_path
  
  end

  private
  def taskn_params
    params.require(:taskn).permit(
      :name,
      :description,
      :due_date,
      :category,
      :priority
    )
  end
end