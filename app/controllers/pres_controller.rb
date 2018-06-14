class PresController < ApplicationController
  before_action :set_pre, only: [:show, :edit, :update, :destroy]

  # GET /pres
  # GET /pres.json
  def index
    @pres = Pre.all
  end

  # GET /pres/1
  # GET /pres/1.json
  def show
  end

  # GET /pres/new
  def new
    @pre = Pre.new
  end

  # GET /pres/1/edit
  def edit
  end

  # POST /pres
  # POST /pres.json
  def create
    @pre = Pre.new(pre_params)

    respond_to do |format|
      if @pre.save
        format.html { redirect_to @pre, notice: 'Pre was successfully created.' }
        format.json { render :show, status: :created, location: @pre }
      else
        format.html { render :new }
        format.json { render json: @pre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pres/1
  # PATCH/PUT /pres/1.json
  def update
    respond_to do |format|
      if @pre.update(pre_params)
        format.html { redirect_to @pre, notice: 'Pre was successfully updated.' }
        format.json { render :show, status: :ok, location: @pre }
      else
        format.html { render :edit }
        format.json { render json: @pre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pres/1
  # DELETE /pres/1.json
  def destroy
    @pre.destroy
    respond_to do |format|
      format.html { redirect_to pres_url, notice: 'Pre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre
      @pre = Pre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_params
      params.require(:pre).permit(:nombre, :correo)
    end
end
