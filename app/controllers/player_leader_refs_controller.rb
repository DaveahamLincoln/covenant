class PlayerLeaderRefsController < ApplicationController
  before_action :authenticate_player!
  before_action :set_player_leader_ref, only: [:show, :edit, :update, :destroy]

  # GET /player_leader_refs
  # GET /player_leader_refs.json
  def index
    @player_leader_refs = PlayerLeaderRef.all
  end

  # GET /player_leader_refs/1
  # GET /player_leader_refs/1.json
  def show
  end

  # GET /player_leader_refs/new
  def new
    @player_leader_ref = PlayerLeaderRef.new
  end

  # GET /player_leader_refs/1/edit
  def edit
  end

  # POST /player_leader_refs
  # POST /player_leader_refs.json
  def create
    @player_leader_ref = PlayerLeaderRef.new(player_leader_ref_params)

    respond_to do |format|
      if @player_leader_ref.save
        format.html { redirect_to @player_leader_ref, notice: 'Player leader ref was successfully created.' }
        format.json { render :show, status: :created, location: @player_leader_ref }
      else
        format.html { render :new }
        format.json { render json: @player_leader_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_leader_refs/1
  # PATCH/PUT /player_leader_refs/1.json
  def update
    respond_to do |format|
      if @player_leader_ref.update(player_leader_ref_params)
        format.html { redirect_to @player_leader_ref, notice: 'Player leader ref was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_leader_ref }
      else
        format.html { render :edit }
        format.json { render json: @player_leader_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_leader_refs/1
  # DELETE /player_leader_refs/1.json
  def destroy
    @player_leader_ref.destroy
    respond_to do |format|
      format.html { redirect_to player_leader_refs_url, notice: 'Player leader ref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_leader_ref
      @player_leader_ref = PlayerLeaderRef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_leader_ref_params
      params[:player_leader_ref]
    end
end
