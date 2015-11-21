class SigilsController < ApplicationController
  before_action :set_sigil, only: [:show, :edit, :update, :destroy]

  # GET /sigils
  # GET /sigils.json
  def index
    @sigils = Sigil.all
  end

  # GET /sigils/1
  # GET /sigils/1.json
  def show
  end

  # GET /sigils/new
  def new
    @sigil = Sigil.new
  end

  # GET /sigils/1/edit
  def edit
  end

  # POST /sigils
  # POST /sigils.json
  def create
    @sigil = Sigil.new(sigil_params)

    respond_to do |format|
      if @sigil.save
        format.html { redirect_to @sigil, notice: 'Sigil was successfully created.' }
        format.json { render :show, status: :created, location: @sigil }
      else
        format.html { render :new }
        format.json { render json: @sigil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sigils/1
  # PATCH/PUT /sigils/1.json
  def update
    respond_to do |format|
      if @sigil.update(sigil_params)
        format.html { redirect_to @sigil, notice: 'Sigil was successfully updated.' }
        format.json { render :show, status: :ok, location: @sigil }
      else
        format.html { render :edit }
        format.json { render json: @sigil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sigils/1
  # DELETE /sigils/1.json
  def destroy
    @sigil.destroy
    respond_to do |format|
      format.html { redirect_to sigils_url, notice: 'Sigil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sigil
      @sigil = Sigil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sigil_params
      params.require(:sigil).permit(:name, :description)
    end
end
