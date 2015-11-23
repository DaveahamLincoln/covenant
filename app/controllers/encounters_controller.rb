class EncountersController < ApplicationController
  before_action :authenticate_player!
  before_action :set_encounter, only: [:show, :edit, :update, :destroy]
  #before_action :set_squad, only: 

  # GET /encounters
  # GET /encounters.json
  def index
    @custom_encounters = Encounter.where(:leader_id => current_player.id)
    @squad_encounters = Encounter.where(:squad_id => current_player.id)
  end

  # GET /encounters/1
  # GET /encounters/1.json
  def show
  end

  # GET /encounters/new
  def new
    @encounter = Encounter.new
  end

  # GET /encounters/1/edit
  def edit
  end

  # POST /encounters
  # POST /encounters.json
  def create
    @encounter = Encounter.new(encounter_params)

    respond_to do |format|
      if @encounter.save
        format.html { redirect_to @encounter, notice: 'Encounter was successfully created.' }
        format.json { render :show, status: :created, location: @encounter }
      else
        format.html { render :new }
        format.json { render json: @encounter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encounters/1
  # PATCH/PUT /encounters/1.json
  def update
    respond_to do |format|
      if @encounter.update(encounter_params)
        format.html { redirect_to @encounter, notice: 'Encounter was successfully updated.' }
        format.json { render :show, status: :ok, location: @encounter }
      else
        format.html { render :edit }
        format.json { render json: @encounter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encounters/1
  # DELETE /encounters/1.json
  def destroy
    @encounter.destroy
    respond_to do |format|
      format.html { redirect_to encounters_url, notice: 'Encounter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encounter
      @encounter = Encounter.find(params[:id])
      #may not work right
      @encounter_character_refs = EncounterCharacterRef.where(:encounter_id => params[:id]).order(id: :asc)
      @encounter_pulls = Pull.where(:encounter_id => params[:id])
      @encounter_character_pull_roles = CharacterPullRoleRef.where(:encounter_id => params[:id])
    end

    def set_squad
      @encounter = Encounter.find(params[:id])
      @squad = Squad.find(:id => @encounter.squad_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encounter_params
      params.require(:encounter).permit(:name, :description, :squad_id, :leader_id)
    end
end
