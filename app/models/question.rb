class Question < ApplicationRecord
  belongs_to :question_type
  belongs_to :topic
  belongs_to :subject

  validates :topic_id, presence: true
  validates :subject_id, presence: true
  validates :difficulty_level, presence: true, inclusion: { in: %w[easy medium hard] }
  validates :content, presence: true
end
