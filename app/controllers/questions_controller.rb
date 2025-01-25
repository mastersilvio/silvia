class QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show edit update destroy ]

  # GET /questions or /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1 or /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions or /questions.json
  def create
    @question = Question.new(question_params)

    # Gera o texto da questão usando a OpenAI
    client = OpenAI::Client.new(access_token: ENV["OPENAI_ACCESS_TOKEN"])

    prompt = <<~PROMPT
      Crie uma questão de múltipla escolha sobre o seguinte tema: #{@question.topic.name}

      A questão deve seguir este formato:
      - Texto da questão
      - 4 alternativas (A, B, C, D)
      - Indicação da alternativa correta
    PROMPT

    response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo",
        messages: [ { role: "user", content: prompt } ],
        temperature: 0.7,
        max_tokens: 500
      }
    )

    @question.content = response.dig("choices", 0, "message", "content")

    if @question.save
      redirect_to @question, notice: "Questão criada com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questions/1 or /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: "Question was successfully updated." }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1 or /questions/1.json
  def destroy
    @question.destroy!

    respond_to do |format|
      format.html { redirect_to questions_path, status: :see_other, notice: "Question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_params
      params.require(:question).permit(:topic_id, :subject_id, :difficulty_level)
    end
end
