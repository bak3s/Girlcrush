class MainController < ApplicationController
  def index
    @activities = PublicActivity::Activity.all
  end
end
