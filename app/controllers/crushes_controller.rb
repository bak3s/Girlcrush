class CrushesController < ApplicationController
  def index
    @crushes = Crush.paginate(page: params[:page])
  end

  def show
  end

  def edit
  end

  def update
  end

  def create
  end

  def new
  end
end
