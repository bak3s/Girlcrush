class ProfilesController < ApplicationController

  # Landlords filter
  before_action :get_profile, only: [:index, :show, :edit, :update]

  # GET /profiles
  def index
  end

  # GET /profiles/:id
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # POST /profiles
  def create
    @profile = Profile.new(white_listed_parameters)
    if @profile.save
      flash[:notice] = 'Profile saved'
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  # GET /profiles/:id/edit
  def edit
  end

  # PUT /profiles/:id
  def update
    if @profile.update_attributes(white_listed_parameters)
      flash[:notice] = 'Profile saved'
      redirect_to profile_path(@profile)
    else
      render :edit
    end
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

  def white_listed_parameters
    params
      .require(:profile)
      .permit(:avatar, :caption, :location, :gender, :biography, :age, :user_id)
  end
end
