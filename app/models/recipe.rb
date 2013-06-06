class Recipe < ActiveRecord::Base
  attr_accessible :cook_time, :course, :image_url, :instructions, :name, :serving_size, :cookbook_id

  belongs_to :cookbook, inverse_of: :recipes
end
