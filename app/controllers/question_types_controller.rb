class QuestionTypesController < ApplicationController
  before_action :set_question_type, only: %i[ show edit update destroy ]

  # GET /question_types or /question_types.json
  def index
    @question_types = QuestionType.all
  end

  # GET /question_types/1 or /question_types/1.json
  def show
  end

  # GET /question_types/new
  def new
    @question_type = QuestionType.new
  end

  # GET /question_types/1/edit
  def edit
  end

  # POST /question_types or /question_types.json
  def create
    @question_type = QuestionType.new(question_type_params)

    respond_to do |format|
      if @question_type.save
        format.html { redirect_to @question_type, notice: "Question type was successfully created." }
        format.json { render :show, status: :created, location: @question_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_types/1 or /question_types/1.json
  def update
    respond_to do |format|
      if @question_type.update(question_type_params)
        format.html { redirect_to @question_type, notice: "Question type was successfully updated." }
        format.json { render :show, status: :ok, location: @question_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_types/1 or /question_types/1.json
  def destroy
    @question_type.destroy!

    respond_to do |format|
      format.html { redirect_to question_types_path, status: :see_other, notice: "Question type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_type
      @question_type = QuestionType.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def question_type_params
      params.expect(question_type: [ :name, :description, :active ])
    end
end
