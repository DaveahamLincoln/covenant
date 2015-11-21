class AffixesController < ApplicationController
  before_action :set_affix, only: [:show, :edit, :update, :destroy]

  # GET /affixes
  # GET /affixes.json
  def index
    @affixes = Affix.all
  end

  # GET /affixes/1
  # GET /affixes/1.json
  def show
  end

  # GET /affixes/new
  def new
    @affix = Affix.new
  end

  # GET /affixes/1/edit
  def edit
  end

  # POST /affixes
  # POST /affixes.json
  def create
    @affix = Affix.new(affix_params)

    respond_to do |format|
      if @affix.save
        format.html { redirect_to @affix, notice: 'Affix was successfully created.' }
        format.json { render :show, status: :created, location: @affix }
      else
        format.html { render :new }
        format.json { render json: @affix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /affixes/1
  # PATCH/PUT /affixes/1.json
  def update
    respond_to do |format|
      if @affix.update(affix_params)
        format.html { redirect_to @affix, notice: 'Affix was successfully updated.' }
        format.json { render :show, status: :ok, location: @affix }
      else
        format.html { render :edit }
        format.json { render json: @affix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /affixes/1
  # DELETE /affixes/1.json
  def destroy
    @affix.destroy
    respond_to do |format|
      format.html { redirect_to affixes_url, notice: 'Affix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_affix
      @affix = Affix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def affix_params
      params.require(:affix).permit(:name, :description)
    end
end
