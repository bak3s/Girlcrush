class CrushesController < ApplicationController
  def index
    @crushes = Crush.paginate(page: params[:page])
  end
end
