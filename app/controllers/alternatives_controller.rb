class AlternativesController < ApplicationController
  before_action :set_alternative, only: %i[ show edit update destroy ]

  # GET /alternatives or /alternatives.json
  def index
    @alternatives = Alternative.all
  end

  # GET /alternatives/1 or /alternatives/1.json
  def show
  end

  # GET /alternatives/new
  def new
    @alternative = Alternative.new
  end

  # GET /alternatives/1/edit
  def edit
  end

  # POST /alternatives or /alternatives.json
  def create
    @alternative = Alternative.new(alternative_params)

    respond_to do |format|
      if @alternative.save
        format.html { redirect_to @alternative, notice: "Alternative was successfully created." }
        format.json { render :show, status: :created, location: @alternative }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alternative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alternatives/1 or /alternatives/1.json
  def update
    respond_to do |format|
      if @alternative.update(alternative_params)
        format.html { redirect_to @alternative, notice: "Alternative was successfully updated." }
        format.json { render :show, status: :ok, location: @alternative }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alternative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alternatives/1 or /alternatives/1.json
  def destroy
    @alternative.destroy!

    respond_to do |format|
      format.html { redirect_to alternatives_path, status: :see_other, notice: "Alternative was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alternative
      @alternative = Alternative.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def alternative_params
      params.expect(alternative: [ :content, :question_id, :correct, :order ])
    end
end
