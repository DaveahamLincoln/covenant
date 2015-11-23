class PullRolesController < ApplicationController
  before_action :authenticate_player!
  before_action :set_pull_role, only: [:show, :edit, :update, :destroy]

  # GET /pull_roles
  # GET /pull_roles.json
  def index
    @pull_roles = PullRole.all
  end

  # GET /pull_roles/1
  # GET /pull_roles/1.json
  def show
  end

  # GET /pull_roles/new
  def new
    @pull_role = PullRole.new
  end

  # GET /pull_roles/1/edit
  def edit
  end

  # POST /pull_roles
  # POST /pull_roles.json
  def create
    @pull_role = PullRole.new(pull_role_params)

    respond_to do |format|
      if @pull_role.save
        format.html { redirect_to @pull_role, notice: 'Pull role was successfully created.' }
        format.json { render :show, status: :created, location: @pull_role }
      else
        format.html { render :new }
        format.json { render json: @pull_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pull_roles/1
  # PATCH/PUT /pull_roles/1.json
  def update
    respond_to do |format|
      if @pull_role.update(pull_role_params)
        format.html { redirect_to @pull_role, notice: 'Pull role was successfully updated.' }
        format.json { render :show, status: :ok, location: @pull_role }
      else
        format.html { render :edit }
        format.json { render json: @pull_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pull_roles/1
  # DELETE /pull_roles/1.json
  def destroy
    @pull_role.destroy
    respond_to do |format|
      format.html { redirect_to pull_roles_url, notice: 'Pull role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pull_role
      @pull_role = PullRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pull_role_params
      params.require(:pull_role).permit(:string, :string)
    end
end
