class HIghScoresController < ApplicationController
  before_action :set_h_igh_score, only: [:show, :edit, :update, :destroy]

  # GET /h_igh_scores
  # GET /h_igh_scores.json
  def index
    @h_igh_scores = HIghScore.all
  end

  # GET /h_igh_scores/1
  # GET /h_igh_scores/1.json
  def show
  end

  # GET /h_igh_scores/new
  def new
    @h_igh_score = HIghScore.new
  end

  # GET /h_igh_scores/1/edit
  def edit
  end

  # POST /h_igh_scores
  # POST /h_igh_scores.json
  def create
    @h_igh_score = HIghScore.new(h_igh_score_params)

    respond_to do |format|
      if @h_igh_score.save
        format.html { redirect_to @h_igh_score, notice: 'H igh score was successfully created.' }
        format.json { render action: 'show', status: :created, location: @h_igh_score }
      else
        format.html { render action: 'new' }
        format.json { render json: @h_igh_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /h_igh_scores/1
  # PATCH/PUT /h_igh_scores/1.json
  def update
    respond_to do |format|
      if @h_igh_score.update(h_igh_score_params)
        format.html { redirect_to @h_igh_score, notice: 'H igh score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @h_igh_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /h_igh_scores/1
  # DELETE /h_igh_scores/1.json
  def destroy
    @h_igh_score.destroy
    respond_to do |format|
      format.html { redirect_to h_igh_scores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_h_igh_score
      @h_igh_score = HIghScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def h_igh_score_params
      params.require(:h_igh_score).permit(:game, :score)
    end
end
