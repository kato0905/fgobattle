class AttrisController < ApplicationController
  before_action :set_attri, only: [:show, :edit, :update, :destroy]

  # GET /attris
  # GET /attris.json
  def index
    @attris = Attri.all
  end

  # GET /attris/1
  # GET /attris/1.json
  def show
  end

  # GET /attris/new
  def new
    @attri = Attri.new
  end

  # GET /attris/1/edit
  def edit
  end

  # POST /attris
  # POST /attris.json
  def create
    @attri = Attri.new(attri_params)

    respond_to do |format|
      if @attri.save
        format.html { redirect_to @attri, notice: 'Attri was successfully created.' }
        format.json { render :show, status: :created, location: @attri }
      else
        format.html { render :new }
        format.json { render json: @attri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attris/1
  # PATCH/PUT /attris/1.json
  def update
    respond_to do |format|
      if @attri.update(attri_params)
        format.html { redirect_to @attri, notice: 'Attri was successfully updated.' }
        format.json { render :show, status: :ok, location: @attri }
      else
        format.html { render :edit }
        format.json { render json: @attri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attris/1
  # DELETE /attris/1.json
  def destroy
    @attri.destroy
    respond_to do |format|
      format.html { redirect_to attris_url, notice: 'Attri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attri
      @attri = Attri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attri_params
      params.require(:attri).permit(:attri_id, :name)
    end
end
