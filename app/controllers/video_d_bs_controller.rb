class VideoDBsController < ApplicationController
  before_action :set_video_db, only: [:show, :edit, :update, :destroy]

  # GET /video_dbs
  # GET /video_dbs.json
  def index
    @video_dbs = VideoDb.all
  end

  # GET /video_dbs/1
  # GET /video_dbs/1.json
  def show
  end

  # GET /video_dbs/new
  def new
    @video_db = VideoDb.new
  end

  # GET /video_dbs/1/edit
  def edit
  end

  # POST /video_dbs
  # POST /video_dbs.json
  def create
    @video_db = VideoDb.new(video_db_params)

    respond_to do |format|
      if @video_db.save
        format.html { redirect_to @video_db, notice: 'Video db was successfully created.' }
        format.json { render :show, status: :created, location: @video_db }
      else
        format.html { render :new }
        format.json { render json: @video_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_dbs/1
  # PATCH/PUT /video_dbs/1.json
  def update
    respond_to do |format|
      if @video_db.update(video_db_params)
        format.html { redirect_to @video_db, notice: 'Video db was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_db }
      else
        format.html { render :edit }
        format.json { render json: @video_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_dbs/1
  # DELETE /video_dbs/1.json
  def destroy
    @video_db.destroy
    respond_to do |format|
      format.html { redirect_to video_dbs_url, notice: 'Video db was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_db
      @video_db = VideoDb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_db_params
      params.require(:video_db).permit(: title, :year, :actor, :maingenere, :genere)
    end
end
