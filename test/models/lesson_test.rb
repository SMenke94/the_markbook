# == Schema Information
#
# Table name: lessons
#
#  id              :bigint(8)        not null, primary key
#  start_time      :datetime
#  end_time        :datetime
#  teaching_set_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
