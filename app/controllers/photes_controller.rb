class PhotesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def index
    @photes = Phote.all
  end

  def show
    @phote = Phote.find(params[:id])
  end

  def new
    @phote = Phote.new
  end

  def create
    @phote = Phote.new(phote_params)
    @phote.user_id = current_user.id
    if @phote.save
      redirect_to phote_path(@phote), notice: "投稿に成功しました"
    else
      render :new
    end
  end
  
  def edit
    @phote = Phote.find(params[:id])
    if @phote.user_id != current_user.id
       redirect_to photes_path, alert: "不正なアクセスです"
    end
  end
     
  def update
     @phote = Phote.find(params[:id])
     if @phote.update(phote_params)
       redirect_to phote_path(@phote), notice: "投稿の編集に成功しました"
     else
       render :edit
     end
  end
  
  def destroy
    phote = Phote.find(params[:id])
    phote.destroy
     redirect_to photes_path
  end
  
  private
  def phote_params
    params.require(:phote).permit(:title, :body)
  end
  
end
