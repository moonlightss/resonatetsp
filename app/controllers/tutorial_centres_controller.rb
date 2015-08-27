class TutorialCentresController < ApplicationController
  before_action :set_tutorial_centre, only: [:show, :edit, :update, :destroy]

  # GET /tutorial_centres
  # GET /tutorial_centres.json
  def index
    @tutorial_centres = TutorialCentre.all
  end

  # GET /tutorial_centres/1
  # GET /tutorial_centres/1.json
  def show
  end

  # GET /tutorial_centres/new
  def new
    @tutorial_centre = TutorialCentre.new
  end

  # GET /tutorial_centres/1/edit
  def edit
  end

  # POST /tutorial_centres
  # POST /tutorial_centres.json
  def create
    @tutorial_centre = TutorialCentre.new(tutorial_centre_params)

    respond_to do |format|
      if @tutorial_centre.save
        format.html { redirect_to @tutorial_centre, notice: 'Tutorial centre was successfully created.' }
        format.json { render :show, status: :created, location: @tutorial_centre }
      else
        format.html { render :new }
        format.json { render json: @tutorial_centre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutorial_centres/1
  # PATCH/PUT /tutorial_centres/1.json
  def update
    respond_to do |format|
      if @tutorial_centre.update(tutorial_centre_params)
        format.html { redirect_to @tutorial_centre, notice: 'Tutorial centre was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutorial_centre }
      else
        format.html { render :edit }
        format.json { render json: @tutorial_centre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorial_centres/1
  # DELETE /tutorial_centres/1.json
  def destroy
    @tutorial_centre.destroy
    respond_to do |format|
      format.html { redirect_to tutorial_centres_url, notice: 'Tutorial centre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial_centre
      @tutorial_centre = TutorialCentre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutorial_centre_params
      params.require(:tutorial_centre).permit(:name, :address, :phone, :website)
    end
end
