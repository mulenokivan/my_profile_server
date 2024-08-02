class ContactTypesController < ApplicationController
  before_action :set_contact_type, only: %i[ show update destroy ]

  # GET /contact_types
  # GET /contact_types.json
  def index
    @contact_types = ContactType.all
  end

  # GET /contact_types/1
  # GET /contact_types/1.json
  def show
  end

  # POST /contact_types
  # POST /contact_types.json
  def create
    @contact_type = ContactType.new(contact_type_params)

    if @contact_type.save
      render :show, status: :created, location: @contact_type
    else
      render json: @contact_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contact_types/1
  # PATCH/PUT /contact_types/1.json
  def update
    if @contact_type.update(contact_type_params)
      render :show, status: :ok, location: @contact_type
    else
      render json: @contact_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contact_types/1
  # DELETE /contact_types/1.json
  def destroy
    @contact_type.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_type
      @contact_type = ContactType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_type_params
      params.require(:contact_type).permit(:title)
    end
end
