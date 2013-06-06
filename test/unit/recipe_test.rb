# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  instructions :text
#  name         :string(255)
#  serving_size :integer
#  image_url    :text
#  course       :integer
#  cook_time    :text
#  cookbook_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
