class FlocksController < ApplicationController
before_filter :get_house

  # GET /flocks
  # GET /flocks.json
  def index
    @flocks = @house.flocks.all
  end

  # GET /flocks/1
  # GET /flocks/1.json
  def show
    @flock = @house.flocks.find(params[:id])
  end

  # GET /flocks/new
  def new
    @flock = Flock.new
  end

  # GET /flocks/1/edit
  def edit
    @flock = @house.flocks.find(params[:id])
  end

  # POST /flocks
  # POST /flocks.json
  def create
    @flock = @house.flocks.new(flock_params)

    respond_to do |format|
      if @flock.save
        format.html { redirect_to [@house, @flock], notice: 'Flock was successfully created.' }
        format.json { render :show, status: :created, location: [@house, @flock] }
      else
        format.html { render :new }
        format.json { render json: @flock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flocks/1
  # PATCH/PUT /flocks/1.json
  def update
    respond_to do |format|
      if @flock.update(flock_params)
        format.html { redirect_to @flock, notice: 'Flock was successfully updated.' }
        format.json { render :show, status: :ok, location: @flock }
      else
        format.html { render :edit }
        format.json { render json: @flock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flocks/1
  # DELETE /flocks/1.json
  def destroy
    @flock.destroy
    respond_to do |format|
      format.html { redirect_to flocks_url, notice: 'Flock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_house
      @house = House.find(params[:house_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flock_params
      params.require(:flock).permit(:hens, :males, :hen_feed, :male_feed, :water_meter, :open_date, :close_date, :house_id)
    end
end
