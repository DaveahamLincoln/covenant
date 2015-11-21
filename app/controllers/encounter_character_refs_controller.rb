class EncounterCharacterRefsController < ApplicationController
  before_action :set_encounter_character_ref, only: [:show, :edit, :update, :destroy]

  # GET /encounter_character_refs
  # GET /encounter_character_refs.json
  def index
    @encounter_character_refs = EncounterCharacterRef.all
  end

  # GET /encounter_character_refs/1
  # GET /encounter_character_refs/1.json
  def show
  end

  # GET /encounter_character_refs/new
  def new
    @encounter_character_ref = EncounterCharacterRef.new
  end

  # GET /encounter_character_refs/1/edit
  def edit
  end

  # POST /encounter_character_refs
  # POST /encounter_character_refs.json
  def create
    @encounter_character_ref = EncounterCharacterRef.new(encounter_character_ref_params)

    respond_to do |format|
      if @encounter_character_ref.save
        format.html { redirect_to @encounter_character_ref, notice: 'Encounter character ref was successfully created.' }
        format.json { render :show, status: :created, location: @encounter_character_ref }
      else
        format.html { render :new }
        format.json { render json: @encounter_character_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encounter_character_refs/1
  # PATCH/PUT /encounter_character_refs/1.json
  def update
    respond_to do |format|
      if @encounter_character_ref.update(encounter_character_ref_params)
        format.html { redirect_to @encounter_character_ref, notice: 'Encounter character ref was successfully updated.' }
        format.json { render :show, status: :ok, location: @encounter_character_ref }
      else
        format.html { render :edit }
        format.json { render json: @encounter_character_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encounter_character_refs/1
  # DELETE /encounter_character_refs/1.json
  def destroy
    @encounter_character_ref.destroy
    respond_to do |format|
      format.html { redirect_to encounter_character_refs_url, notice: 'Encounter character ref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encounter_character_ref
      @encounter_character_ref = EncounterCharacterRef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encounter_character_ref_params
      params.require(:encounter_character_ref).permit(:encounter_id, :character_id)
    end
end
