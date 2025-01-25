class Question < ApplicationRecord
  belongs_to :question_type
  belongs_to :topic
  belongs_to :subject

  DIFFICULTY_LEVELS = [ "fácil", "médio", "difícil" ].freeze

  validates :topic_id, presence: true
  validates :subject_id, presence: true
  validates :difficulty_level, presence: true, inclusion: {
    in: [ "fácil", "médio", "difícil" ],
    message: "deve ser 'fácil', 'médio' ou 'difícil'"
  }
  validates :content, presence: true

  before_validation :normalize_difficulty_level

  private

  def normalize_difficulty_level
    return if difficulty_level.nil?
    self.difficulty_level = difficulty_level.to_s.downcase.strip
  end
end
