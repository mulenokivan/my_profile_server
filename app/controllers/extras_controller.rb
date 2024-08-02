class ExtrasController < ApplicationController
  before_action :set_extra, only: %i[ show update destroy ]

  # GET /extras
  # GET /extras.json
  def index
    @extras = Extra.all
  end

  # GET /extras/1
  # GET /extras/1.json
  def show
  end

  # POST /extras
  # POST /extras.json
  def create
    @extra = Extra.new(extra_params)

    if @extra.save
      render :show, status: :created, location: @extra
    else
      render json: @extra.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /extras/1
  # PATCH/PUT /extras/1.json
  def update
    if @extra.update(extra_params)
      render :show, status: :ok, location: @extra
    else
      render json: @extra.errors, status: :unprocessable_entity
    end
  end

  # DELETE /extras/1
  # DELETE /extras/1.json
  def destroy
    @extra.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extra
      @extra = Extra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def extra_params
      params.require(:extra).permit(:text, :profile_id)
    end
end
