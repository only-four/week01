class NotebookController < ApplicationController

  def index
    @notebooks = Notebook.all
  end

  def new
    @notebook = Notebook.new
  end

  def create
    @notebook = Notebook.new(notebook_params)
    if@notebook.save
      redirect_to '/', notice: '已成功新增筆記本！'
    else
      render :new
    end
  end

  def edit
    @notebook = Notebook.find_by(id: params[:id])
  end

  def update
    @notebook = Notebook.find_by(id: params[:id])
    if@notebook.update(notebook_params)
      redirect_to notebook_path, notice: '已成功更新筆記本！'
    else
      render :edit
    end
  end 

  def destroy
    @notebook = Notebook.find_by(id: params[:id])
    @notebook.destroy if @notebook
    redirect_to notebook_path, notice: '已成功刪除筆記本！'
  end

  private
  def notebook_params
    params.require(:notebook).permit(:title, :author)
  end


end
