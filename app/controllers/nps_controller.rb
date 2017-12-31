class NpsController < ApplicationController
  before_action :set_np, only: [:show, :edit, :update, :destroy]

  # GET /nps
  # GET /nps.json
  def index
    @nps = Np.all
  end

  # GET /nps/1
  # GET /nps/1.json
  def show
  end

  # GET /nps/new
  def new
    @np = Np.new
  end

  # GET /nps/1/edit
  def edit
  end

  # POST /nps
  # POST /nps.json
  def create
    @np = Np.new(np_params)

    respond_to do |format|
      if @np.save
        format.html { redirect_to @np, notice: 'Np was successfully created.' }
        format.json { render :show, status: :created, location: @np }
      else
        format.html { render :new }
        format.json { render json: @np.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nps/1
  # PATCH/PUT /nps/1.json
  def update
    respond_to do |format|
      if @np.update(np_params)
        format.html { redirect_to @np, notice: 'Np was successfully updated.' }
        format.json { render :show, status: :ok, location: @np }
      else
        format.html { render :edit }
        format.json { render json: @np.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nps/1
  # DELETE /nps/1.json
  def destroy
    @np.destroy
    respond_to do |format|
      format.html { redirect_to nps_url, notice: 'Np was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_np
      @np = Np.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def np_params
      params.require(:np).permit(:servant_id, :name, :explain, :d_pattern, :detail)
    end
end
