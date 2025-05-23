class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params_new)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params_update)
    redirect_to task_path(@task)
  end

  private
  def task_params_new
  params.require(:task).permit(:title, :details)
  end

  def task_params_update
  params.require(:task).permit(:title, :details, :completed)
  end
end
