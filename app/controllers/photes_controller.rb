class PhotesController < ApplicationController
  def index
    @photes = Phote.all
  end

  def show
    @phote = Phote.find(params_id)
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
  end
end
