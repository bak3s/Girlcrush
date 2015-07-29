class Users::CrushesController < ApplicationController
  # /users/:user_id/crushes

  # before_action :get_crush, only: [:show, :edit, :update, :destroy]
  before_action :assign_user, only: [:create,:new]

  def index
    @user = User.find(params[:user_id])
    @crushes = @user.crushes
  end

  def new
    @crush = Crush.new
  end

  def show
    @crush = Crush.find(params[:id])
  end

  def create
    @crush = Crush.new(white_listed_parameters)
    @crush.user_id = current_user.id
    if @crush.save
      flash[:notice] = 'Crush saved'
      redirect_to user_crushes_path
    else
      render :new
    end
  end

  def get_crush
    begin
      @crush = Crush.find(params[:id])
    rescue
      redirect_to user_crushes_path
    end
  end

  def assign_user
    #@crush.user_id = current_user.id
  end

  def white_listed_parameters
    params
      .require(:crush)
      .permit(:title, :description, :crushed, :user_id, :picture, :address)
  end
end
