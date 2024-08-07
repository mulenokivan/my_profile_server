class ContactTypesController < ApplicationController
  before_action :set_contact_type, only: %i[ show update destroy ]

  def index
    @contact_types = ContactType.all
  end

  def show
  end

  def create
    @contact_type = ContactType.new(contact_type_params)

    if @contact_type.save
      render :show, status: :created
    else
      render json: @contact_type.errors, status: :unprocessable_entity
    end
  end

  def update
    if @contact_type.update(contact_type_params)
      render :show, status: :ok
    else
      render json: @contact_type.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @contact_type.destroy!
  end

  private
    def set_contact_type
      @contact_type = ContactType.find(params[:id])
    end

    def contact_type_params
      params.require(:contact_type).permit(:title)
    end
end
