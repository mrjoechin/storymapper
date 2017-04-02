class StorymapsController < ApplicationController
  before_filter :authorize
  before_action :set_storymap, only: [:show, :edit, :update, :destroy]

  # GET /storymaps
  # GET /storymaps.json
  def index
    @storymaps = Storymap.all
  end

  # GET /storymaps/1
  # GET /storymaps/1.json
  def show
  end

  # GET /storymaps/new
  def new
    @storymap = Storymap.new
  end

  # GET /storymaps/1/edit
  def edit
  end

  # POST /storymaps
  # POST /storymaps.json
  def create
    @storymap = @current_user.storymaps.new(storymap_params)

    respond_to do |format|
      if @storymap.save
        format.html { redirect_to storymaps_url, notice: 'Storymap was successfully created.' }
        format.json { render :show, status: :created, location: @storymap }
      else
        format.html { render :new }
        format.json { render json: @storymap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storymaps/1
  # PATCH/PUT /storymaps/1.json
  def update
    respond_to do |format|
      if @storymap.update(storymap_params)
        format.html { redirect_to storymaps_url, notice: 'Storymap was successfully updated.' }
        format.json { render :show, status: :ok, location: @storymap }
      else
        format.html { render :edit }
        format.json { render json: @storymap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storymaps/1
  # DELETE /storymaps/1.json
  def destroy
    @storymap.destroy
    respond_to do |format|
      format.html { redirect_to storymaps_url, notice: 'Storymap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storymap
      @storymap = Storymap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def storymap_params
      params.require(:storymap).permit(:name, :description, :user_id)
    end
end
