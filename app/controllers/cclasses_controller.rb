class CclassesController < ApplicationController
  before_action :set_cclass, only: [:show, :edit, :update, :destroy]

  # GET /cclasses
  # GET /cclasses.json
  def index
    @cclasses = Cclass.all
  end

  # GET /cclasses/1
  # GET /cclasses/1.json
  def show
  end

  # GET /cclasses/new
  def new
    @cclass = Cclass.new
  end

  # GET /cclasses/1/edit
  def edit
  end

  # POST /cclasses
  # POST /cclasses.json
  def create
    @cclass = Cclass.new(cclass_params)

    respond_to do |format|
      if @cclass.save
        format.html { redirect_to @cclass, notice: 'Cclass was successfully created.' }
        format.json { render :show, status: :created, location: @cclass }
      else
        format.html { render :new }
        format.json { render json: @cclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cclasses/1
  # PATCH/PUT /cclasses/1.json
  def update
    respond_to do |format|
      if @cclass.update(cclass_params)
        format.html { redirect_to @cclass, notice: 'Cclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @cclass }
      else
        format.html { render :edit }
        format.json { render json: @cclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cclasses/1
  # DELETE /cclasses/1.json
  def destroy
    @cclass.destroy
    respond_to do |format|
      format.html { redirect_to cclasses_url, notice: 'Cclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cclass
      @cclass = Cclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cclass_params
      params.require(:cclass).permit(:name, :description)
    end
end
