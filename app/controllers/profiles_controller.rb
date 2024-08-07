class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show update destroy ]

  def index
    @profiles = Profile.all
  end

  def show
  end

  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      render :show, status: :created
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  def update
    if @profile.update(profile_params)
      render :show, status: :ok
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @profile.destroy!
  end

  private
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:name, :status, :avatar)
    end
end
