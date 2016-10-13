class TerminsController < ApplicationController
  before_action :set_termin, only: [:show, :edit, :update, :destroy]

  # GET /termins
  # GET /termins.json
  def index
    @termins = Termin.all
  end

  # GET /termins/1
  # GET /termins/1.json
  def show
  end

  # GET /termins/new
  def new
    @termin = Termin.new
  end

  # GET /termins/1/edit
  def edit
  end

  # POST /termins
  # POST /termins.json
  def create
    @termin = Termin.new(termin_params)

    respond_to do |format|
      if @termin.save
        format.html { redirect_to @termin, notice: 'Termin was successfully created.' }
        format.json { render :show, status: :created, location: @termin }
      else
        format.html { render :new }
        format.json { render json: @termin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /termins/1
  # PATCH/PUT /termins/1.json
  def update
    respond_to do |format|
      if @termin.update(termin_params)
        format.html { redirect_to @termin, notice: 'Termin was successfully updated.' }
        format.json { render :show, status: :ok, location: @termin }
      else
        format.html { render :edit }
        format.json { render json: @termin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /termins/1
  # DELETE /termins/1.json
  def destroy
    @termin.destroy
    respond_to do |format|
      format.html { redirect_to termins_url, notice: 'Termin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_termin
      @termin = Termin.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def termin_params
      params.require(:termin).permit(:behandlungstermin, :behandlungsart, :physio_id, :patient_id)
    end
end
