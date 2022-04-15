class PersonWorkshopsController < ApplicationController
  before_action :set_person_workshop, only: %i[ show edit update destroy ]

  # GET /person_workshops or /person_workshops.json
  def index
    @person_workshops = PersonWorkshop.all
  end

  # GET /person_workshops/1 or /person_workshops/1.json
  def show
  end

  # GET /person_workshops/new
  def new
    @person_workshop = PersonWorkshop.new
  end

  # GET /person_workshops/1/edit
  def edit
  end

  # POST /person_workshops or /person_workshops.json
  def create
    @person_workshop = PersonWorkshop.new(person_workshop_params)

    respond_to do |format|
      if @person_workshop.save
        format.html { redirect_to person_workshop_url(@person_workshop), notice: "Person workshop was successfully created." }
        format.json { render :show, status: :created, location: @person_workshop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_workshops/1 or /person_workshops/1.json
  def update
    respond_to do |format|
      if @person_workshop.update(person_workshop_params)
        format.html { redirect_to person_workshop_url(@person_workshop), notice: "Person workshop was successfully updated." }
        format.json { render :show, status: :ok, location: @person_workshop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_workshops/1 or /person_workshops/1.json
  def destroy
    @person_workshop.destroy

    respond_to do |format|
      format.html { redirect_to person_workshops_url, notice: "Person workshop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_workshop
      @person_workshop = PersonWorkshop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_workshop_params
      params.require(:person_workshop).permit(:person_name, :person_last_name, :person_telephone, :person_identification, :active, :city_id)
    end
end
