class CharacterPullRoleRefsController < ApplicationController
  before_action :set_character_pull_role_ref, only: [:show, :edit, :update, :destroy]

  # GET /character_pull_role_refs
  # GET /character_pull_role_refs.json
  def index
    @character_pull_role_refs = CharacterPullRoleRef.all
  end

  # GET /character_pull_role_refs/1
  # GET /character_pull_role_refs/1.json
  def show
  end

  # GET /character_pull_role_refs/new
  def new
    @character_pull_role_ref = CharacterPullRoleRef.new
  end

  # GET /character_pull_role_refs/1/edit
  def edit
  end

  # POST /character_pull_role_refs
  # POST /character_pull_role_refs.json
  def create
    @character_pull_role_ref = CharacterPullRoleRef.new(character_pull_role_ref_params)

    respond_to do |format|
      if @character_pull_role_ref.save
        format.html { redirect_to @character_pull_role_ref, notice: 'Character pull role ref was successfully created.' }
        format.json { render :show, status: :created, location: @character_pull_role_ref }
      else
        format.html { render :new }
        format.json { render json: @character_pull_role_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_pull_role_refs/1
  # PATCH/PUT /character_pull_role_refs/1.json
  def update
    respond_to do |format|
      if @character_pull_role_ref.update(character_pull_role_ref_params)
        format.html { redirect_to @character_pull_role_ref, notice: 'Character pull role ref was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_pull_role_ref }
      else
        format.html { render :edit }
        format.json { render json: @character_pull_role_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_pull_role_refs/1
  # DELETE /character_pull_role_refs/1.json
  def destroy
    @character_pull_role_ref.destroy
    respond_to do |format|
      format.html { redirect_to character_pull_role_refs_url, notice: 'Character pull role ref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_pull_role_ref
      @character_pull_role_ref = CharacterPullRoleRef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_pull_role_ref_params
      params.require(:character_pull_role_ref).permit(:pull_role_id, :character_id)
    end
end
