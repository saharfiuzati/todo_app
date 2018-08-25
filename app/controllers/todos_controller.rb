class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params)
    redirect_to todos_path
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_path

  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def show
    @todo = Todo.find(params[:id])
    render 'detail'
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(params[:todo].permit(:item,:Summary,:Description))
      redirect_to todos_path
    else
      render 'edit'
    end
  end
  private
  def todo_params
    params.require(:todo).permit(:item,:Summary,:Description)
  end

end
