class CrushesController < ApplicationController
  def index
    @crushes = Crush.paginate(page: params[:page])
  end

  def show
    @crush = Crush.find(params[:id])
  end

  def upvote
    @crush = Crush.find(params[:id])
    respond_to do |format|
      unless current_user.voted_for? @crush
        @crush.liked_by current_user
        flash[:notice] = "Thanks for crushing #{current_user.email}"
        format.html { redirect_to :back }
      else
        flash[:danger] = 'You have already crushed this!'
        format.html { redirect_to :back }
      end
    end
  end

  def downvote
    @crush = Crush.find(params[:id])
    @crush.downvote_from current_user
    redirect_to :back
  end

  # def build_url_hash(name,street)
  #   { name: name, street: street }
  # end

end