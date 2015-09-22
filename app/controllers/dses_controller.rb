class DsesController < ApplicationController
  before_action :set_dse, only: [:show, :edit, :update, :destroy]

  # GET /dses
  # GET /dses.json
  def index
    @dses = Dse.all
  end

  # GET /dses/1
  # GET /dses/1.json
  def show
  end

  # GET /dses/new
  def new
    @dse = Dse.new
  end

  # GET /dses/1/edit
  def edit
  end

  # POST /dses
  # POST /dses.json
  def create
    @dse = Dse.new(dse_params)

    respond_to do |format|
      if @dse.save
        format.html { redirect_to @dse, notice: 'Dse was successfully created.' }
        format.json { render :show, status: :created, location: @dse }
      else
        format.html { render :new }
        format.json { render json: @dse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dses/1
  # PATCH/PUT /dses/1.json
  def update
    respond_to do |format|
      if @dse.update(dse_params)
        format.html { redirect_to @dse, notice: 'Dse was successfully updated.' }
        format.json { render :show, status: :ok, location: @dse }
      else
        format.html { render :edit }
        format.json { render json: @dse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dses/1
  # DELETE /dses/1.json
  def destroy
    @dse.destroy
    respond_to do |format|
      format.html { redirect_to dses_url, notice: 'Dse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dse
      @dse = Dse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dse_params
      params.require(:dse).permit(:name)
    end
end
