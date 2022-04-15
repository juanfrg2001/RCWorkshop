class ServiceWorkshopsController < ApplicationController
  before_action :set_service_workshop, only: %i[ show edit update destroy ]

  # GET /service_workshops or /service_workshops.json
  def index
    @service_workshops = ServiceWorkshop.all
  end

  # GET /service_workshops/1 or /service_workshops/1.json
  def show
  end

  # GET /service_workshops/new
  def new
    @service_workshop = ServiceWorkshop.new
  end

  # GET /service_workshops/1/edit
  def edit
  end

  # POST /service_workshops or /service_workshops.json
  def create
    @service_workshop = ServiceWorkshop.new(service_workshop_params)

    respond_to do |format|
      if @service_workshop.save
        format.html { redirect_to service_workshop_url(@service_workshop), notice: "Service workshop was successfully created." }
        format.json { render :show, status: :created, location: @service_workshop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_workshops/1 or /service_workshops/1.json
  def update
    respond_to do |format|
      if @service_workshop.update(service_workshop_params)
        format.html { redirect_to service_workshop_url(@service_workshop), notice: "Service workshop was successfully updated." }
        format.json { render :show, status: :ok, location: @service_workshop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_workshops/1 or /service_workshops/1.json
  def destroy
    @service_workshop.destroy

    respond_to do |format|
      format.html { redirect_to service_workshops_url, notice: "Service workshop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_workshop
      @service_workshop = ServiceWorkshop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_workshop_params
      params.require(:service_workshop).permit(:name, :objective, :duration, :car_specialization, :workshop_id)
    end
end
