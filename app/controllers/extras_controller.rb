class ExtrasController < ApplicationController
  before_action :set_extra, only: %i[ show update destroy ]

  def index
    @extras = Extra.all
  end

  def show
  end

  def create
    @extra = Extra.new(extra_params)

    if @extra.save
      render :show, status: :created
    else
      render json: @extra.errors, status: :unprocessable_entity
    end
  end

  def update
    if @extra.update(extra_params)
      render :show, status: :ok
    else
      render json: @extra.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @extra.destroy!
  end

  private
    def set_extra
      @extra = Extra.find(params[:id])
    end

    def extra_params
      params.require(:extra).permit(:text, :profile_id)
    end
end
