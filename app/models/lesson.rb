class Lesson < ApplicationRecord
  belongs_to :teaching_set
  has_many :pupils, through: :teaching_set
  has_many :scores
  after_save :make_pupil_scores

  def make_pupil_scores
    self.teaching_set.set_pupils.each do |set_pupil|
      Score.create(
        lesson: self,
        set_pupil: set_pupil
        )
    end
  end
end
