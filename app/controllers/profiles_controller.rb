class ProfilesController < ApplicationController

  # Landlords filter
  before_action :get_profile, only: [:index, :show]

  # GET /profiles
  def index
  end

  # GET /profiles/:id
  def show
  end

  private

  # Get's the tenant from the database, and redirects if unable to find one
  def get_profile
    begin
      @profile = current_user.profile
    rescue
      redirect_to profile_path(@profile)
    end
  end
end
